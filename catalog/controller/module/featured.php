<?php
class ControllerModuleFeatured extends Controller {
	protected function index($setting) {
		$this->language->load('module/featured'); 

      	$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->load->model('catalog/product'); 
		
		$this->load->model('tool/image');

		$this->data['products'] = array();

		$products = explode(',', $this->config->get('featured_product'));		

		if (empty($setting['limit'])) {
			$setting['limit'] = 5;
		}
		
		$products = array_slice($products, 0, (int)$setting['limit']);
		
		foreach ($products as $product_id) {
			$product_info = $this->model_catalog_product->getProduct($product_id);
			//echo "<pre>";print_r($product_info);
			if ($product_info) {
				if ($product_info['image']) {
					if($product_info['watermark']==1)
					{
						//echo "watermrk 1";
						$image = $this->model_tool_image->resize($product_info['image'], $setting['image_width'], $setting['image_height']);
					}
					else
					{
						//echo "watermrk 0";
						$image = $this->model_tool_image->banner_resize($product_info['image'], $setting['image_width'], $setting['image_height']);
					}
				} else {
					$image = false;
				}

				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
						
				if ((float)$product_info['special']) {
					$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}
				
				if ($this->config->get('config_review_status')) {
					$rating = $product_info['rating'];
				} else {
					$rating = false;
				}
				$this->data['products'][] = array(
					'product_id' => $product_info['product_id'],
					'shippingMethod' =>  $product_info['shippingMethod'],
					'thumb'   	 => $image,
					'name'    	 => $product_info['name'],
					'price'   	 => $price,
					'special' 	 => $special,
					'rating'     => $rating,
					'reviews'    => sprintf($this->language->get('text_reviews'), (int)$product_info['reviews']),
					'href'    	 => $this->url->link('product/product', 'product_id=' . $product_info['product_id'])
				);
			}
		}
		
		//----------------- added by Gaurav on 29 may-2013 for custom special offer  ------------------------------------
		
		$results = $this->model_catalog_product->getProductSpecials();
		$arrSettings = $this->model_setting_setting->getSetting('special');
	
		$setting = array();
		if(isset($arrSettings['special_module'][0]))
		{
			$setting['image_width'] = $arrSettings['special_module'][0]['image_width'];
			$setting['image_height'] = $arrSettings['special_module'][0]['image_height'];
		}
		foreach ($results as $result) {
			if ($result['image']) {
				if($result['watermark']==1)
				{ 
					//echo "------------->1";
					$image = $this->model_tool_image->resize($result['image'], $setting['image_width'], $setting['image_height']);
				}
				else 
				{
						//echo "------------------>0";
					$image = $this->model_tool_image->banner_resize($result['image'], $setting['image_width'], $setting['image_height']);
				}
			} else {
				$image = false;
			}

			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$price = false;
			}
					
			if ((float)$result['special']) { 
				$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
			} else {
				$special = false;
			}
			
			if ($this->config->get('config_review_status')) {
				$rating = $result['rating'];
			} else {
				$rating = false;
			}
			
			$this->data['specialproducts'] = array(
				'product_id' => $result['product_id'],
				'thumb'   	 => $image,
				'name'    	 => $result['name'],
				'price'   	 => $price,
				'special' 	 => $special,
				'rating'     => $rating,
				'reviews'    => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
				'href'    	 => $this->url->link('product/product', 'product_id=' . $result['product_id'])
			);
		}
		//----------------- End of code added by Gaurav on 29 may-2013 for custom special offer -----------------------------
		
		//-----CODE ADDED BY SHEETAL FOR DISPLAYING ADVERTISE ON LEFT COLUMN STARTS-----------
		static $module = 0;
		
		$this->load->model('design/advertise');
		$this->load->model('tool/image');
		
		$this->document->addScript('catalog/view/javascript/jquery/jquery.cycle.js');
				
		$this->data['advertises'] = array();
		//echo $setting['advertise_id'];
		//$results = $this->model_design_advertise->getAdvertise($setting['advertise_id']);
		 $advertiseIds = $this->model_design_advertise->getHomeAdvertiseId();
		$setting = array();
		$this->data['advertises'] = array();
		if(isset($advertiseIds[0]['advertise_id']))
		{
			$setting['advertise_id'] = $advertiseIds[0]['advertise_id'];
			$arrSettingsAdvt = $this->model_setting_setting->getSetting('advertise');
		if(isset($arrSettingsAdvt['advertise_module'][0]))
		{
			$settingAdvt['image_width'] = $arrSettingsAdvt['advertise_module'][0]['width'];
			$settingAdvt['image_height'] = $arrSettingsAdvt['advertise_module'][0]['height'];
		}
		$resultsAdvt = $this->model_design_advertise->getAdvertise($setting['advertise_id']);
		//echo "<pre>"; print_r($resultsAdvt); 
		foreach ($resultsAdvt as $resultAdvt) {
			if (file_exists(DIR_IMAGE . $resultAdvt['image'])) {
				$this->data['advertises'][] = array(
					'title' => $resultAdvt['title'],
					'link'  => $resultAdvt['link'],
					'image' => $this->model_tool_image->resize($resultAdvt['image'], $settingAdvt['image_width'], $settingAdvt['image_height'])
				);
				
			}
		}
		}
		
		
		
		
		//-----CODE ADDED BY SHEETAL FOR DISPLAYING ADVERTISE ON LEFT COLUMN ENDS-----------
		
		
		
		
		
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/featured.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/featured.tpl';
		} else {
			$this->template = 'default/template/module/featured.tpl';
		}

		$this->render();
	}
}
?>
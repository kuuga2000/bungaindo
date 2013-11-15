<?php 
class ControllerEventView extends Controller {  
	public function index() { 
		$this->language->load('product/category');
		
		$this->load->model('catalog/category');
		
		$this->load->model('catalog/product');
		$func=$this->model_catalog_product->update_special(); //already code set in admin to disable special products
		$this->load->model('tool/image'); 
	
							
		$this->data['breadcrumbs'] = array();
		$this->data['bannerImage'] = '';
		$this->data['heading_title'] = 'Event';
		$this->data['highilighted_product'] = '';
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
       		'separator' => false
   		);	
			
		$this->load->model('event/event');
		$this->load->model('catalog/product');		
		$path = '';
		if(isset($this->request->get['path']))
		{
			$path = $this->request->get['path'];
		}
		$eventType = $this->request->get['type'];
		$addProducts = $this->model_event_event->getAdvertiseProducts($eventType);
		
		foreach ($addProducts as $addProduct) {	

		$result = array();
		$result = $this->model_catalog_product->getProduct($addProduct['product_id']);
			
				if ($result['image']) {
					if($result['watermark']==1)
					{
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
					}
					else
					{
						$image = $this->model_tool_image->banner_resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));	
					}
				} else {
					$image = false;
				}
				$discounts = $this->model_catalog_product->getProductDiscounts($result['product_id']);
				
				//echo "<pre>"; print_r($discounts);
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
				if ((float)$result['discount']) {
					$discount = $this->currency->format($this->tax->calculate($result['discount'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$discount = false;
				}
				
				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}	
				
				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}				
				
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
				if(isset($discounts[0]['percentage']))
				{
						$percentDiscount = $discounts[0]['percentage'];
				}
				else
				{
						$percentDiscount = 0;
				}
								
				$this->data['products'][] = array(
					'product_id'  => $result['product_id'],
					'shippingMethod' =>  $result['shippingMethod'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 100) . '..',
					'price'       => $price,
					'percentage'  => $percentDiscount,
					'discount'    => $discount,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $this->url->link('product/product', 'path=' . $path . '&product_id=' . $result['product_id'])
				);
			}
			
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/event/view.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/event/view.tpl';
			} else {
				$this->template = 'default/template/event/view.tpl';
			}
			$this->children = array(
				'common/column_left',
				'common/column_right',
				'common/content_top',
				'common/content_bottom',
				'common/footer',
				'common/header'
			);
			
			$this->response->setOutput($this->render());
		
  	}
}
?>
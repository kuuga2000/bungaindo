<?php 
class ControllerCheckoutShippingAddress extends Controller {
		private $error = array();
	public function index() {
		
		if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('checkout/shipping_address', '', 'SSL');
	  
	  		$this->redirect($this->url->link('account/login_register', '', 'SSL'));
    	}
		 
		 //echo "<pre>"; print_r($_SESSION['cart']);	echo "</pre>"; die();	
	
		$this->language->load('checkout/checkout');
			$json = array();
		// Validate if customer is logged in.
		if (!$this->customer->isLogged()) {
			$json['redirect'] = $this->url->link('checkout/shipping_address', '', 'SSL');
		}
		
		// Validate if shipping is required. If not the customer should not have reached this page.
		if (!$this->cart->hasShipping()) {
			$json['redirect'] = $this->url->link('checkout/shipping_address', '', 'SSL');
		}
		
		// Validate cart has products and has stock.		
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$json['redirect'] = $this->url->link('checkout/cart');
		}		
		
			$this->load->model('catalog/product');
			
		$this->load->model('tool/image');
		
		$this->language->load('product/product');
		$this->data['unique']='';
		$this->data['button_cart'] = $this->language->get('button_cart');
		
		$this->data['text_address_existing'] = $this->language->get('text_address_existing');
		$this->data['text_address_new'] = $this->language->get('text_address_new');
		$this->data['text_select'] = $this->language->get('text_select');
		$this->data['text_none'] = $this->language->get('text_none');
		
		
		$this->data['entry_address_title'] = $this->language->get('entry_address_title');
		$this->data['entry_firstname'] = $this->language->get('entry_firstname');
		$this->data['entry_lastname'] = $this->language->get('entry_lastname');
		$this->data['entry_company'] = $this->language->get('entry_company');
		$this->data['entry_address_1'] = $this->language->get('entry_address_1');
		$this->data['entry_address_2'] = $this->language->get('entry_address_2');
		$this->data['entry_postcode'] = $this->language->get('entry_postcode');
		$this->data['entry_city'] = $this->language->get('entry_city');
		$this->data['entry_country'] = $this->language->get('entry_country');
		$this->data['entry_zone'] = $this->language->get('entry_zone');
		$this->data['text_comments'] = $this->language->get('text_comments');
		$this->data['text_max_char'] = $this->language->get('text_max_char');
		$this->data['entry_delivery_date'] = $this->language->get('entry_delivery_date');
		//$this->data['entry_date_available'] = $this->language->get('entry_date_available');
		$this->data['button_continue'] = $this->language->get('button_continue');
			
		if (isset($this->session->data['shipping_address_id'])) {
			$this->data['address_id'] = $this->session->data['shipping_address_id'];
		} else {
			$this->data['address_id'] = $this->customer->getAddressId();
		}

		$this->load->model('account/address');

		$this->data['addresses'] = $this->model_account_address->getAddresses();

		if (isset($this->session->data['shipping_postcode'])) {
			$this->data['postcode'] = $this->session->data['shipping_postcode'];		
		} else {
			$this->data['postcode'] = '';
		}
				
		if (isset($this->session->data['shipping_country_id'])) {
			$this->data['country_id'] = $this->session->data['shipping_country_id'];		
		} else {
			$this->data['country_id'] = $this->config->get('config_country_id');
		}
				
		if (isset($this->session->data['shipping_zone_id'])) {
			$this->data['zone_id'] = $this->session->data['shipping_zone_id'];		
		} else {
			$this->data['zone_id'] = '';
		}
		if (isset($this->session->data['comment'])) {
			$this->data['comment'] = $this->session->data['comment'];
		} else {
			$this->data['comment'] = '';
		}
		
		//print_r($this->error['firstname']);
			
		
		
		if (isset($this->error['date_available'])) {
			$this->data['error_date_available'] = $this->error['date_available'];
		} else {
			$this->data['error_date_available'] = '';
		}	
		
		if (isset($this->error['date_available'])) {
			$this->data['error_date_available'] = $this->error['date_available'];
		} else {
			$this->data['error_date_available'] = '';
		}	

		$this->data['action'] = $this->url->link('checkout/shipping_address', '', 'SSL');
			
		$this->load->model('localisation/country');
		
		$this->data['countries'] = $this->model_localisation_country->getCountries();

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/shipping_address.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/checkout/shipping_address.tpl';
		} else {
			$this->template = 'default/template/checkout/shipping_address.tpl';
		}
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'	
		);

		//---------- CODE FOR RELATED PRODUCTS STARTS
		// Validate minimum quantity requirments.			
		$products = $this->cart->getProducts();
		foreach ($products as $product) {
			$product_total = 0;
				
			foreach ($products as $product_2) {
				if ($product_2['product_id'] == $product['product_id']) {
					$product_total += $product_2['quantity'];
				}
			}		
			
			if ($product['minimum'] > $product_total) {
				$json['redirect'] = $this->url->link('checkout/cart');
				
				break;
			}	
			//$results = $this->model_catalog_product->getProductRelated($product['product_id']);	
						
		}
		
		//--------------Getting upsell products----------------
		$results = $this->model_catalog_product->getCategoryUpselling(); 
		$results_upsell_prod = $this->model_catalog_product->getProductUpselling();	
		
			foreach ($results as $result) {
				//$category_name=$this->model_catalog_product->getCategoriesName($result['product_id']);
				
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_related_width'), $this->config->get('config_image_related_height'));
				} else {
					$image = false;
				}
				
				/*if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}*/
						
				/*if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}*/
				
				/*if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}*/
				$upsell_cat= array();
				foreach ($results_upsell_prod as $result_upsell_prod) 
				{
					//echo "<pre>";print_r($result_upsell_prod);
					if($result_upsell_prod['category_id']==$result['category_id'])
					{
						
						$upsell_cat[]=array(
						'product_id' => $result_upsell_prod['product_id'],
						'name'=> $result_upsell_prod['name'],
						'price' => $result_upsell_prod['price'],
						'category_id'=>$result_upsell_prod['category_id']
						);
						
					}
				}
			//	echo "<pre>";print_r($upsell_cat);
						
				$this->data['unique'][] = array(
					'category_id' => $result['category_id'],
					'thumb'   	 => $image,
					'name'    	 => $result['name'],
					'product_upsell' =>$upsell_cat
				);
			}	
		//echo "<pre>";print_r($this->data['unique']);
		if($this->data['unique']!='')
		{
		$this->data['products'] = array_map("unserialize", array_unique(array_map("serialize", $this->data['unique'])));
		}
		 else $this->data['upsellProducts'] ='';
	
		 $this->data['cart_products'] = $products;
		 
		// echo "----------->".sizeof($this->data['cart_products']);
		//echo "<pre>"; print_r($this->data['products']);
		//--------validation and post functions start
		if (($this->request->server['REQUEST_METHOD'] == 'POST')   && $this->validate()){
	foreach($this->request->post AS $key=>$value)
			{   
				if (isset($value['time'])) {
	    			$this->session->data['time'][]=$this->data['values'][$key]['time'] = $value['time'];
				}
			}
			//echo $this->session->data['time'][0];
			//echo $this->data['values'][$key]['time'];
			//exit;
			 
		 
			foreach($this->request->post AS $product)
			{
				$key = $product['productId'];
				//echo '<pre>';
				//print_r($product);
				//die;
				//$this->session->data['cart'][$key]['address_id'] = $this->session->data['shipping_address_id'][$key];
				if(isset($this->session->data['shipping_address_id'][$key]))
				{
					//$this->cart->updateProductAddress($key,$this->session->data['shipping_address_id'][$key]);					
				}
				//$this->session->data['upselling'][$key]= $product['upselling'];
				$upsellArray = array();
				if(isset($product['upselling']) && count($product['upselling']) >0)
				{
					//print_r($product['upselling']);
									
					//echo $key;
					foreach($product['upselling'] AS $upsellKey=>$upsellValue)
					{
						if(isset($product['upsellingcheck'][$upsellKey]))
						{
							$upsellArray[$upsellKey] = $upsellValue;
						}
					}
					
				}
				$this->session->data['upselling'][$key]= $upsellArray;	
				
				
				if(isset($product['comment_message']) && $product['comment_message'] == 1)
				{
					$this->session->data['comment_message'][$key] = $product['comment'];
				}
				else
				{
					$this->session->data['comment_message'][$key] = $product['comment'];
				}
			 
			} 
			// Default Shipping Address
			$this->load->model('account/address');		
			
			//$this->session->data['shipping_address_id'] = $this->model_account_address->addAddress($this->request->post);
			$this->session->data['shipping_country_id'] = $this->request->post['country_id'];
			$this->session->data['shipping_zone_id'] = $this->request->post['zone_id'];
			$this->session->data['shipping_postcode'] = $this->request->post['postcode'];
			$this->session->data['comment'] = $this->request->post['comment'];
			$this->session->data['date_available'] = $this->request->post['date_available'];
							
			unset($this->session->data['shipping_method']);						
			unset($this->session->data['shipping_methods']);
			$this->redirect($this->url->link('checkout/confirm'));	
			
		}
		
		$this->data['isError'] = 0;
		foreach($products AS $key=>$products)
		{
			if($products['upselling'] == 0)
			{
				if(isset($this->error[$key]['shipping_address']))
				{
					$this->data['error'][$key]['shipping_address'] = $this->error[$key]['shipping_address'];
					$this->data['isError'] = 1;
				} else {
					$this->data['error'][$key]['shipping_address'] = '';
				}	
				
				if (isset($this->error[$key]['firstname'])) {
			
					$this->data['error'][$key]['error_firstname'] = $this->error[$key]['firstname'];
					$this->data['isError'] = 1;
				} else {
					$this->data['error'][$key]['error_firstname'] = '';
				}	
				
				if (isset($this->error[$key]['lastname'])) {
					$this->data['error'][$key]['error_lastname'] = $this->error[$key]['lastname'];
					$this->data['isError'] = 1;
				} else {
					$this->data['error'][$key]['error_lastname'] = '';
				}
				if (isset($this->error[$key]['address_1'])) {
					
					$this->data['error'][$key]['error_address_1'] = $this->error[$key]['address_1'];
					$this->data['isError'] = 1;
				} else {
					$this->data['error'][$key]['error_address_1'] = '';
				}	
				
				if (isset($this->error[$key]['city'])) {
					$this->data['error'][$key]['error_city'] = $this->error[$key]['city'];
					$this->data['isError'] = 1;
				} else {
					$this->data['error'][$key]['error_city'] = '';
				}
				
				if (isset($this->error[$key]['country'])) {
					$this->data['error'][$key]['error_country'] = $this->error[$key]['country'];
					$this->data['isError'] = 1;
				} else {
					$this->data['error'][$key]['error_country'] = '';
				}

				if (isset($this->error[$key]['zone'])) {
					$this->data['error'][$key]['error_zone'] = $this->error[$key]['zone'];
					$this->data['isError'] = 1;
				} else {
					$this->data['error'][$key]['error_zone'] = '';
				}
				
				if (isset($this->error[$key]['date_available'])) {
					$this->data['error'][$key]['error_date_available'] = $this->error[$key]['date_available'];
					$this->data['isError'] = 1;
				} else {
					$this->data['error'][$key]['error_date_available'] = '';
				}
				
				$this->data['values'][$key]['firstname'] = '';
				$this->data['values'][$key]['lastname'] = '';
				$this->data['values'][$key]['recipient_location'] = '';
				$this->data['values'][$key]['address_1'] = '';
				$this->data['values'][$key]['address_id'] = '';
				$this->data['values'][$key]['showForm'] = 1;
				$this->data['values'][$key]['country_id'] = '100';
				$this->data['values'][$key]['zone_id'] = '';
				$this->data['values'][$key]['city'] = '';
			}
		}
		
		//--------validation and post functions end
		foreach($this->request->post AS $key=>$value)
		{
		
			if (isset($value['time'])) {
	    			$this->data['values'][$key]['time'] = $value['time'];
			}
			
			if (isset($value['time'])) {
	    			$this->data['values'][$key]['time'] = $value['time'];
			}
			  
			if (isset($value['firstname'])) {
	    		$this->data['values'][$key]['firstname'] = $value['firstname'];
			} else {
				$this->data['values'][$key]['firstname'] = '';
			}

			if (isset($value['lastname'])) {
	    		$this->data['values'][$key]['lastname'] = $value['lastname'];
			} else {
				$this->data['values'][$key]['lastname'] = '';
			}
			//$this->session->data['recipient_location'][$key]= $product['recipient_location'];
			
			if (isset($value['recipient_location'])) {
	    		$this->data['values'][$key]['recipient_location'] = $value['recipient_location'];
			} else {
				$this->data['values'][$key]['recipient_location'] = '';
			}
			
			if (isset($value['address_1'])) {
	    		$this->data['values'][$key]['address_1'] = $value['address_1'];
			} else {
				$this->data['values'][$key]['address_1'] = '';
			}
			
			if(isset($value['address_id']))
			{
				$this->data['values'][$key]['address_id'] = $value['address_id'];
			}
			
			if(isset($value['shipping_address']))
			{
				if($value['shipping_address'] == 'new')
				{
					$this->data['values'][$key]['showForm'] = 1;
				}
				else
				{
					$this->data['values'][$key]['showForm'] = 0;
				}
			}
			if(isset($value['country_id']))
			{
				$this->data['values'][$key]['country_id'] = $value['country_id'];
			}
			if(isset($value['zone_id']))
			{
				$this->data['values'][$key]['zone_id'] = $value['zone_id'];
			}
			if(isset($value['city']))
			{
				$this->data['values'][$key]['city'] = $value['city'];
			}
		}
		$this->response->setOutput($this->render());
  	}	
	
	public function validate() {
		
			$error = array();
			$this->language->load('checkout/checkout');
			$this->load->model('catalog/product');
			foreach($this->request->post as $key => $value)
			{
				if (isset($value['shipping_address']) && $value['shipping_address'] == 'new') 
				{
					
					/*if ((utf8_strlen($value['address_title']) < 1) || (utf8_strlen($value['address_title']) > 32)) {
						 $this->error[$key]['address_title'] = $this->language->get('error_firstname'); 
						
						//$json['error']['firstname'] = $this->language->get('error_firstname');
					}	*/
					
					if ((utf8_strlen($value['firstname']) < 1) || (utf8_strlen($value['firstname']) > 32)) {
						 $this->error[$key]['firstname'] = $this->language->get('error_firstname'); 
						
						//$json['error']['firstname'] = $this->language->get('error_firstname');
					}
					
			
					if ((utf8_strlen($value['lastname']) < 1) || (utf8_strlen($value['lastname']) > 32)) {
						$this->error[$key]['lastname'] = $this->language->get('error_lastname');
					}
			
					if ((utf8_strlen($value['address_1']) < 3) || (utf8_strlen($value['address_1']) > 128)) {
						$this->error[$key]['address_1'] = $this->language->get('error_address_1');
					}
			
					if ((utf8_strlen($value['city']) < 2) || (utf8_strlen($value['city']) > 128)) {
						$this->error[$key]['city'] = $this->language->get('error_city');
					}
										
					$this->load->model('localisation/country');
					
					$country_info = $this->model_localisation_country->getCountry($value['country_id']);
					
					if ($country_info && $country_info['postcode_required'] && (utf8_strlen($value['postcode']) < 2) || (utf8_strlen($value['postcode']) > 10)) {
						$this->error[$key]['postcode'] = $this->language->get('error_postcode');
					}
					
					if ($value['country_id'] == '') {
						$this->error[$key]['country'] = $this->language->get('error_country');
					}
					
					if (!isset($value['zone_id']) || $value['zone_id'] == '') {
						$this->error[$key]['zone'] = $this->language->get('error_zone');
					}
					if (!isset($this->error[$key])) {
						//-------- if there is no error and addres is not in database then add new address
						
						if($this->model_account_address->checkAddressExists($value) == 0)
						{
							
							 $this->session->data['shipping_address_id'][$key] = $this->model_account_address->addAddress($value);
						}
						else
						{
							 $this->session->data['shipping_address_id'][$key] = $this->model_account_address->getAdddressByData($value);
						}
						//return true; 
					} 
					elseif(isset($value['address_id']))
					{
						$this->session->data['shipping_address_id'][$key] = $value['address_id'];
					}   	
					else
					{
						$this->error[$key]['shipping_address'] = 'Please select some address';
					}
				}
				elseif(isset($value['address_id']))
				{
					$this->session->data['shipping_address_id'][$key] = $value['address_id'];
				}   	
				else
				{
					$this->error[$key]['shipping_address'] = 'Please select some address';
				}
				
				if(isset($value['delivery_date']) && $value['delivery_date'] != '')
				{
					$getSpecialProducts =  $this->model_catalog_product->checkProductAvaiableDate($key, $value['delivery_date']);
					if($getSpecialProducts)
					{
						$this->session->data['delivery_date'][$key] = $value['delivery_date'];
					}	
					else
					{
						$this->error[$key]['date_available'] = 'Product not available for selected delivery date';
					}
				}
				else
				{
					$this->error[$key]['date_available'] = 'Please select valid delivery date';
				}
			}//foreach
		
		if (!$this->error) { return true; 
			} else { 
				return false; 	
			}
	}
	
	public function country() {
		$json = array();
		
		$this->load->model('localisation/country');

    	$country_info = $this->model_localisation_country->getCountry($this->request->get['country_id']);
		
		if ($country_info) {
			$this->load->model('localisation/zone');

			$json = array(
				'country_id'        => $country_info['country_id'],
				'name'              => $country_info['name'],
				'iso_code_2'        => $country_info['iso_code_2'],
				'iso_code_3'        => $country_info['iso_code_3'],
				'address_format'    => $country_info['address_format'],
				'postcode_required' => $country_info['postcode_required'],
				'zone'              => $this->model_localisation_zone->getZonesByCountryId($this->request->get['country_id']),
				'status'            => $country_info['status']		
			);
		}
		//print_r($json);die("json");
		$this->response->setOutput(json_encode($json));
	}

	/**
	* function to get cities of selected zone
	* @param null
	* @return null
	*/								   
  public function city() {
		$output = '<option value="">' . $this->language->get('text_select') . '</option>';

		$this->load->model('localisation/city');

		$results = $this->model_localisation_city->getCitiesByZoneId($this->request->get['zone_id']);

		foreach ($results as $result) {
			$output .= '<option value="' . $result['name'] . '"';

			if (isset($this->request->get['city_name']) && (str_replace('_',' ',$this->request->get['city_name']) == $result['name'])) 			{
				$output .= ' selected="selected"';
			}

			$output .= '>' . $result['name'] . '</option>';
		}

		if (!$results) {
			$output = '<option value="0">' . $this->language->get('text_none') . '</option>';
		} else {
		//	$output .= '<option value="0">' . $this->language->get('text_none') . '</option>';
		}
		$this->response->setOutput($output);
	}	
}
?>
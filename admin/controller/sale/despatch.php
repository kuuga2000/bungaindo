<?php
class ControllerSaleDespatch extends Controller {
	private $error = array();

  	public function index() {
  		
  	$this->data['lang'] = $this->language->get('code');
    	$this->load->model('sale/order');
  	}

        public function despatch() {
			
		$this->load->language('sale/despatch');
		$this->data['lang'] = $this->language->get('code'); 

		$this->data['title'] = $this->language->get('heading_title');

		if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$this->data['base'] = HTTPS_SERVER;
		} else {
			$this->data['base'] = HTTP_SERVER;
		}

		$this->data['entry_shipped'] = $this->language->get('entry_shipped');
                $this->data['entry_follow'] = $this->language->get('entry_follow');
                $this->data['entry_thisship'] = $this->language->get('entry_thisship');
                $this->data['direction'] = $this->language->get('direction');
		$this->data['language'] = $this->language->get('code');
		$this->data['text_invoice'] = $this->language->get('text_invoice');
		$this->data['text_order_id'] = $this->language->get('text_order_id');
		$this->data['text_invoice_no'] = $this->language->get('text_invoice_no');
		$this->data['text_invoice_date'] = $this->language->get('text_invoice_date');
		$this->data['text_date_added'] = $this->language->get('text_date_added');
		$this->data['text_telephone'] = $this->language->get('text_telephone');
		$this->data['text_fax'] = $this->language->get('text_fax');
		$this->data['text_to'] = $this->language->get('text_to');
		$this->data['text_ship_to'] = $this->language->get('text_ship_to');
		$this->data['text_payment_method'] = $this->language->get('text_payment_method');
		$this->data['text_shipping_method'] = $this->language->get('text_shipping_method');
                $this->data['text_customer_comment'] = $this->language->get('text_customer_comment');

		$this->data['column_product'] = $this->language->get('column_product');
		$this->data['column_model'] = $this->language->get('column_model');
		$this->data['column_quantity'] = $this->language->get('column_quantity');
		$this->data['column_comment'] = $this->language->get('column_comment');

		$this->load->model('sale/order');

		$this->load->model('setting/setting');

		$this->data['orders'] = array();

		$orders = array();
		
		if (isset($this->request->post['selected'])) {
			$orders = $this->request->post['selected'];
		} elseif (isset($this->request->get['order_id'])) {
			$orders[] = $this->request->get['order_id'];
		}
		$pdf = (isset($this->request->get['pdf'])) ? true : false;

		foreach ($orders as $order_id) {
			$order_info = $this->model_sale_order->getOrder($order_id);
		           $results = $this->model_sale_order->getOrderHistories($order_id);
                if (empty($results ))  {
                     $this->data['histories'][$order_id] = '';
                                } else {             
                foreach ($results as $result) {
                
        	$this->data['histories'][$order_id][] = array(
				'notify'     => $result['notify'] ? $this->language->get('text_yes') : $this->language->get('text_no'),
				'status'     => $result['status'],
				'comment'    => nl2br($result['comment']),
        		        'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added']))
        	                                              );
      	                                   }
                                }			 	

			if ($order_info) {
				$store_info = $this->model_setting_setting->getSetting('config', $order_info['store_id']);
				
				if ($store_info) {
					$store_address = $store_info['config_address'];
					$store_email = $store_info['config_email'];
					$store_telephone = $store_info['config_telephone'];
					$store_fax = $store_info['config_fax'];
				} else {
					$store_address = $this->config->get('config_address');
					$store_email = $this->config->get('config_email');
					$store_telephone = $this->config->get('config_telephone');
					$store_fax = $this->config->get('config_fax');
				}
				
				if ($order_info['invoice_no']) {
					$invoice_no = $order_info['invoice_prefix'] . $order_info['invoice_no'];
				} else {
					$invoice_no = '';
				}
				
				if ($order_info['shipping_address_format']) {
					$format = $order_info['shipping_address_format'];
				} else {
					$format = '{firstname} {lastname}' . "\n" . '{company}' . "\n" . '{address_1}' . "\n" . '{address_2}' . "\n" . '{city} {postcode}' . "\n" . '{zone}' . "\n" . '{country}';
				}

				$find = array(
					'{firstname}',
					'{lastname}',
					'{company}',
					'{address_1}',
					'{address_2}',
					'{city}',
					'{postcode}',
					'{zone}',
					'{zone_code}',
					'{country}'
				);

				$replace = array(
					'firstname' => $order_info['shipping_firstname'],
					'lastname'  => $order_info['shipping_lastname'],
					'company'   => $order_info['shipping_company'],
					'address_1' => $order_info['shipping_address_1'],
					'address_2' => $order_info['shipping_address_2'],
					'city'      => $order_info['shipping_city'],
					'postcode'  => $order_info['shipping_postcode'],
					'zone'      => $order_info['shipping_zone'],
					'zone_code' => $order_info['shipping_zone_code'],
					'country'   => $order_info['shipping_country']
				);

				$shipping_address = str_replace(array("\r\n", "\r", "\n"), '<br />', preg_replace(array("/\s\s+/", "/\r\r+/", "/\n\n+/"), '<br />', trim(str_replace($find, $replace, $format))));

				if ($order_info['payment_address_format']) {
					$format = $order_info['payment_address_format'];
				} else {
					$format = '{firstname} {lastname}' . "\n" . '{company}' . "\n" . '{address_1}' . "\n" . '{address_2}' . "\n" . '{city} {postcode}' . "\n" . '{zone}' . "\n" . '{country}';
				}

				$find = array(
					'{firstname}',
					'{lastname}',
					'{company}',
					'{address_1}',
					'{address_2}',
					'{city}',
					'{postcode}',
					'{zone}',
					'{zone_code}',
					'{country}'
				);

				$replace = array(
					'firstname' => $order_info['payment_firstname'],
					'lastname'  => $order_info['payment_lastname'],
					'company'   => $order_info['payment_company'],
					'address_1' => $order_info['payment_address_1'],
					'address_2' => $order_info['payment_address_2'],
					'city'      => $order_info['payment_city'],
					'postcode'  => $order_info['payment_postcode'],
					'zone'      => $order_info['payment_zone'],
					'zone_code' => $order_info['payment_zone_code'],
					'country'   => $order_info['payment_country']
				);

				$payment_address = str_replace(array("\r\n", "\r", "\n"), '<br />', preg_replace(array("/\s\s+/", "/\r\r+/", "/\n\n+/"), '<br />', trim(str_replace($find, $replace, $format))));

				$product_data = array();

				$products = $this->model_sale_order->getOrderProducts($order_id);

				foreach ($products as $product) {
					$option_data = array();

					$options = $this->model_sale_order->getOrderOptions($order_id, $product['order_product_id']);

					foreach ($options as $option) {
						if ($option['type'] != 'file') {
							$value = $option['value'];
						} else {
							$value = utf8_substr($option['value'], 0, utf8_strrpos($option['value'], '.'));
						}
						
						$option_data[] = array(
							'name'  => $option['name'],
							'value' => $value
						);								
					}

					$product_data[] = array(
						'name'     => $product['name'],
                        'id'       => $product['product_id'],
                        'order_product_id' => $product['order_product_id'],
						'model'    => $product['model'],
						'option'   => $option_data,                                                
						'quantity' => $product['quantity']

					);
 
				}
				
							
				$total_data = $this->model_sale_order->getOrderTotals($order_id);
                                $shipd_data = $this->model_sale_order->getOrderProducts($order_id);

                                
                             if (isset($this->request->server['HTTPS']) && (($this->request->server['HTTPS'] == 'on') || ($this->request->server['HTTPS'] == '1'))) {
			$server = HTTPS_CATALOG . 'image/';
		} else {
			$server = HTTP_CATALOG . 'image/';
                }
                
				$this->data['orders'][] = array(
					'order_id'	       => $order_id,
					'invoice_no'       => $invoice_no,
					'date_added'       => date($this->language->get('date_format_short'), strtotime($order_info['date_added'])),
					'store_name'       => $order_info['store_name'],
					'store_url'        => rtrim($order_info['store_url'], '/'),
					'store_address'    => nl2br($store_address),
					'store_email'      => $store_email,
					'store_telephone'  => $store_telephone,
					'store_fax'        => $store_fax,
					'email'            => $order_info['email'],
					'telephone'        => $order_info['telephone'],
					'shipping_address' => $shipping_address,
					'payment_address'  => $payment_address,
					'payment_method'   => $order_info['payment_method'],
					'shipping_method'  => $order_info['shipping_method'],
					'product'          => $product_data,
					'total'            => $total_data,
					'comment'          => nl2br($order_info['comment']),
                    'logo'             => $server . $store_info['config_logo'],
					'name'				=>ucfirst($order_info['shipping_firstname'])." ".ucfirst($order_info['shipping_lastname'])
				);
 
              }
       
		}
                
                if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}  
 
                $action = $this->url->link('sale/despatch/editdespatch', 'token=' . $this->session->data['token'], 'SSL');
		$this->template = 'sale/order_despatch.tpl';
		
		
	
		if ($pdf){
				
	$this->response->setOutput(pdf($this->render(),$this->data['orders']));
}else{
	
	$this->response->setOutput($this->render());
}

		
		//$this->response->setOutput($this->render());
		/** BELOW CODE STARTS FOR CONVERTING INVOICE TO PDF -ADDED BY SHEETAL GODASE ON 17TH JUNE 2013 **/
		$this->response->setOutput($this->render()); 
	
		//$this->response->setOutput($this->renderPDF());
/** BELOW CODE ENDS FOR CONVERTING INVOICE TO PDF -ADDED BY SHEETAL GODASE ON 17TH JUNE 2013 **/
		
		
	}
 

}
?>
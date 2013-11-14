<?php 
class ControllerCheckoutConfirm extends Controller { 
	protected $data = array();
	private $error = array();
	public function index() {
		
		if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('checkout/cart', '', 'SSL');
	  
	  		$this->redirect($this->url->link('account/login_register', '', 'SSL'));
    	}
		$redirect='';
		$this->data['coupon']='';
		if ($this->cart->hasShipping()) {
			// Validate if shipping address has been set.		
			$this->load->model('account/address');
			$this->language->load('checkout/checkout');
			$this->language->load('checkout/cart');
		    //echo "<pre>"; print_r($this->session->data);
			
			//$this->data['date_available']=$this->session->data['date_available'];
			$this->data['delivery_date_pass']= $this->session->data['delivery_date'] ;
			$this->data['text_use_coupon'] = $this->language->get('text_use_coupon');
			$this->data['entry_coupon'] = $this->language->get('entry_coupon');
			$this->data['button_coupon'] = $this->language->get('button_coupon');
			$this->data['action'] = $this->url->link('checkout/confirm');  
			
			if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		} 
			
		if (!isset($this->session->data['vouchers'])) {
			$this->session->data['vouchers'] = array();
		}
		
		$this->data['coupon_status'] = $this->config->get('coupon_status');
		// Coupon    
		if (isset($this->request->post['coupon']) && $this->validateCoupon()) { 
			$this->session->data['coupon'] = $this->request->post['coupon'];
				
			$this->session->data['success'] = $this->language->get('text_coupon');
			
			$this->redirect($this->url->link('checkout/confirm'));
		}
		
		$this->data['text_payment_method'] = $this->language->get('text_payment_method');
		} 
		else {
			unset($this->session->data['shipping_method']);
			unset($this->session->data['shipping_methods']);
		}
		
		// Payment Methods
		$this->language->load('payment/bank_transfer');
		
		$this->data['text_instruction'] = $this->language->get('text_instruction');
		$this->data['text_description'] = $this->language->get('text_description');
		$this->data['text_payment'] = $this->language->get('text_payment');
		
		$this->data['button_confirm'] = $this->language->get('button_confirm');
		$this->data['removeUpsell'] = $this->url->link('checkout/confirm/removeUpsell');
		
		$this->data['bank'] = nl2br($this->config->get('bank_transfer_bank_' . $this->config->get('config_language_id')));

		$this->data['continue'] = $this->url->link('checkout/success');
		
		//----------voucher 	
		if (isset($this->request->post['voucher'])) {
				$this->data['voucher'] = $this->request->post['voucher'];				
			} elseif (isset($this->session->data['voucher'])) {
				$this->data['voucher'] = $this->session->data['voucher'];
			} else {
				$this->data['voucher'] = '';
			}	
					
		// Validate cart has products and has stock.	
		if ((!$this->cart->hasProducts() && empty($this->session->data['vouchers'])) || (!$this->cart->hasStock() && !$this->config->get('config_stock_checkout'))) {
			$redirect = $this->url->link('checkout/cart');				
		}	
		
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
				$redirect = $this->url->link('checkout/cart');
				
				break;
			}				
		}
						
		if (!$redirect) {
			$total_data = array();
			$total = 0;
			$taxes = $this->cart->getTaxes();
			 
			$this->load->model('setting/extension');
			
			$sort_order = array(); 
			
			$results = $this->model_setting_extension->getExtensions('total');
			
			foreach ($results as $key => $value) {
				$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
			}
			
			array_multisort($sort_order, SORT_ASC, $results);
		
			$this->language->load('checkout/checkout');
			
			$data['invoice_prefix'] = $this->config->get('config_invoice_prefix');
			$data['store_id'] = $this->config->get('config_store_id');
			$data['store_name'] = $this->config->get('config_name');
			
			if ($data['store_id']) {
				$data['store_url'] = $this->config->get('config_url');		
			} else {
				$data['store_url'] = HTTP_SERVER;	
			}
			// payment address has been set.
			if ($this->customer->isLogged()) {
				$data['customer_id'] = $this->customer->getId();
				$data['customer_group_id'] = $this->customer->getCustomerGroupId();
				$data['firstname'] = $this->customer->getFirstName();
				$data['lastname'] = $this->customer->getLastName();
				$data['email'] = $this->customer->getEmail();
				$data['telephone'] = $this->customer->getTelephone();
				$data['fax'] = $this->customer->getFax();
			
				$this->load->model('account/address');
				$this->session->data['payment_address_id']= $this->customer->getDefaultAddressId(); 
				$payment_address = $this->model_account_address->getAddress($this->session->data['payment_address_id']);
			} elseif (isset($this->session->data['guest'])) {
				$this->redirect($this->url->link('account/login_register', '', 'SSL'));	
			}
			
			$data['payment_firstname'] = $payment_address['firstname'];
			$data['payment_lastname'] = $payment_address['lastname'];	
			$data['payment_company'] = $payment_address['company'];	
			$data['payment_company_id'] = $payment_address['company_id'];	
			$data['payment_tax_id'] = $payment_address['tax_id'];	
			$data['payment_address_1'] = $payment_address['address_1'];
			$data['payment_address_2'] = $payment_address['address_2'];
			$data['payment_city'] = $payment_address['city'];
			$data['payment_postcode'] = $payment_address['postcode'];
			$data['payment_zone'] = $payment_address['zone'];
			$data['payment_zone_id'] = $payment_address['zone_id'];
			$data['payment_country'] = $payment_address['country'];
			$data['payment_country_id'] = $payment_address['country_id'];
			$data['payment_address_format'] = $payment_address['address_format'];
		
			if (isset($this->session->data['payment_method']['title'])) {
				$data['payment_method'] = $this->session->data['payment_method']['title'];
			} else {
				$data['payment_method'] = '';
			}
			
			if (isset($this->session->data['payment_method']['code'])) {
				$data['payment_code'] = $this->session->data['payment_method']['code'];
			} else {
				$data['payment_code'] = '';
			}
				
			$product_data = array();
			$this->load->model('catalog/product');
	
			foreach ($this->cart->getProducts() as $product) {
				$option_data = array();
	
				foreach ($product['option'] as $option) {
					if ($option['type'] != 'file') {
						$value = $option['option_value'];	
					} else {
						$value = $this->encryption->decrypt($option['option_value']);
					}	
					
					$option_data[] = array(
						'product_option_id'       => $option['product_option_id'],
						'product_option_value_id' => $option['product_option_value_id'],
						'option_id'               => $option['option_id'],
						'option_value_id'         => $option['option_value_id'],	
						'name'                    => $option['name'],
						'value'                   => $value,
						'type'                    => $option['type']
					);					
				}
	 			//-------- Shipping address
		if ($this->customer->isLogged() && isset($this->session->data['shipping_address_id'][$product['key']])) 		{
  			$shipping_address = $this->model_account_address->getAddress($this->session->data['shipping_address_id'][$product['key']]);
				$shippingArr['shipping_firstname'] = $shipping_address['firstname'];
				$shippingArr['shipping_lastname'] = $shipping_address['lastname'];	
				$shippingArr['shipping_lastname'] = $shipping_address['lastname'];	
				$shippingArr['shipping_company'] = $shipping_address['company'];	
				$shippingArr['shipping_address_1'] = $shipping_address['address_1'];
				$shippingArr['shipping_address_2'] = $shipping_address['address_2'];
				$shippingArr['shipping_city'] = $shipping_address['city'];
				$shippingArr['shipping_postcode'] = $shipping_address['postcode'];
				$shippingArr['shipping_zone'] = $shipping_address['zone'];
				$shippingArr['shipping_zone_id'] = $shipping_address['zone_id'];
				$shippingArr['shipping_country'] = $shipping_address['country'];
				$shippingArr['shipping_country_id'] = $shipping_address['country_id'];
				$shippingArr['shipping_address_format'] = $shipping_address['address_format'];
				$shippingArr['telephone'] = $shipping_address['telephone'];
				if (isset($this->session->data['shipping_method']['title'])) {
					$shippingArr['shipping_method'] = $this->session->data['shipping_method']['title'];
				} else {
					$shippingArr['shipping_method'] = '';
				}
				
				if (isset($this->session->data['shipping_method']['code'])) {
					$data['shipping_code'] = $this->session->data['shipping_method']['code'];
				} else {
					$data['shipping_code'] = '';
				}		
				//print_r($shipping_address);
				}elseif (isset($this->session->data['guest'])) {
			die('send to login');
		}
				// ------------- adding upsell products
				$upsell = array();
				$count = 0;
				$additionalPrice = 0;
				$totalAdditionPrice = 0;
				foreach($this->session->data['upselling'][$product['key']] AS $key => $upsellProducts)	
				{
					//echo "<pre>";print_r($upsellProducts);
					if(isset($upsellProducts))
					{
						$productDetails = $this->model_catalog_product->getProduct($upsellProducts);	
						$productCatName = $this->model_catalog_product->getCategoriesName($upsellProducts);					
						$price = 1 *$productDetails['price'];
						$upsell[$count] = array(
						'product_id' => $upsellProducts,
						'name' => $productDetails['name'],
						'cat_name'=>$productCatName,
						'price' => $price,
						'quantity' =>1
						);
						$additionalPrice += $price;
						$count++;
					}
				}
				
				$product_data[] = array(
					'product_id' => $product['product_id'],
					'shippingMethod'=> $product['shippingMethod'],
					'name'       => $product['name'],
					'model'      => $product['model'],
					'option'     => $option_data,
					'download'   => $product['download'],
					'quantity'   => $product['quantity'],
					'subtract'   => $product['subtract'],
					'price'      => $product['price'],
					'priceNumeric' =>$product['price'],
					'total'      => $product['price']  * $product['quantity'],
					'tax'        => $this->tax->getTax($product['price'], $product['tax_class_id']),
					'reward'     => $product['reward'],
					'href'       => $this->url->link('product/product', 'product_id=' . $product['product_id']),
					'shppingAddres' => $shippingArr,
					'upsellProducts' => $upsell,
					/*'additionalPrice' => $this->currency->format($this->tax->calculate($additionalPrice, $product['tax_class_id'], $this->config->get('config_tax')))*/
					'additionalPrice' => $this->tax->calculate($additionalPrice, $product['tax_class_id'], $this->config->get('config_tax'))
				); 
				$total = $total + $additionalPrice;
			}
			$totalAdditionPrice = $total;
			$this->data['additional'] = $this->currency->format($this->tax->calculate($total, $product['tax_class_id'], $this->config->get('config_tax')));
			foreach ($results as $result) {
				if ($this->config->get($result['code'] . '_status')) {
					$this->load->model('total/' . $result['code']);
		
					$this->{'model_total_' . $result['code']}->getTotal($total_data, $total, $taxes);
				}
				
			}
			
			$sort_order = array(); 
		  
			foreach ($total_data as $key => $value) {
				$sort_order[$key] = $value['sort_order'];
			}

			array_multisort($sort_order, SORT_ASC, $total_data);

			// delivery date
			$del_date_data=array();
			if(!empty($this->session->data['delivery_date']))
			{
				foreach($this->session->data['delivery_date'] as $k=>$v)
				{
					$del_date_data[]=array(
					
					$k => $v);
				}
			}
			
			// Gift Voucher
			$voucher_data = array();
			//echo "<pre>";print_r($this->session->data);echo "<pre>"; 
			if (!empty($this->session->data['vouchers'])) {
				foreach ($this->session->data['vouchers'] as $voucher) {
					$voucher_data[] = array(
						'description'      => $voucher['description'],
						'code'             => substr(md5(mt_rand()), 0, 10),
						'to_name'          => $voucher['to_name'],
						'to_email'         => $voucher['to_email'],
						'from_name'        => $voucher['from_name'],
						'from_email'       => $voucher['from_email'],
						'voucher_theme_id' => $voucher['voucher_theme_id'],
						'message'          => $voucher['message'],						
						'amount'           => $voucher['amount']
					);
				}
			}  
			
			 $data['del_date']=	($this->session->data['delivery_date']);	
			//echo "<pre>";print_r($data['del_date']);echo "<pre>"; //die(":)");
			$data['products'] = $product_data;
			$data['vouchers'] = $voucher_data;
			$data['totals'] = $total_data;
			$data['total'] = $total;
			$this->data['total'] = $total;
			//echo "<pre>"; print_r($data['totals']);
			//echo "<pre>";print_r($data['total']);
			$this->data['products'] = $product_data;
			if (isset($this->request->cookie['tracking'])) {
				$this->load->model('affiliate/affiliate');
				
				$affiliate_info = $this->model_affiliate_affiliate->getAffiliateByCode($this->request->cookie['tracking']);
				$subtotal = $this->cart->getSubTotal();
				
				if ($affiliate_info) {
					$data['affiliate_id'] = $affiliate_info['affiliate_id']; 
					$data['commission'] = ($subtotal / 100) * $affiliate_info['commission']; 
				} else {
					$data['affiliate_id'] = 0;
					$data['commission'] = 0;
				}
			} else {
				$data['affiliate_id'] = 0;
				$data['commission'] = 0;
			}
			
			$data['language_id'] = $this->config->get('config_language_id');
			$data['currency_id'] = $this->currency->getId();
			$data['currency_code'] = $this->currency->getCode();
			$data['currency_value'] = $this->currency->getValue($this->currency->getCode());
			$data['ip'] = $this->request->server['REMOTE_ADDR'];
			
			if (!empty($this->request->server['HTTP_X_FORWARDED_FOR'])) {
				$data['forwarded_ip'] = $this->request->server['HTTP_X_FORWARDED_FOR'];	
			} elseif(!empty($this->request->server['HTTP_CLIENT_IP'])) {
				$data['forwarded_ip'] = $this->request->server['HTTP_CLIENT_IP'];	
			} else {
				$data['forwarded_ip'] = '';
			}
			
			if (isset($this->request->server['HTTP_USER_AGENT'])) {
				$data['user_agent'] = $this->request->server['HTTP_USER_AGENT'];	
			} else {
				$data['user_agent'] = '';
			}
			
			
			if (isset($this->request->server['HTTP_ACCEPT_LANGUAGE'])) {
				$data['accept_language'] = $this->request->server['HTTP_ACCEPT_LANGUAGE'];	
			} else {
				$data['accept_language'] = '';
			}
			$this->data['confirmAction'] = '';
			
			//------------------ adding additional product price to subtotal if there are additional products
			
			$arrCount = count($total_data);
			for($totalCount = 0; $totalCount < $arrCount; $totalCount++ )
			{
				if($total_data[$totalCount]['code'] == 'sub_total')
				{
					$total_data[$totalCount]['value'] = (int)$total_data[$totalCount]['value'] + (int)$totalAdditionPrice;
					$total_data[$totalCount]['text'] = $this->currency->format($total_data[$totalCount]['value']);
				}
			}	
			
				
			//*----------------- CHEKING POST
			//---------------- confirm order -------------
			if(isset($this->request->post['confirmOrder']))	
			{
				//echo "BABABABAB";exit;
				$this->load->model('checkout/order');
				$paymentMethod = $this->request->post['paymentmethod'];
			
				/*if($paymentMethod == 'bank_transfer')
				{
					$data['payment_method'] = 'Bank Transfer';
					$data['payment_code'] = 'bank_transfer';
				}
				if($paymentMethod == 'kaspay')
				{
					$data['payment_method'] = 'Kaspay';
					$data['payment_code'] = 'kaspay';
					$transaction_id = time();
				}*/
				$transaction_id = time();
				$data['payment_method'] = 'Bank Transfer';
				$data['payment_code'] = 'bank_transfer';
				
				//---------placing the order
				
				$orderData = $data;
				$productCount = count($orderData['products']);
				$orderCount = 0;
				$this->load->model('payment/kaspay');	
				$creditAmount = 0;
				$voucherAmount = 0;
				foreach($total_data AS $newTotal)
				{
					//print_r($newTotal);	
					if($newTotal['code'] == 'credit')
					{
						$creditAmount = 0-$newTotal['value'];
					}
					if($newTotal['code'] == 'coupon')
					{
						$voucherAmount = 0-$newTotal['value'];
					}
				
				}
				/*echo $creditAmount;
				die;*/
				foreach($orderData['products'] AS $orderProduct )
				{
					$count = 0;
					$data['products'] = array();
					$data['products'][$count] = $orderProduct;
					$upsellPrice = 0;
					foreach($orderProduct['upsellProducts'] AS $upsellProducts)
					{
						$count++;
						$data['products'][$count] = $upsellProducts;
						$data['products'][$count]['model'] = '';
						$data['products'][$count]['tax'] = '';
						$data['products'][$count]['reward'] = '';
						//$data['products'][$count]['total'] = $upsellProducts['price']*$upsellProducts['quantity'];
						$data['products'][$count]['total'] = $upsellProducts['price'];
						$data['products'][$count]['price'] = (int)$upsellProducts['price'] / (int)$upsellProducts['quantity'];
						$data['products'][$count]['option'] = array();
						$data['products'][$count]['download'] = array();
						$upsellPrice = $upsellPrice + $data['products'][$count]['total'];
					}
					
					$data['shipping_firstname'] = $orderProduct['shppingAddres']['shipping_firstname'];
                    $data['shipping_lastname'] = $orderProduct['shppingAddres']['shipping_lastname'];
                    $data['shipping_company'] = $orderProduct['shppingAddres']['shipping_company'];
                    $data['shipping_address_1'] = $orderProduct['shppingAddres']['shipping_address_1'];
                    $data['shipping_address_2'] = $orderProduct['shppingAddres']['shipping_address_2'];
                    $data['shipping_city'] = $orderProduct['shppingAddres']['shipping_city'];
                    $data['shipping_postcode'] = $orderProduct['shppingAddres']['shipping_postcode'];
                    $data['shipping_zone'] = $orderProduct['shppingAddres']['shipping_zone'];
                    $data['shipping_zone_id'] = $orderProduct['shppingAddres']['shipping_zone_id'];
                    $data['shipping_country'] = $orderProduct['shppingAddres']['shipping_country'];
                    $data['shipping_country_id'] = $orderProduct['shppingAddres']['shipping_country_id'];
                    $data['shipping_address_format'] = $orderProduct['shppingAddres']['shipping_address_format'];
                    $data['shipping_method'] = 'Flat Shipping Rate';
					$data['shipping_code'] = 'flat.flat';
					echo $data['del_date']=	($this->session->data['delivery_date'][$orderProduct['product_id']]);
					exit; //added by kuuga november 14, 2013
					echo $data['time'] = ($this->session->data['time'][$orderProduct['product_id']]);
					
					$newSubTotal = (int)$upsellPrice + ((int)$orderProduct['priceNumeric'] * (int)$orderProduct['quantity']);
					if(isset($this->session->data['hideSender'][$orderProduct['product_id']]) && $this->session->data['hideSender'][$orderProduct['product_id']] == 1)
					{
							$data['hideSender'] = 1;
					}
					else
					{
						$data['hideSender'] = 0;
					}
					
					$arrCount = count($total_data);
					$this_produc_total = array();
					$thisProductVal = 0;
					for($totalCount = 0; $totalCount < $arrCount; $totalCount++ )
					{
						if($total_data[$totalCount]['code'] == 'sub_total')
						{
							$this_produc_total[$totalCount]['code'] = $total_data[$totalCount]['code'];
							$this_produc_total[$totalCount]['title'] = $total_data[$totalCount]['title'];
							$this_produc_total[$totalCount]['sort_order'] = $total_data[$totalCount]['sort_order'];
							$this_produc_total[$totalCount]['value'] = (int)$newSubTotal ;
							$this_produc_total[$totalCount]['text'] = $this->currency->format($this_produc_total[$totalCount]['value'] );
							$thisProductVal = (int)$newSubTotal;
						}
						if($total_data[$totalCount]['code'] == 'coupon' )
						{
							$this_produc_total[$totalCount]['code'] = $total_data[$totalCount]['code'];
							$this_produc_total[$totalCount]['title'] = $total_data[$totalCount]['title'];
							$this_produc_total[$totalCount]['sort_order'] = $total_data[$totalCount]['sort_order'];
							if($voucherAmount >= $thisProductVal)
							{
								$this_produc_total[$totalCount]['value'] = 0-$thisProductVal;
								$voucherAmount = $voucherAmount - $thisProductVal;
							}
							else
							{
								$this_produc_total[$totalCount]['value'] = 0-$voucherAmount;
								$voucherAmount = 0;
							}
							//$this_produc_total[$totalCount]['value'] = (int)($total_data[$totalCount]['value']/ $productCount);
							$this_produc_total[$totalCount]['text'] = $this->currency->format($this_produc_total[$totalCount]['value'] );
							$thisProductVal = $thisProductVal + (int)$this_produc_total[$totalCount]['value'];
						}
						if($total_data[$totalCount]['code'] == 'credit')
						{
							$this_produc_total[$totalCount]['code'] = $total_data[$totalCount]['code'];
							$this_produc_total[$totalCount]['title'] = $total_data[$totalCount]['title'];
							$this_produc_total[$totalCount]['sort_order'] = $total_data[$totalCount]['sort_order'];
							if($creditAmount >= $thisProductVal )
							{
								$this_produc_total[$totalCount]['value'] = 0-$thisProductVal;
								$creditAmount = $creditAmount - $thisProductVal;
							}
							else
							{
								$this_produc_total[$totalCount]['value'] = 0-$creditAmount;
								$creditAmount = 0  ;
							}
							//$this_produc_total[$totalCount]['value'] = (int)($total_data[$totalCount]['value']/ $productCount);
							$this_produc_total[$totalCount]['text'] = $this->currency->format($this_produc_total[$totalCount]['value'] );
							$thisProductVal = $thisProductVal + (int)$this_produc_total[$totalCount]['value'];
						}
						
						if($total_data[$totalCount]['code'] == 'total')
						{
							$this_produc_total[$totalCount]['code'] = $total_data[$totalCount]['code'];
							$this_produc_total[$totalCount]['title'] = $total_data[$totalCount]['title'];
							$this_produc_total[$totalCount]['sort_order'] = $total_data[$totalCount]['sort_order'];
							if($thisProductVal< 0)
							{
								$thisProductVal = 0;
								
							}
							$this_produc_total[$totalCount]['value'] = $thisProductVal ;
							$this_produc_total[$totalCount]['text'] = $this->currency->format($thisProductVal);
						}
						
					}	
					 $data['total'] = $thisProductVal;
					 $data['totals'] = $this_produc_total;
				
					$data['comment'] = $this->session->data['comment_message'][$orderProduct['product_id']];
					
					$orderId = $this->model_checkout_order->addOrder($data);
					
					$this->session->data['ordersId'][$orderCount] = $orderId;
					$this->language->load('payment/bank_transfer');
					
					
					$comment  = $this->language->get('text_instruction') . "\n\n";
					//---------confirming the  order
					$comment .= $this->config->get('bank_transfer_bank_' . $this->config->get('config_language_id')) . "\n\n";
					$comment .= $this->language->get('text_payment');
					
					//$this->model_checkout_order->confirm($orderId, $this->config->get('bank_transfer_order_status_id'), $comment, true);
					$this->model_checkout_order->confirm($orderId,'1', $comment, true);
					$orderCount++;
					if($paymentMethod == 'kaspay')
					{
						$this->model_payment_kaspay->addNewTransaction($transaction_id,$orderId);
					}
				}

				if($paymentMethod == 'kaspay')
				{
					$this->redirect('http://202.169.62.25/pay/48943060/'.$transaction_id);
				}	
				else
				{   //exit;
					$this->redirect($this->url->link('checkout/success', '', 'SSL'));
				}		
				
			}		
			
			
			$this->data['column_name'] = $this->language->get('column_name');
			$this->data['column_model'] = $this->language->get('column_model');
			$this->data['column_quantity'] = $this->language->get('column_quantity');
			$this->data['column_price'] = $this->language->get('column_price');
			$this->data['column_total'] = $this->language->get('column_total');
			$this->data['gift_box'] = $this->language->get('gift_box');
	
		
	
			// Gift Voucher
			/*$this->data['vouchers'] = array();*/
			
			/*if (!empty($this->session->data['vouchers'])) {
				foreach ($this->session->data['vouchers'] as $voucher) {
					$this->data['vouchers'][] = array(
						'description' => $voucher['description'],
						'amount'      => $this->currency->format($voucher['amount'])
					);
				}
			}  */
			if (!empty($this->session->data['vouchers'])) { 
				foreach ($this->session->data['vouchers'] as $key => $voucher) {
					$this->data['vouchers'][] = array(
						'key'         => $key,
						'description' => $voucher['description'],
						'amount'      => $this->currency->format($voucher['amount']),
						'remove'      => $this->url->link('checkout/cart', 'remove=' . $key)   
					);
				}
			}
			
			
			//--------------
			if (isset($this->session->data['success'])) {
				$this->data['success'] = $this->session->data['success'];
			
				unset($this->session->data['success']);
			} else {
				$this->data['success'] = '';
			}	
			
			
			if (isset($this->error['warning'])) {
				$this->data['error_warning'] = $this->error['warning'];
			}
			else {
				$this->data['error_warning'] = '';
			}		
			$this->data['totals'] = $total_data;
			$this->session->data['totals']=$total_data;
			
			//$this->data['payment'] = $this->getChild('payment/' . $this->session->data['payment_method']['code']);
			$this->data['payment'] = $this->getChild('payment/' ."cod");
		} else {
			$this->data['redirect'] = $redirect;
		}			
		//$this->data=$data;
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/checkout/confirm.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/checkout/confirm.tpl';
		} else {
			$this->template = 'default/template/checkout/confirm.tpl';
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
			
	
	public function removeUpsell()
	{
		
		$productId = '';
		$upsellProductId = '';
		if(isset($this->request->get['product']))
		{
			$productId = $this->request->get['product'] ;
		}
		if(isset($this->request->get['upsell']))
		{
			$upsellProductId = $this->request->get['upsell'] ;
		}
		
		
		if($upsellProductId != '' && $productId != '')
		{
			foreach($this->session->data['upselling'] as $sessionResult)
			{
				foreach($sessionResult as $key=>$value)
				{
					if($value==$upsellProductId)
					{
						unset($this->session->data['upselling'][$productId][$key]);
					}
				}
			}
		}
		
		$this->redirect($this->url->link('checkout/confirm', '', 'SSL'));
	}		
	protected function validateCoupon() {
		$this->load->model('checkout/coupon');
		
		if($this->request->post['coupon'] != '')
		{
			$coupon_info = $this->model_checkout_coupon->getCoupon($this->request->post['coupon']);			
		
			if (!$coupon_info) {			
				$this->error['warning'] = $this->language->get('Your promotion code is invalid');
			}
		}		
		else
		{
			$this->error['warning'] = 'Please insert promotion code';
		}
		
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}		
	}
}
?>
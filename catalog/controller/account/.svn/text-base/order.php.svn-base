<?php 
class ControllerAccountOrder extends Controller {
	private $error = array();
		
	public function index() {
    	if (!$this->customer->isLogged()) {
      		$this->session->data['redirect'] = $this->url->link('account/order', '', 'SSL');

	  		$this->redirect($this->url->link('account/login_register', '', 'SSL'));
    	}
		
		$this->language->load('account/order');
		
		$this->load->model('account/order');
 		
		if (isset($this->request->get['order_id'])) {
			$order_info = $this->model_account_order->getOrder($this->request->get['order_id']);
			
			if ($order_info) {
				$order_products = $this->model_account_order->getOrderProducts($this->request->get['order_id']);
						
				foreach ($order_products as $order_product) {
					$option_data = array();
							
					$order_options = $this->model_account_order->getOrderOptions($this->request->get['order_id'], $order_product['order_product_id']);
							
					foreach ($order_options as $order_option) {
						if ($order_option['type'] == 'select' || $order_option['type'] == 'radio') {
							$option_data[$order_option['product_option_id']] = $order_option['product_option_value_id'];
						} elseif ($order_option['type'] == 'checkbox') {
							$option_data[$order_option['product_option_id']][] = $order_option['product_option_value_id'];
						} elseif ($order_option['type'] == 'text' || $order_option['type'] == 'textarea' || $order_option['type'] == 'date' || $order_option['type'] == 'datetime' || $order_option['type'] == 'time') {
							$option_data[$order_option['product_option_id']] = $order_option['value'];	
						} elseif ($order_option['type'] == 'file') {
							$option_data[$order_option['product_option_id']] = $this->encryption->encrypt($order_option['value']);
						}
					}
							
					$this->session->data['success'] = sprintf($this->language->get('text_success'), $this->request->get['order_id']);
							
					$this->cart->add($order_product['product_id'], $order_product['quantity'], $option_data);
				}
									
				$this->redirect($this->url->link('checkout/cart'));
			}
		}
		
		$paginationLimit = 8;
    	$this->document->setTitle($this->language->get('heading_title'));

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),        	
        	'separator' => false
      	); 

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_account'),
			'href'      => $this->url->link('account/account', '', 'SSL'),        	
        	'separator' => $this->language->get('text_separator')
      	);
		
		$url = '';
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
				
      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('account/order', $url, 'SSL'),        	
        	'separator' => $this->language->get('text_separator')
      	);

		$this->data['heading_title'] = $this->language->get('heading_title');

		$this->data['text_order_id'] = $this->language->get('text_order_id');
		$this->data['text_status'] = $this->language->get('text_status');
		$this->data['text_date_added'] = $this->language->get('text_date_added');
		$this->data['text_customer'] = $this->language->get('text_customer');
		$this->data['text_products'] = $this->language->get('text_products');
		$this->data['text_total'] = $this->language->get('text_total');
		$this->data['text_empty'] = $this->language->get('text_empty');

		$this->data['button_view'] = $this->language->get('button_view');
		$this->data['button_reorder'] = $this->language->get('button_reorder');
		$this->data['button_continue'] = $this->language->get('button_continue');
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		
		$this->data['orders'] = array();
		
		$order_total = $this->model_account_order->getTotalOrders();
		
		$results = $this->model_account_order->getOrders(($page - 1) * $paginationLimit, $paginationLimit);
	//	echo "<pre>";print_r($results);
		foreach ($results as $result) {
			$product_total = $this->model_account_order->getTotalOrderProductsByOrderId($result['order_id']);
			$voucher_total = $this->model_account_order->getTotalOrderVouchersByOrderId($result['order_id']);
			$order_payment_status = $this->model_account_order->getOrderPaymentStatusByOrderId($result['order_id']);
			
			

			$this->data['orders'][] = array(
				'order_id'   => $result['order_id'],
				'payment_method'=>$result['payment_method'],
				'name'       => $result['firstname'] . ' ' . $result['lastname'],
				'status'     => $result['status'],
				'order_payment_status'=>$order_payment_status,
				'date_added' => date($this->language->get('date_format_short'), strtotime($result['date_added'])),
				'products'   => ($product_total + $voucher_total),
				'total'      => $this->currency->format($result['total'], $result['currency_code'], $result['currency_value']),
				'href'       => $this->url->link('account/order/info', 'order_id=' . $result['order_id'], 'SSL'),
				'reorder'    => $this->url->link('account/order', 'order_id=' . $result['order_id'], 'SSL')
			);
		}
		//echo "<pre>";print_r($this->data['orders']);
		
		$this->data['showPagination'] = 0;
		if($order_total/$paginationLimit > 1)
		{
			$this->data['showPagination'] = 1;
		}
		
		$pagination = new Pagination();
		$pagination->total = $order_total;
		$pagination->page = $page;
		$pagination->limit = $paginationLimit;
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('account/order', 'page={page}', 'SSL');
		
		$this->data['pagination'] = $pagination->render();
			if (isset($this->session->data['success'])) {
    		$this->data['success'] = "Payment Confirmed!";
    
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$this->data['continue'] = $this->url->link('account/account', '', 'SSL');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/order_list.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/order_list.tpl';
		} else {
			$this->template = 'default/template/account/order_list.tpl';
		}
		
		$this->children = array(
			'account/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'	
		);
						
		$this->response->setOutput($this->render());				
	}
	
	public function info() { 
		$this->language->load('account/order');
		$this->language->load('checkout/checkout');
			$this->language->load('checkout/cart');
		
		if (isset($this->request->get['order_id'])) {
			$order_id = $this->request->get['order_id'];
		} else {
			$order_id = 0;
		}	
		
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/order/info', 'order_id=' . $order_id, 'SSL');
			
			$this->redirect($this->url->link('account/login_register', '', 'SSL'));
    	}
						
		$this->load->model('account/order');
			$this->load->model('catalog/product');
			//	$this->load->model('vendor/vendor');
			$orderDetails =  $this->model_account_order->getOrder($order_id);
			
			//--------- if login customer is different from the customer order product redirecting to order page
		
			if($this->customer->getId() != $orderDetails['customer_id'])
			{
				$this->redirect($this->url->link('account/order', '', 'SSL'));
			}
				
			
			$orderProducts =  $this->model_account_order->getOrderProductsNoUpsell($this->request->get['order_id']);
			
			$additionalProducts = $this->model_account_order->getOrderUpsellProducts($order_id);
			//echo "<pre>"; print_r($orderDetails);
			//echo "<pre>"; print_r($orderProducts);
			//echo "<pre>"; print_r($additionalProducts);
			$this->data['orderDetails'] = $orderDetails;
			$this->data['orderProducts'] = $orderProducts;
		
			$this->data['additionalProducts'] = $additionalProducts;
			
			
			
		
			
			$additionalProductPrice = 0;
			foreach($additionalProducts AS $additionalProduct)
			{
				$additionalProductPrice += $additionalProduct['total'];
			}
			
			
			$this->data['additionalProductPrice'] = $additionalProductPrice;
			
	
			// Totals
			$this->load->model('setting/extension');
			
			$total_data = array();					
			$total = 0;
			$taxes = $this->cart->getTaxes();
			
			// Display prices
			if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
				$sort_order = array(); 
				
				$results = $this->model_setting_extension->getExtensions('total');
				
				foreach ($results as $key => $value) {
					$sort_order[$key] = $this->config->get($value['code'] . '_sort_order');
				}
				
				array_multisort($sort_order, SORT_ASC, $results);
				
				foreach ($results as $result) {
					if ($this->config->get($result['code'] . '_status')) {
						$this->load->model('total/' . $result['code']);
			
						$this->{'model_total_' . $result['code']}->getTotal($total_data, $total, $taxes);
					}
					
					$sort_order = array(); 
				  
					foreach ($total_data as $key => $value) {
						$sort_order[$key] = $value['sort_order'];
					}
		
					array_multisort($sort_order, SORT_ASC, $total_data);			
				}
			}
	$this->data['totals'] = $this->model_account_order->getOrderTotals($this->request->get['order_id']);
		//	$this->data['totals'] = $total_data;
			//echo "<pre>"; print_r($this->data['totals']);
			
			
			
			$this->document->setTitle($this->language->get('text_order'));
			
      		$this->data['heading_title'] = $this->language->get('text_order');

      		$this->data['text_error'] = $this->language->get('text_error');

      		$this->data['button_continue'] = $this->language->get('button_continue');
			
			$this->data['breadcrumbs'] = array();

			$this->data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_home'),
				'href'      => $this->url->link('common/home'),
				'separator' => false
			);
			
			$this->data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_account'),
				'href'      => $this->url->link('account/account', '', 'SSL'),
				'separator' => $this->language->get('text_separator')
			);

			$this->data['breadcrumbs'][] = array(
				'text'      => $this->language->get('heading_title'),
				'href'      => $this->url->link('account/order', '', 'SSL'),
				'separator' => $this->language->get('text_separator')
			);
			
			$this->data['breadcrumbs'][] = array(
				'text'      => $this->language->get('text_order'),
				'href'      => $this->url->link('account/order/info', 'order_id=' . $order_id, 'SSL'),
				'separator' => $this->language->get('text_separator')
			);
												
      		$this->data['continue'] = $this->url->link('account/order', '', 'SSL');
			$this->data['processOrderAction'] = $this->url->link('account/pendinglist/processOrder', '', 'SSL');
			 			
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/order_info.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/account/order_info.tpl';
			} else {
				$this->template = 'default/template/account/order_info.tpl';
			}
			
			$this->children = array(
				'account/column_left',
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
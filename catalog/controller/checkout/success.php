<?php
class ControllerCheckoutSuccess extends Controller { 
	public function index() { 
	
	
		if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('checkout/success', '', 'SSL');
	  
	  		$this->redirect($this->url->link('account/login_register', '', 'SSL'));
    	}
		$this->load->model('checkout/order');
		$orders = array();
		if(isset($this->session->data['ordersId']))
		{
			$orders = $this->session->data['ordersId'];
		}
		else
		{
			$this->redirect($this->url->link('common/home', '', 'SSL'));
		}
		
		$count = 0;
		$completeTotal = 0;
		foreach($orders AS $orderId)
		{
			$this->data['orders'][$count]['order_id'] = $orderId;
			
			$this->data['orders'][$count]['total'] = $this->model_checkout_order->getOrderTotal($orderId);
			$completeTotal += $this->data['orders'][$count]['total'];
			$this->data['orders'][$count]['payment_method'] = $this->model_checkout_order->getPaymentMethod($orderId);
			
			if (isset($orderId)) {
				$this->cart->clear();
			}
			$count++;	
		}
		$this->data['completeTotal'] = $completeTotal;
		unset($this->session->data['shipping_method']);
		unset($this->session->data['shipping_methods']);
		unset($this->session->data['payment_method']);
		unset($this->session->data['payment_methods']);
		unset($this->session->data['guest']);
		unset($this->session->data['comment']);
		unset($this->session->data['orders']);	
		unset($this->session->data['ordersId']);	
		
		unset($this->session->data['coupon']);
		unset($this->session->data['reward']);
		unset($this->session->data['voucher']);
		unset($this->session->data['vouchers']);
		unset($this->session->data['delivery_date']);
		unset($this->session->data['date_available']);
		unset($this->session->data['hideSender']);
										   
		$this->language->load('checkout/success');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->data['breadcrumbs'] = array(); 

      	$this->data['breadcrumbs'][] = array(
        	'href'      => $this->url->link('common/home'),
        	'text'      => $this->language->get('text_home'),
        	'separator' => false
      	); 
		
      	$this->data['breadcrumbs'][] = array(
        	'href'      => $this->url->link('checkout/cart'),
        	'text'      => $this->language->get('text_basket'),
        	'separator' => $this->language->get('text_separator')
      	);
				
		$this->data['breadcrumbs'][] = array(
			'href'      => $this->url->link('checkout/checkout', '', 'SSL'),
			'text'      => $this->language->get('text_checkout'),
			'separator' => $this->language->get('text_separator')
		);	
					
      	$this->data['breadcrumbs'][] = array(
        	'href'      => $this->url->link('checkout/success'),
        	'text'      => $this->language->get('text_success'),
        	'separator' => $this->language->get('text_separator')
      	);

		$this->data['heading_title'] = $this->language->get('heading_title');
		
		if ($this->customer->isLogged()) {
    		$this->data['text_message'] = $this->language->get('text_customer');
			$this->data['text_end'] = $this->language->get('text_end');
    		//$this->data['text_message'] = sprintf($this->language->get('text_guest'), $this->url->link('information/contact'));
		}
		
    	$this->data['button_continue'] = $this->language->get('button_continue');

    	$this->data['continue'] = $this->url->link('common/home');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success_payment.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/success_payment.tpl';
		} else {
			$this->template = 'default/template/common/success_payment.tpl';
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
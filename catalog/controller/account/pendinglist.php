<?php
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#auther: Gaurav patil
#data: 18 June 2013
*/
class ControllerAccountPendinglist extends Controller {

/*
function to get vendor Order listing
@params NULL
@return NULL
*/ 	private $error = array();
	public function index() {
		//----------checking if vendor is login or not
		if (!$this->customer->isLogged()) {
      		$this->session->data['redirect'] = $this->url->link('account/order', '', 'SSL');

	  		$this->redirect($this->url->link('account/login_register', '', 'SSL'));
    	}	
		$paginationLimit = 8;
	$this->language->load('account/order');
		
		$this->load->model('account/order');
 		

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
		
		//---- Initiallising variables
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['column_date_added'] = $this->language->get('column_date_added');
		$this->data['column_description'] = $this->language->get('column_description');
		$this->data['column_amount'] = sprintf($this->language->get('column_amount'), $this->config->get('config_currency'));
		
		$this->data['text_balance'] = $this->language->get('text_balance');
		$this->data['text_empty'] = $this->language->get('text_empty');
		
		$this->data['button_continue'] = $this->language->get('button_continue');
		$this->data['link_view_order'] = $this->url->link('vendor/view_order&frm=pending', '', 'SSL');
		
				
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}		
		
		$this->load->model('vendor/vendor');
		$this->data['pendinglists'] = array();		
		
		$data = array(				  
			'sort'  => 'os.order_status_id DESC, order_id',
			'order' => 'DESC',
			'start' => ($page - 1) * $paginationLimit,
			'limit' => $paginationLimit
		);
		//----------- Getting aproved orders
		$order_pending_total = $this->model_vendor_vendor->getTotalPendingOrders();
		$this->data['pendinglists'] = $this->model_vendor_vendor->getPendingOrders($data); 
		
		$this->data['showPagination'] = 0;
		if($order_pending_total/$paginationLimit > 1)
		{
			$this->data['showPagination'] = 1;
		}
		
		//-------Pagination
		$pagination = new Pagination();
		$pagination->total = $order_pending_total;
		$pagination->page = $page;
		$pagination->limit = $paginationLimit;
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('vendor/pendinglist', 'page={page}', 'SSL');
		
		$this->data['pagination'] = $pagination->render();
		
		
		if (isset($this->session->data['success'])) {
    		$this->data['success'] = $this->session->data['success'];
    
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		// ------------ Getting region name---------------

		$vendorZone = $this->model_vendor_vendor->getRegion($this->vendor->getId());
		$this->data['region'] = $vendorZone.' Regions';
		
		$this->data['processOrderAction'] = $this->url->link('vendor/pendinglist/processOrder', '', 'SSL');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/vendor/pendinglist.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/vendor/pendinglist.tpl';
		} else {
			$this->template = 'default/template/vendor/pendinglist.tpl';
		}
		
	$this->children = array(
			'vendor/column_left',
			'common/footer',
			'vendor/header'	
		);
						
		$this->response->setOutput($this->render());		
	} 	
									
	public function processOrder()
	{
		if (!$this->customer->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('account/account', '', 'SSL');
	  
	  		$this->redirect($this->url->link('account/login_register', '', 'SSL'));
    	} 
		$data = array(
		'order_id'  => $this->request->get['order_id'],
		
		);
		
		
		$this->load->model('account/order');
		if ((isset($this->request->post['submit'])) && $this->validateForm()) {
			
				
			$this->model_account_order->processOrderPayment($this->request->post);
			
      		$this->session->data['success'] = $this->language->get('text_insert');

	  		$this->redirect($this->url->link('account/order', '', 'SSL'));
    	} 
	  	
		$this->getInsertForm();
	}
	
	//---added by sheetal godase on 21st june 2013 to create seperate getform() for insert function
	
		protected function validateForm() {
			
			$this->language->load('account/order');
			$order_id=$this->request->get['order_id'];
    	if ($this->request->post['payment_to']=='')  {
      		$this->error['payment_to'] = $this->language->get('error_payment_to');
    	}
		
		if ($this->request->post['payment_from']=='')  {
      		$this->error['payment_from'] = $this->language->get('error_payment_from');
    	}
		if ($this->request->post['account_name']=='')  {
      		$this->error['account_name'] = $this->language->get('error_account_name');
    	}
		
		
		$orderDetails =  $this->model_account_order->getOrder($order_id);
	//	echo "<pre>"; print_r($orderDetails); die();
		if ($this->request->post['total_amount']=='' ) {
      		$this->error['total_amount'] = $this->language->get('error_total_amount');
    	}
		else if($this->request->post['total_amount']< $orderDetails['total'] || $this->request->post['total_amount']> $orderDetails['total'])
		$this->error['total_amount_less'] = $this->language->get('error_total_amount_less');

    	if ($this->request->post['payment_date'] == '') {
      		$this->error['payment_date'] = $this->language->get('error_payment_date');
    	}
		
		
    	if (!$this->error) {
      		return true;
		} else {
      		return false;
    	}
  	}
	
	
	
	
		protected function getInsertForm() {
			
      	$this->data['breadcrumbs'] = array();
		$this->language->load('account/order');

		$this->data['order_id'] =$this->request->get['order_id'];
		$order_id=$this->request->get['order_id'];
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
		
		
						
    	$this->data['heading_title'] = $this->language->get('heading_title');
    	
		
		
	
		$this->data['text_select'] = $this->language->get('text_select');
		$this->data['text_none'] = $this->language->get('text_none');
		
    	

    	
		if (isset($this->error['payment_to'])) {
    		$this->data['error_payment_to'] = $this->error['payment_to'];
		} else {
			$this->data['error_payment_to'] = '';
		}
		
		if (isset($this->error['payment_from'])) {
    		$this->data['error_payment_from'] = $this->error['payment_from'];
		} else {
			$this->data['error_payment_from'] = '';
		}
		if (isset($this->error['account_name'])) {
    		$this->data['error_account_name'] = $this->error['account_name'];
		} else {
			$this->data['error_account_name'] = '';
		}
		
  		$orderDetails =  $this->model_account_order->getOrder($order_id);
		
		//--------- if login customer is different from the customer order product redirecting to order page		
		if($this->customer->getId() != $orderDetails['customer_id'])
		{
			$this->redirect($this->url->link('account/order', '', 'SSL'));
		}
						
		if (isset($this->error['total_amount'])) {
    		$this->data['error_total_amount'] = $this->error['total_amount'];
		} else {
			$this->data['error_total_amount'] = '';
		}
		if (isset($this->error['total_amount_less'])) {
    		$this->data['error_total_amount_less'] = $this->error['total_amount_less'];
		} else {
			$this->data['error_total_amount_less'] = '';
		}
		
		if (isset($this->error['payment_date'])) {
    		$this->data['error_payment_date'] = $this->error['payment_date'];
		} else {
			$this->data['error_payment_date'] = '';
		}
		
	
    	$this->data['action'] =$this->url->link('account/pendinglist/processOrder&order_id='.$order_id, '', 'SSL');
	
    	if (isset($this->request->post['payment_to'])) {
      		$this->data['payment_to'] = $this->request->post['payment_to'];
    	} else {
			$this->data['payment_to'] = '';
		}
		
		
		if (isset($this->request->post['payment_from'])) {
      		$this->data['payment_from'] = $this->request->post['payment_from'];
    	} else {
			$this->data['payment_from'] = $orderDetails['firstname'].' '.$orderDetails['lastname'];
		}
		
		if (isset($this->request->post['account_name'])) {
      		$this->data['account_name'] = $this->request->post['account_name'];
    	} else {
			$this->data['account_name'] = '';
		}
		
		if (isset($this->request->post['total_amount'])) {
      		$this->data['total_amount'] = $this->request->post['total_amount'];
    	} else {
			$this->data['total_amount'] = $orderDetails['total'];
		}
		
		if (isset($this->request->post['payment_date'])) {
      		$this->data['payment_date'] = $this->request->post['payment_date'];
    	} else {
			$this->data['payment_date'] = '';
		}
		
		
		
		
		
		$this->data['back'] = $this->url->link('account/address', '', 'SSL');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/confirm_payment_form.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/confirm_payment_form.tpl';
		} else {
			$this->template = 'default/template/account/confirm_payment_form.tpl';
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
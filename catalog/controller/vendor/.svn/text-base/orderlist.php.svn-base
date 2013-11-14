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
#data: 11 June 2013
*/
class ControllerVendorOrderlist extends Controller {

/*
function to get vendor Order listing
@params NULL
@return NULL
*/ 	
	public function index() {
		//----------checking if vendor is login or not
		if (!$this->vendor->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('vendor/account', '', 'SSL');
			
	  		$this->redirect($this->url->link('vendor/login', '', 'SSL'));
    	}		
		$paginationLimit = 8;
		
		$this->language->load('vendor/account');

		$this->document->setTitle($this->language->get('heading_title'));

      	$this->data['breadcrumbs'] = array();

      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	); 

      	$this->data['breadcrumbs'][] = array(       	
        	'text'      => $this->language->get('text_account'),
			'href'      => $this->url->link('vendor/account', '', 'SSL'),
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
		$this->data['link_view_order'] = $this->url->link('vendor/view_order&frm=orderlist', '', 'SSL');
		
				
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}		
		
		$this->load->model('vendor/vendor');
		$this->data['orderlists'] = array();		
		
		$data = array(				  
			'sort'  => 'os.order_status_id, order_id',
			'order' => 'DESC',
			'start' => ($page - 1) * $paginationLimit,
			'limit' => $paginationLimit
		);
		//----------- Getting aproved orders 
		$order_approve_total = $this->model_vendor_vendor->getTotalApprovedOrders();
		$this->data['orderlists'] = $this->model_vendor_vendor->getApprovedOrders($data); 
		$this->data['showPagination'] = 0;
		if($order_approve_total/$paginationLimit > 1)
		{
			$this->data['showPagination'] = 1;
		}
		
		
		//-------Pagination
		$pagination = new Pagination();
		$pagination->total = $order_approve_total;
		$pagination->page = $page;
		$pagination->limit = $paginationLimit;
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('vendor/orderlist', 'page={page}', 'SSL');
		
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
		$this->data['acceptOrderAction'] = $this->url->link('vendor/orderlist/acceptOrder', '', 'SSL');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/vendor/orderlist.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/vendor/orderlist.tpl';
		} else {
			$this->template = 'default/template/vendor/orderlist.tpl';
		}
		
	$this->children = array(
			'vendor/column_left',
			'common/footer',
			'vendor/header'	
		);
						
		$this->response->setOutput($this->render());		
	} 	
									
	public function acceptOrder()
	{
		$data = array(
		'order_id'  => $this->request->post['order_id'],
		'vendor_id' => $this->vendor->getId()
		);
		$this->load->model('vendor/vendor');
		$this->model_vendor_vendor->acceptOrder($data); 
		$this->session->data['success'] = 'Order has been accepted successfully.';
		$this->redirect($this->url->link('vendor/orderlist', '', 'SSL'));
	}									
}
?>
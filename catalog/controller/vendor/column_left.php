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
class ControllerVendorColumnLeft extends Controller {
	
/*
function to get vendor page left side panel
@params NULL
@return NULL
*/ 	
	protected function index() {
		$this->load->model('design/layout');
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		$this->load->model('catalog/information');		
		
		//------- variable initiallisation
    	$this->data['text_my_account'] = $this->language->get('text_my_account');
    	$this->data['text_my_tracking'] = $this->language->get('text_my_tracking');
		$this->data['text_my_transactions'] = $this->language->get('text_my_transactions');
		$this->data['text_password'] = $this->language->get('text_password');
		$this->data['text_payment'] = $this->language->get('text_payment');
		$this->data['text_tracking'] = $this->language->get('text_tracking');
		$this->data['text_transaction'] = $this->language->get('text_transaction');
		
		$this->data['text_profile'] = $this->language->get('text_profile');
		$this->data['text_orderlist'] = $this->language->get('text_orderlist');
		$this->data['text_orderpending'] = $this->language->get('text_orderpending');
		$this->data['text_ordershipped'] = $this->language->get('text_ordershipped');
		$this->data['text_salesdashboard'] = $this->language->get('text_salesdashboard');
		$this->data['text_signout'] = $this->language->get('text_signout');
		
		if (isset($this->session->data['success'])) {
    		$this->data['success'] = $this->session->data['success'];
			
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		
		//------------ Link initiallisation
    	$this->data['view'] = $this->url->link('vendor/account', '', 'SSL');
		$this->data['edit'] = $this->url->link('vendor/edit', '', 'SSL');
		$this->data['orderlist'] = $this->url->link('vendor/orderlist', '', 'SSL');
		$this->data['orderpending'] = $this->url->link('vendor/pendinglist', '', 'SSL');
		$this->data['ordershipped'] = $this->url->link('vendor/shippinglist', '', 'SSL');
		$this->data['salesdashboard'] = $this->url->link('vendor/sales_dashboard', '', 'SSL');
		//$this->data['view_order'] = $this->url->link('vendor/view_order', '', 'SSL');
		$this->data['signout'] = $this->url->link('vendor/logout', '', 'SSL');	
		
		$this->data['password'] = $this->url->link('vendor/password', '', 'SSL');
		$this->data['payment'] = $this->url->link('vendor/payment', '', 'SSL');
		$this->data['tracking'] = $this->url->link('vendor/tracking', '', 'SSL');
    	$this->data['transaction'] = $this->url->link('vendor/transaction', '', 'SSL');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/vendor/column_left.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/vendor/column_left.tpl';
		} else {
			$this->template = 'default/template/common/column_left.tpl';
		}
								
		$this->render();
	}
}
?>
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
#data: 17 June 2013
*/
class ControllerAccountColumnLeft extends Controller {
	
/*
function to get account page left side panel
@params NULL
@return NULL
*/ 	
	protected function index() {
		
		$this->load->language('account/column_left');		
		
		//------- variable initiallisation
		$this->data['text_my_account'] = $this->language->get('text_my_account');
    	$this->data['text_view'] = $this->language->get('text_view');
    	$this->data['text_edit'] = $this->language->get('text_edit');
    	$this->data['text_password'] = $this->language->get('text_password');
		$this->data['text_order'] = $this->language->get('text_order');
    	$this->data['text_address'] = $this->language->get('text_address');
		$this->data['text_logout'] = $this->language->get('text_logout');
		
		if (isset($this->session->data['success'])) {
    		$this->data['success'] = $this->session->data['success'];
			
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}
		
		//------------ Link initiallisation
    	$this->data['view'] = $this->url->link('account/account', '', 'SSL');
		
    	$this->data['edit'] = $this->url->link('account/edit', '', 'SSL');
    	$this->data['password'] = $this->url->link('account/password', '', 'SSL');
		$this->data['address'] = $this->url->link('account/address', '', 'SSL');
		$this->data['order'] = $this->url->link('account/order', '', 'SSL');
		$this->data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
		$this->data['logout'] =$this->url->link('account/logout', '', 'SSL');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/column_left.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/account/column_left.tpl';
		} else {
			$this->template = 'default/template/common/column_left.tpl';
		}
								
		$this->render();
	}
}
?>
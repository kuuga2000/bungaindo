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
#data: 1 June 2013
*/

class ControllerVendorList extends Controller {   
	public function index() {
		
		$this->language->load('vendor/list');
		$this->load->model('vendor/vendor');
		
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_vendor'),
			'href'      => $this->url->link('vendor/list', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['button_add'] = $this->language->get('button_add');
		$this->data['button_delete'] = $this->language->get('button_delete');
		$this->data['success'] = '';
		$this->data['addvendor'] = $this->url->link('vendor/add', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['deleteFormAction'] = $this->url->link('vendor/list', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['editFormAction'] = $this->url->link('vendor/add/edit', 'token=' . $this->session->data['token'], 'SSL');
		if(isset($this->session->data['success']) && $this->session->data['success'] != '')
		{
			$this->data['success'] = $this->session->data['success'];
			$this->session->data['success'] ='';
		}
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && isset($this->request->post['selected']))
		{
			$vendorsArr = 	$this->request->post['selected'];
			foreach($vendorsArr As $vendorId)
			{
				$this->model_vendor_vendor->deleteVendor($vendorId);
			}	
			$this->data['success'] = $this->language->get('vendor_delete_success');	
		}
		$vendors = $this->model_vendor_vendor->getAllVendors();
		$this->data['vendors'] = array();
		foreach($vendors as $vendor)
		{
			
			$this->data['vendors'][] = array(
			'vendor_id' => $vendor['vendor_id'],
			'firstname' => $vendor['firstname'],
			'lastname' => $vendor['lastname'],
			'email' => $vendor['email']
			);
		}
		
		$this->data['column_name'] = $this->language->get('column_name');;
		$this->data['column_email'] = $this->language->get('column_email');;
		$this->data['column_action'] = $this->language->get('column_action');;
		$this->template = 'vendor/list.tpl';
		$this->children = array(
				'common/header',
				'common/footer'
			);
    	$this->response->setOutput($this->render());
  	}
}
?>
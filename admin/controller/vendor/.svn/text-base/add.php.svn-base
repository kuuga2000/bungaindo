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

class ControllerVendorAdd extends Controller {   
	private $error = array();
	public function index() {
		
		$this->language->load('vendor/add');
		$this->load->model('vendor/vendor');
		
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_vendor'),
			'href'      => $this->url->link('vendor/list', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);
		//variable declarations
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		
		$this->data['entry_first_name'] = $this->language->get('entry_first_name');
		$this->data['entry_last_name'] = $this->language->get('entry_last_name');
		$this->data['entry_email'] = $this->language->get('entry_email');
		$this->data['entry_password'] = $this->language->get('entry_password');
		$this->data['entry_shop_name'] = $this->language->get('entry_shop_name');
		$this->data['entry_address'] = $this->language->get('entry_address');
		$this->data['entry_country'] = $this->language->get('entry_country');
		$this->data['entry_select_country'] = $this->language->get('entry_select_country');
		$this->data['entry_zone'] = $this->language->get('entry_zone');
		$this->data['entry_select_select'] = $this->language->get('entry_select_select');
		$this->data['entry_city'] = $this->language->get('entry_city');
		$this->data['entry_zip_code'] = $this->language->get('entry_zip_code');
		$this->data['entry_mobile'] = $this->language->get('entry_mobile');
		$this->data['entry_telephone'] = $this->language->get('entry_telephone');
		$this->data['entry_fax'] = $this->language->get('entry_fax');
		$this->data['entry_website'] = $this->language->get('entry_website');
		
		$this->data['text_none'] = $this->language->get('text_none');
		$this->data['token'] = $this->session->data['token'];
		
		$this->getForm();
		
		$this->data['select_country'] = '';	
		$this->data['select_select'] = '';

		$this->data['action'] = $this->url->link('vendor/add', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('vendor/list', 'token=' . $this->session->data['token'], 'SSL');
		
		//check validations
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) 
		{
			$this->model_vendor_vendor->addVendor($this->request->post);
			$this->session->data['success'] = $this->language->get('text_success');
			$this->redirect($this->url->link('vendor/list', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
		$this->setErrorMessages();
		$this->load->model('localisation/country');
		
    	$this->data['countries'] = $this->model_localisation_country->getCountries();
		
		
		$this->template = 'vendor/add.tpl';
		$this->children = array(
				'common/header',
				'common/footer'
			);
			
    	$this->response->setOutput($this->render());
  	}	
	
	
	public function edit(){
		
		$this->language->load('vendor/add');
		$this->load->model('vendor/vendor');
		
		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_vendor'),
			'href'      => $this->url->link('vendor/list', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);
		
		$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		
		$this->data['entry_first_name'] = $this->language->get('entry_first_name');
		$this->data['entry_last_name'] = $this->language->get('entry_last_name');
		$this->data['entry_email'] = $this->language->get('entry_email');
		$this->data['entry_password'] = $this->language->get('entry_password');
		$this->data['entry_shop_name'] = $this->language->get('entry_shop_name');
		$this->data['entry_address'] = $this->language->get('entry_address');
		$this->data['entry_country'] = $this->language->get('entry_country');
		$this->data['entry_select_country'] = $this->language->get('entry_select_country');
		$this->data['entry_zone'] = $this->language->get('entry_zone');
		$this->data['entry_select_select'] = $this->language->get('entry_select_select');
		$this->data['entry_city'] = $this->language->get('entry_city');
		$this->data['entry_zip_code'] = $this->language->get('entry_zip_code');
		$this->data['entry_mobile'] = $this->language->get('entry_mobile');
		$this->data['entry_telephone'] = $this->language->get('entry_telephone');
		$this->data['entry_fax'] = $this->language->get('entry_fax');
		$this->data['entry_website'] = $this->language->get('entry_website');
		
		$this->data['text_none'] = $this->language->get('text_none');
		$this->data['token'] = $this->session->data['token'];
		
		$this->data['select_country'] = '';	
		$this->data['select_select'] = '';
		
		$this->data['action'] = $this->url->link('vendor/add/edit', 'token=' . $this->session->data['token'], 'SSL');
		$this->data['cancel'] = $this->url->link('vendor/list', 'token=' . $this->session->data['token'], 'SSL');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST')) 
		{
			$this->getForm();
			if($this->validateForm('edit'))
			{
				$this->model_vendor_vendor->updateVendor($this->request->post);
				$this->session->data['success'] = $this->language->get('text_updated_success');
				$this->redirect($this->url->link('vendor/list', 'token=' . $this->session->data['token'], 'SSL'));
			}
		}
		else
		{
			$vendorDetails = $this->model_vendor_vendor->getVendor($this->request->get['vendor_id']);
		
			foreach($vendorDetails AS $vendorDetail)
			{
				$this->data['firstname'] = $vendorDetail['firstname'];					
				$this->data['lastname'] = $vendorDetail['lastname']; 					
				$this->data['email'] = $vendorDetail['email']; 					
				$this->data['shopname'] = $vendorDetail['shopname']; 					
				$this->data['address'] = $vendorDetail['address']; 					
				$this->data['country_id'] = $vendorDetail['country_id']; 					
				$this->data['zone_id'] = $vendorDetail['zone_id'];					
				$this->data['city'] = $vendorDetail['city'];					
				$this->data['zip_code'] = $vendorDetail['zip_code'];					
				$this->data['mobile_number'] = $vendorDetail['mobile_number'];					
				$this->data['telephone'] = $vendorDetail['telephone']; 				
				$this->data['fax'] = $vendorDetail['fax'];				
				$this->data['website'] = $vendorDetail['website'];
				$this->data['vendor_id'] = $this->request->get['vendor_id'];
			}		
			
		}
		
		$this->setErrorMessages();
		
		$this->load->model('localisation/country');
		
    	$this->data['countries'] = $this->model_localisation_country->getCountries();
		
		
		$this->template = 'vendor/edit.tpl';
		$this->children = array(
				'common/header',
				'common/footer'
			);
			
    	$this->response->setOutput($this->render());
		
	}
	protected function validateForm($page = 'add') {
		
		if (!$this->user->hasPermission('modify', 'user/user')) {
      		$this->error['warning'] = $this->language->get('error_permission');
    	}
		
		if ((utf8_strlen($this->request->post['firstname']) < 1) || (utf8_strlen($this->request->post['firstname']) > 32)) {
			$this->error['error_first_name'] = $this->language->get('error_first_name');
    	}
		
		if ((utf8_strlen($this->request->post['lastname']) < 1) || (utf8_strlen($this->request->post['lastname']) > 32))   {
			$this->error['error_last_name'] = $this->language->get('error_last_name');
    	}
		
		if ((utf8_strlen($this->request->post['email']) > 96) || !preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $this->request->post['email'])) {
			$this->error['error_email'] = $this->language->get('error_invalid_email');
		}
		if($this->request->post['email'] == '' || utf8_strlen($this->request->post['email']) < 1 )
		{
			$this->error['error_email'] = $this->language->get('error_email');
		}

		 //--------------- checking duplicate email -----------------------------------
		 if($page == 'add')
		 {
		 	if(!isset($this->error['error_email']))
			{
				$checkDuplicate = $this->model_vendor_vendor->checkEmail($this->request->post['email']);	
				if($checkDuplicate['cnt'] > 0)
				{
					$this->error['error_email'] = $this->language->get('error_duplicate_email');
				}
			}
			if ($this->request->post['password'] == '') {
	      		$this->error['error_password'] = $this->language->get('error_password');
	    	}
		 }
		
    	if ($this->request->post['country_id'] == '') {
      		$this->error['error_country'] = $this->language->get('error_country');
    	}
		
    	if (!isset($this->request->post['zone_id']) || $this->request->post['zone_id'] == '' || $this->request->post['zone_id'] == 0) {
      		$this->error['error_zone'] = $this->language->get('error_zone');
    	}
		
		if($this->request->post['city'] == '')
		{
			$this->error['error_city'] = $this->language->get('error_city');
		}
		
		if($this->request->post['zip_code'] == '')
		{
			$this->error['error_zip_code'] = $this->language->get('error_zip_code');
		}
		
		if (!$this->error) {
      		return true;
    	} else {
      		return false;
    	}
	}
	
	/**
	* purpose of funcion
	* @return null
	* @param null
	*/
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
		
		$this->response->setOutput(json_encode($json));
	}

	public function getForm()
	{
		if(isset($this->request->post['firstname']))
		{
			$this->data['firstname'] = $this->request->post['firstname'];
		}
		else
		{
			$this->data['firstname'] = '';
		}
		
		if(isset($this->request->post['lastname']))
		{
			$this->data['lastname'] = $this->request->post['lastname'];
		}
		else
		{
			$this->data['lastname'] = ''; 
		}
		
		if(isset($this->request->post['email']))
		{
			$this->data['email'] = $this->request->post['email'];
		}
		else
		{
			$this->data['email'] = ''; 
		}
		
		if(isset($this->request->post['shopname']))
		{
			$this->data['shopname'] = $this->request->post['shopname'];
		}
		else
		{
			$this->data['shopname'] = ''; 
		}
		
		if(isset($this->request->post['address']))
		{
			$this->data['address'] = $this->request->post['address'];
		}
		else
		{
			$this->data['address'] = ''; 
		}
		
		if(isset($this->request->post['country_id']))
		{
			$this->data['country_id'] = $this->request->post['country_id'];
		}
		else
		{
			$this->data['country_id'] = ''; 
		}
		
		if(isset($this->request->post['zone_id']))
		{
			$this->data['zone_id'] = $this->request->post['zone_id'];
		}
		else
		{
			$this->data['zone_id'] = '';
		}
		
		if(isset($this->request->post['city']))
		{
			$this->data['city'] = $this->request->post['city'];
		}
		else
		{
			$this->data['city'] = '';
		}
		
		if(isset($this->request->post['zip_code']))
		{
			$this->data['zip_code'] = $this->request->post['zip_code'];
		}
		else
		{
			$this->data['zip_code'] = '';
		}
		
		if(isset($this->request->post['mobile_number']))
		{
			$this->data['mobile_number'] = $this->request->post['mobile_number'];
		}
		else
		{
			$this->data['mobile_number'] = '';
		}
		
		if(isset($this->request->post['telephone']))
		{
			$this->data['telephone'] = $this->request->post['telephone'];
		}
		else
		{
			$this->data['telephone'] = ''; 
		}
		
		if(isset($this->request->post['fax']))
		{
			$this->data['fax'] = $this->request->post['fax'];
		}
		else
		{
			$this->data['fax'] = '';
		}
		
		if(isset($this->request->post['website']))
		{
			$this->data['website'] = $this->request->post['website'];
		}
		else
		{
			$this->data['website'] = '';
		}
	}	
		   
	public function setErrorMessages()
	{
		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->error['error_first_name'])) {
			$this->data['error_first_name'] = $this->error['error_first_name'];
		} else {
			$this->data['error_first_name'] = '';
		}
		
		if (isset($this->error['error_last_name'])) {
			$this->data['error_last_name'] = $this->error['error_last_name'];
		} else {
			$this->data['error_last_name'] = '';
		}
		
		if (isset($this->error['error_email'])) {
			$this->data['error_email'] = $this->error['error_email'];
		} else {
			$this->data['error_email'] = '';
		}
		if (isset($this->error['error_password'])) {
			$this->data['error_password'] = $this->error['error_password'];
		} else {
			$this->data['error_password'] = '';
		}
		
		
		if (isset($this->error['error_country'])) {
			$this->data['error_country'] = $this->error['error_country'];
		} else {
			$this->data['error_country'] = '';
		}
		
		if (isset($this->error['error_zone'])) {
			$this->data['error_zone'] = $this->error['error_zone'];
		} else {
			$this->data['error_zone'] = '';
		}
		
		if (isset($this->error['error_city'])) {
			$this->data['error_city'] = $this->error['error_city'];
		} else {
			$this->data['error_city'] = '';
		}
		
		if (isset($this->error['error_zip_code'])) {
			$this->data['error_zip_code'] = $this->error['error_zip_code'];
		} else {
			$this->data['error_zip_code'] = '';
		}
	}	   
}
?>
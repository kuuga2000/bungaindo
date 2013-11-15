<?php 
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#auther: Sheetal Godase
#data: 11 June 2013
*/
class ControllerVendorAccount extends Controller {
	
/*
function to display vendor dashboard page
@params NULL
@return NULL
*/  private $error = array();
	public function index() {
		//----------- checking if vendor is login or not
		if (!$this->vendor->isLogged()) {
	  		$this->session->data['redirect'] = $this->url->link('vendor/account', '', 'SSL');
	  
	  		$this->redirect($this->url->link('vendor/login', '', 'SSL'));
    	} 
	
		$this->language->load('vendor/account');
		$this->language->load('vendor/edit');
		$this->load->model('vendor/vendor');
		
		$this->load->model('localisation/country');
		
    	$this->data['countries'] = $this->model_localisation_country->getCountries();
		
		$this->data['text_select'] = $this->language->get('text_select');
		$this->data['text_none'] = $this->language->get('text_none');
		$this->data['text_your_details'] = $this->language->get('text_your_details');
    	$this->data['text_your_address'] = $this->language->get('text_your_address');

		$this->data['entry_firstname'] = $this->language->get('entry_firstname');
		$this->data['entry_lastname'] = $this->language->get('entry_lastname');
		$this->data['entry_password'] = $this->language->get('entry_password');
		$this->data['entry_confirm_password'] = $this->language->get('entry_confirm_password');
		$this->data['entry_email'] = $this->language->get('entry_email');
		$this->data['entry_telephone'] = $this->language->get('entry_telephone');
		$this->data['entry_mobile'] = $this->language->get('entry_mobile');
		$this->data['entry_shop_name'] = $this->language->get('entry_shop_name');
			$this->data['entry_fax'] = $this->language->get('entry_fax');
    	$this->data['entry_company'] = $this->language->get('entry_company');
		$this->data['entry_website'] = $this->language->get('entry_website');
    	$this->data['entry_address'] = $this->language->get('entry_address');
    	$this->data['entry_address_2'] = $this->language->get('entry_address_2');
    	$this->data['entry_zip_code'] = $this->language->get('entry_zip_code');
    	$this->data['entry_city'] = $this->language->get('entry_city');
    	$this->data['entry_country'] = $this->language->get('entry_country');
    	$this->data['entry_zone'] = $this->language->get('entry_zone');

		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_edit'] = $this->language->get('button_edit');
		
		
		
		
		$this->data['action'] = $this->url->link('vendor/edit', '', 'SSL');
		
				
		
		/*****************************************************************************/
		
		
		
		$vendor_info = $this->model_vendor_vendor->getVendor($this->vendor->getId());
	
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		}else {
			$this->data['success'] = '';
		}
		
		if (isset($this->request->post['firstname'])) {
			$this->data['firstname'] = $this->request->post['firstname'];
		} elseif (isset($vendor_info)) {
			$this->data['firstname'] = $vendor_info['firstname'];
		} else {
			$this->data['firstname'] = '';
		}

		if (isset($this->request->post['lastname'])) {
			$this->data['lastname'] = $this->request->post['lastname'];
		} elseif (isset($vendor_info)) {
			$this->data['lastname'] = $vendor_info['lastname'];
		} else {
			$this->data['lastname'] = '';
		}

		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} elseif (isset($vendor_info)) {
			$this->data['email'] = $vendor_info['email'];
		} else {
			$this->data['email'] = '';
		}
		
		if (isset($this->request->post['password'])) {
    		$this->data['password'] = $this->request->post['password'];
		}
		/*elseif (isset($vendor_info)) {
			$this->data['password'] = $vendor_info['password'];
		} */
		 else {
			$this->data['password'] = '';
		}
		
		if (isset($this->request->post['confirm_password'])) {
    		$this->data['confirm_password'] = $this->request->post['confirm_password'];
		} else {
			$this->data['confirm_password'] = '';
		}
		
		if (isset($this->request->post['shopname'])) {
			$this->data['shopname'] = $this->request->post['shopname'];
		} elseif (isset($vendor_info)) {
			$this->data['shopname'] = $vendor_info['shopname'];
		} else {
			$this->data['shopname'] = '';
		}
		
		if (isset($this->request->post['website'])) {
			$this->data['website'] = $this->request->post['website'];
		} elseif (isset($vendor_info)) {
			$this->data['website'] = $vendor_info['website'];
		} else {
			$this->data['website'] = '';
		}
	
		if (isset($this->request->post['address'])) {
			$this->data['address'] = $this->request->post['address'];
		} elseif (isset($vendor_info)) {
			$this->data['address'] = $vendor_info['address'];
		} else {
			$this->data['address'] = '';
		}
		
		if (isset($this->request->post['country_id'])) {
      		$this->data['country_id'] = $this->request->post['country_id'];
		} elseif (!empty($vendor_info)) {
			$this->data['country_id'] = $vendor_info['country_id'];			
		} else {	
      		$this->data['country_id'] = $this->config->get('config_country_id');
    	}
		
		$this->data['countryName'] = '';
		if($this->data['country_id'] != '')
		{
			$country = $this->model_localisation_country->getCountry($this->data['country_id']);
			
			if(isset($country['name']))
			{
				$this->data['countryName'] = $country['name'];
			}
		}
		
		
		if (isset($this->request->post['zone_id'])) {
      		$this->data['zone_id'] = $this->request->post['zone_id']; 	
		} elseif (!empty($vendor_info)) {
			$this->data['zone_id'] = $vendor_info['zone_id'];		
		} else {
      		$this->data['zone_id'] = '';
    	}
		
		$this->load->model('localisation/zone');
		$this->data['zoneName'] = '';
		if($this->data['zone_id'] != '')
		{
			$zoneArr = $this->model_localisation_zone->getZone($this->data['zone_id']);
			if(isset($zoneArr['name']))
			{
				$this->data['zoneName'] = $zoneArr['name'];
			}
		}
		
		
		if (isset($this->request->post['city'])) {
    		$this->data['city'] = $this->request->post['city'];
		} elseif (!empty($vendor_info)) {
			$this->data['city'] = $vendor_info['city'];		
		} else {
			$this->data['city'] = '';
		}
		
		if (isset($this->request->post['zip_code'])) {
    		$this->data['zip_code'] = $this->request->post['zip_code'];
		} elseif (!empty($vendor_info)) {
			$this->data['zip_code'] = $vendor_info['zip_code'];		
		} else {
			$this->data['zip_code'] = '';
		}
		
		if (isset($this->request->post['telephone'])) {
			$this->data['telephone'] = $this->request->post['telephone'];
		} elseif (!empty($vendor_info)) {
			$this->data['telephone'] = $vendor_info['telephone'];
		} else {
			$this->data['telephone'] = '';
		}

		if (isset($this->request->post['fax'])) {
			$this->data['fax'] = $this->request->post['fax'];
		} elseif (!empty($vendor_info)) {
			$this->data['fax'] = $vendor_info['fax'];
		} else {
			$this->data['fax'] = ''; 
		}
			
		if (isset($this->request->post['mobile_number'])) {
			$this->data['mobile_number'] = $this->request->post['mobile_number'];
		} elseif (!empty($vendor_info)) {
			$this->data['mobile_number'] = $vendor_info['mobile_number'];
		} else {
			$this->data['mobile_number'] = '';	
			
		}
		
		/****************************************************************************/
		
		/*****************************************************************************/
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

		$this->document->setTitle('Affiliate Account');
    	$this->data['heading_title'] = 'Affiliate Account';
		//$this->data['success'] = '';

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/vendor/account.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/vendor/account.tpl';
		} else {
			$this->template = 'default/template/vendor/account.tpl';
		}
		
		$this->children = array(
			'vendor/column_left',
			'common/footer',
			'vendor/header'	
		);
				
		$this->response->setOutput($this->render());		
  	}
	
	
	
	
	
	
	public function country() {
			$json = array();
			//die();
			
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
			
			//print_r($json); 
			
			$this->response->setOutput(json_encode($json));
		}	
	
}
?>
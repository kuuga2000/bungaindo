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
class ControllerVendorLogin extends Controller {
	private $error = array();

/*
function for displaying login form
@params NULL
@return NULL
*/
	public function index() {
		//$this->load->model('vendor');
		if ($this->vendor->isLogged()) {  
      		$this->redirect($this->url->link('vendor/account', '', 'SSL'));
    	}
	
    	$this->language->load('vendor/login');

    	$this->document->setTitle($this->language->get('heading_title')); 
		
		$this->load->model('vendor/vendor');
		
		//---------------validating form				
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && isset($this->request->post['email']) && isset($this->request->post['password']) && $this->validate()) {
			// Added strpos check to pass McAfee PCI compliance test (http://forum.opencart.com/viewtopic.php?f=10&t=12043&p=151494#p151295)
			if (isset($this->request->post['redirect']) && (strpos($this->request->post['redirect'], $this->config->get('config_url')) !== false || strpos($this->request->post['redirect'], $this->config->get('config_ssl')) !== false)) {
				$this->redirect(str_replace('&amp;', '&', $this->request->post['redirect']));
			} else {
				$this->redirect($this->url->link('vendor/account', '', 'SSL'));
			} 
		}
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
    	$this->data['text_forgotten'] = $this->language->get('text_forgotten');
		$this->data['text_signin'] = $this->language->get('text_signin');

    	$this->data['entry_email'] = $this->language->get('entry_email');
    	$this->data['entry_password'] = $this->language->get('entry_password');

    	$this->data['button_continue'] = $this->language->get('button_continue');
		$this->data['button_login'] = $this->language->get('button_login');

		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		$this->data['action'] = $this->url->link('vendor/login', '', 'SSL');
		$this->data['forgotten'] = $this->url->link('vendor/forgotten', '', 'SSL');
    	
		if (isset($this->request->post['redirect'])) {
			$this->data['redirect'] = $this->request->post['redirect'];
		} elseif (isset($this->session->data['redirect'])) {
      		$this->data['redirect'] = $this->session->data['redirect'];
	  		
			unset($this->session->data['redirect']);		  	
    	} else {
			$this->data['redirect'] = '';
		}

		if (isset($this->session->data['success'])) {
    		$this->data['success'] = $this->session->data['success'];
    
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		if (isset($this->request->post['email'])) {
			$this->data['email'] = $this->request->post['email'];
		} else {
			$this->data['email'] = '';
		}

		if (isset($this->request->post['password'])) {
			$this->data['password'] = $this->request->post['password'];
		} else {
			$this->data['password'] = '';
		}
				
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/vendor/login.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/vendor/login.tpl';
		} else {
			$this->template = 'default/template/vendor/login.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'vendor/header'	
		);
						
		$this->response->setOutput($this->render());
  	}
	
/*
function for validating login form
@params NULL
@return NULL
*/
  	protected function validate() {
    	if (!$this->vendor->login($this->request->post['email'], $this->request->post['password'])) {
      		$this->error['warning'] = $this->language->get('error_login');
    	}

	   	if (!$this->error) {
      		return true;
    	} else {
      		return false;
    	}  	
  	}
}
?>
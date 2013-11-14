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
#data: 19 June 2013
*/
class ControllerInformationBecomeaffiliate extends Controller {
	public function index() {  
    	$this->language->load('information/information');
		
		//$this->load->model('catalog/information');
		
		$this->data['breadcrumbs'] = array();
		
      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	);
		
		/*if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}*/
		
		//$information_info = $this->model_catalog_information->getInformation($information_id);
   		
		$this->data['breadcrumbs'][] = array(
        		'text'      => 'Become an Affiliate',
				'href'      => $this->url->link('information/becomeaffiliate'),      		
        		'separator' => $this->language->get('text_separator')
      		);	

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/becomeaffiliate.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/information/becomeaffiliate.tpl';
		} else {
			$this->template = 'default/template/information/becomeaffiliate.tpl';
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
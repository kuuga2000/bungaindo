<?php
class ControllerModuleSearch extends Controller {
	protected function index($setting) {
		$this->language->load('module/search');
 
      	$this->data['heading_title'] = $this->language->get('heading_title');
		$this->data['location_name'] = '';
		$this->data['category_id'] = '';
		$this->data['available_date'] = '';
		
		//--------------- added by gaurab on 6-june-13 for advance search on home page
		$this->load->model('catalog/product');
		
		$this->data['text_select'] = 'Choose Your Region';
    	$arrLocations = $this->model_catalog_product->getProductLocations();
		$this->data['loacations'] = array();
		foreach($arrLocations AS $loacation)
		{
			$this->data['loacations'][]=  $loacation['location']; 
		}		
		
		$this->load->model('localisation/category');
		$this->data['categories'] = $this->model_localisation_category->getAdvanceSearchCategories();
		$this->data['text_select_categories'] = 'Choose Your Category';
		$this->data['search_action'] =  $this->url->link('product/search');
		/*if(isset($this->request->post['location_name']))
		{
			$this->data['location_name'] = $this->request->post['location_name'];
		}
		
		if(isset($this->request->post['category_id']))
		{
			$this->data['category_id'] = $this->request->post['category_id'];
		}
		if(isset($this->request->post['available_date']))
		{
			$this->data['available_date'] = $this->request->post['available_date'];
		}*/
		//print_r($this->request->get); die();
		$category_id = '';
		if(isset($this->request->get['path']))
			{
				$category_id = $this->request->get['path'];
				//echo "get path "; die($category_id);
			}
			elseif(isset( $this->request->post['category_id']))
			{
				$category_id = $this->request->post['category_id'];
				//echo "post path "; die($category_id);
			}
		if(isset($this->request->post['search']) )
		{
			$location_name = $this->request->post['location_name'];
			
			
			
			$available_date = $this->request->post['available_date'];
			$this->redirect($this->url->link('product/search&location_name='.$location_name.'&category_id='.$category_id.'&available_date='.$available_date, '', 'SSL'));
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/search.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/search.tpl';
		} else {
			$this->template = 'default/template/module/search.tpl';
		}

		$this->render();
	}
}
?>
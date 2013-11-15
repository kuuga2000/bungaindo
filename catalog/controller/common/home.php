<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}
		
		
		//----------------- added by Gaurav on 28 may-2013 for home page slideshow  ------------------------------------
		
		$this->load->model('design/banner');
		$this->load->model('tool/image');
		$this->load->model('catalog/product'); 
		$this->load->model('setting/setting'); 
		$this->data['banners'] = array();
		
		$bannerIds = $this->model_design_banner->getHomeBannerId();
		$setting = array();
		if(isset($bannerIds[0]['banner_id']))
		{
			$setting['banner_id'] = $bannerIds[0]['banner_id'];
		}
		$arrSettings = $this->model_setting_setting->getSetting('slideshow');
		
		if(isset($arrSettings['slideshow_module'][0]))
		{
			$setting['image_width'] = $arrSettings['slideshow_module'][0]['width'];
			$setting['image_height'] = $arrSettings['slideshow_module'][0]['height'];
			
			if (isset($setting['banner_id'])) {
			$results = $this->model_design_banner->getBanner($setting['banner_id']);		
			foreach ($results as $result) {
				if (file_exists(DIR_IMAGE . $result['image'])) {
					$product_info = $this->model_catalog_product->getProduct($result['link']);
					
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($product_info['price'], $product_info['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false; 
				}
									
					$this->data['banners'][] = array(
						'title' => $result['title'],
						'link'  => $result['link'],
						'price' => $price,
						'href'  => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
						'baner_image' => $this->model_tool_image->banner_resize($result['image'], '1360','408'),
						'product_image' => $this->model_tool_image->resize($product_info['image'], $setting['image_width'], $setting['image_height'])
					);
				}
			}
		}
		$this->data['width'] = $setting['image_width'];
		$this->data['height'] = $setting['image_height'];
		}
		
		//----------------- End of code added by Gaurav on 28 may-2013 for home page slideshow -----------------------------
		
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
		
		
		if(isset($this->request->post['search']) )
		{
			
			$location_name = $this->request->post['location_name'];
			$category_id = $this->request->post['category_id'];
			$available_date = $this->request->post['available_date'];
			$this->redirect($this->url->link('product/search&location_name='.$location_name.'&category_id='.$category_id.'&available_date='.$available_date, '', 'SSL'));
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
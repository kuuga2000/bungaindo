<?php  
class ControllerModuleCategory extends Controller {
	protected function index($setting) {
		$this->language->load('module/category');
		
    	$this->data['heading_title'] = $this->language->get('heading_title');
		
		if (isset($this->request->get['path'])) {
			$parts = explode('_', (string)$this->request->get['path']);
		} else {
			$parts = array();
		}
		
		
							
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');
		
		if (isset($parts[0])) {
			$this->data['category_id'] = $parts[0];
			$selectedCategory = $this->model_catalog_category->getCategory($this->data['category_id']);
			$this->data['category_name'] = $selectedCategory['name'];
		} else {
			$this->data['category_id'] = 0;
			$this->data['category_name'] = '';
		}
				
		if (isset($parts[1])) {
			$this->data['child_id'] = $parts[1];
		} else {
			$this->data['child_id'] = 0;
		}

		$this->data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);
		foreach ($categories as $category) {
			$total = $this->model_catalog_product->getTotalProducts(array('filter_category_id' => $category['category_id']));

			$children_data = array();

			$children = $this->model_catalog_category->getCategories($category['category_id']);

			foreach ($children as $child) {
				$data = array(
					'filter_category_id'  => $child['category_id'],
					'filter_sub_category' => true
				);

				$product_total = $this->model_catalog_product->getTotalProducts($data);

				$total += $product_total;

				$children_data[] = array(
					'category_id' => $child['category_id'],
					'name'        => $child['name'],
					//'name'        => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $product_total . ')' : ''),
					'href'        => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])	
				);		
			}
		//------------- added 2 new params for displaying categoris on home page by Gaurav
	
		if($category['watermark']==1)
	    {
		    $categoryImage = $this->model_tool_image->resize($category['image'],'170', '200');
	    }
	    else
		{
			$categoryImage = $this->model_tool_image->banner_resize($category['image'],'170', '200');	
		}
	  
			$this->data['categories'][] = array(
				'category_id' => $category['category_id'],
				'top' => $category['top'],
				//'name'        => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $total . ')' : ''),
				'name'        => $category['name'],
				'children'    => $children_data,
				'href'        => $this->url->link('product/category', 'path=' . $category['category_id']),
				'customName' =>  $category['name'],		
				'image'       => $categoryImage,
			);	
		}
		
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/category.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/category.tpl';
		} else {
			$this->template = 'default/template/module/category.tpl';
		}
		
		//----------- added by gaurav to display categories in grid format on home page only
		if($_SERVER['QUERY_STRING'] == '' || $_SERVER['QUERY_STRING'] == 'route=common/home')
		{
			$this->template = $this->config->get('config_template') . '/template/module/category_grid.tpl';
		}
		
		$this->render();
  	}
}
?>
<?php  
class ControllerModuleAdvertise extends Controller {
	protected function index($setting) {
		static $module = 0;
		
		$this->load->model('design/advertise');
		$this->load->model('tool/image');
		
		$this->document->addScript('catalog/view/javascript/jquery/jquery.cycle.js');
				
		$this->data['advertises'] = array();
		//echo $setting['advertise_id'];
		$results = $this->model_design_advertise->getAdvertise($setting['advertise_id']);
		
		 
		foreach ($results as $result) {
			if (file_exists(DIR_IMAGE . $result['image'])) {
				$this->data['advertises'][] = array(
					'title' => $result['title'],
					'link'  => $this->url->link($result['link']),
					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
				);
			}
		}
		
		$this->data['module'] = $module++;
				
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/advertise.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/advertise.tpl';
		} else {
			$this->template = 'default/template/module/advertise.tpl';
		}
		
		$this->render();
	}
}
?>
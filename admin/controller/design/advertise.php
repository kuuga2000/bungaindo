<?php 
class ControllerDesignAdvertise extends Controller {
	private $error = array();
 
	public function index() {
		$this->language->load('design/advertise');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('design/advertise');
		
		$this->getList();
	}

	public function insert() {
		$this->language->load('design/advertise');

		$this->document->setTitle($this->language->get('heading_title'));
		
		
		$this->load->model('tool/image');
		
		
		
		$this->load->model('design/advertise');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			
		//	echo "<pre>";print_r($_POST);die();
		
			
			$this->model_design_advertise->addAdvertise($this->request->post);
			
			$this->session->data['success'] = $this->language->get('text_success');
			

			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
			
			$this->redirect($this->url->link('design/advertise', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}

	public function update() {
		$this->language->load('design/advertise');

		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('design/advertise');
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validateForm()) {
			
			$this->model_design_advertise->editAdvertise($this->request->get['advertise_id'], $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}
					
			$this->redirect($this->url->link('design/advertise', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getForm();
	}
 
	public function delete() {
		//echo "<pre>"; print_r($this->request->post['selected']);die("del");
		$this->language->load('design/advertise');
 
		$this->document->setTitle($this->language->get('heading_title'));
		
		$this->load->model('design/advertise');
		
		if (isset($this->request->post['selected']) && $this->validateDelete()) {
			foreach ($this->request->post['selected'] as $advertise_id) {
				$this->model_design_advertise->deleteAdvertise($advertise_id);
			}
			
			$this->session->data['success'] = $this->language->get('text_success');

			$url = '';
			
			if (isset($this->request->get['sort'])) {
				$url .= '&sort=' . $this->request->get['sort'];
			}

			if (isset($this->request->get['order'])) {
				$url .= '&order=' . $this->request->get['order'];
			}

			if (isset($this->request->get['page'])) {
				$url .= '&page=' . $this->request->get['page'];
			}

			$this->redirect($this->url->link('design/advertise', 'token=' . $this->session->data['token'] . $url, 'SSL'));
		}

		$this->getList();
	}

	protected function getList() {
		if (isset($this->request->get['sort'])) {
			$sort = $this->request->get['sort'];
		} else {
			$sort = 'name';
		}
		
		if (isset($this->request->get['order'])) {
			$order = $this->request->get['order'];
		} else {
			$order = 'ASC';
		}
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
			
		$url = '';
			
		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('design/advertise', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['insert'] = $this->url->link('design/advertise/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		$this->data['delete'] = $this->url->link('design/advertise/delete', 'token=' . $this->session->data['token'] . $url, 'SSL');
		 
		$this->data['advertises'] = array();

		$data = array(
			'sort'  => $sort,
			'order' => $order,
			'start' => ($page - 1) * $this->config->get('config_admin_limit'),
			'limit' => $this->config->get('config_admin_limit')
		);
		
		$advertise_total = $this->model_design_advertise->getTotalAdvertises();
		
		$results = $this->model_design_advertise->getAdvertises($data);
		//print_r($results);
		foreach ($results as $result) {
			$action = array();
			
			$action[] = array(
				'text' => $this->language->get('text_edit'),
				'href' => $this->url->link('design/advertise/update', 'token=' . $this->session->data['token'] . '&advertise_id=' . $result['advertise_id'] . $url, 'SSL')
			);

			$this->data['advertises'][] = array(
				'advertise_id' => $result['advertise_id'],
				'name'      => $result['name'],	
				'status'    => ($result['status'] ? $this->language->get('text_enabled') : $this->language->get('text_disabled')),				
				'selected'  => isset($this->request->post['selected']) && in_array($result['advertise_id'], $this->request->post['selected']),				
				'action'    => $action
			);
		}

		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_no_results'] = $this->language->get('text_no_results');
		
		$this->data['column_name'] = $this->language->get('column_name');
		$this->data['column_status'] = $this->language->get('column_status');
		$this->data['column_action'] = $this->language->get('column_action');	

		$this->data['button_insert'] = $this->language->get('button_insert');
		$this->data['button_delete'] = $this->language->get('button_delete');
 
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
		
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}

		$url = '';

		if ($order == 'ASC') {
			$url .= '&order=DESC';
		} else {
			$url .= '&order=ASC';
		}

		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}
		
		$this->data['sort_name'] = $this->url->link('design/advertise', 'token=' . $this->session->data['token'] . '&sort=name' . $url, 'SSL');
		$this->data['sort_status'] = $this->url->link('design/advertise', 'token=' . $this->session->data['token'] . '&sort=status' . $url, 'SSL');
		
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}
												
		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}

		$pagination = new Pagination();
		$pagination->total = $advertise_total;
		$pagination->page = $page;
		$pagination->limit = $this->config->get('config_admin_limit');
		$pagination->text = $this->language->get('text_pagination');
		$pagination->url = $this->url->link('design/advertise', 'token=' . $this->session->data['token'] . $url . '&page={page}', 'SSL');

		$this->data['pagination'] = $pagination->render();
		
		$this->data['sort'] = $sort;
		$this->data['order'] = $order;

		$this->template = 'design/advertise_list.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}

	protected function getForm() {
		$this->data['heading_title'] = $this->language->get('heading_title');
		
		$this->data['text_enabled'] = $this->language->get('text_enabled');
		$this->data['text_disabled'] = $this->language->get('text_disabled');
		$this->data['text_default'] = $this->language->get('text_default');
		$this->data['text_image_manager'] = $this->language->get('text_image_manager');
 		$this->data['text_browse'] = $this->language->get('text_browse');
		$this->data['text_clear'] = $this->language->get('text_clear');	
		$this->data['text_content_top'] = $this->language->get('text_content_top');
		$this->data['text_content_bottom'] = $this->language->get('text_content_bottom');		
		$this->data['text_column_left'] = $this->language->get('text_column_left');
		$this->data['text_column_right'] = $this->language->get('text_column_right');		
				
		$this->data['entry_name'] = $this->language->get('entry_name');
		$this->data['entry_title'] = $this->language->get('entry_title');
		$this->data['entry_link'] = $this->language->get('entry_link');
		$this->data['entry_image'] = $this->language->get('entry_image');		
		$this->data['entry_status'] = $this->language->get('entry_status');
		$this->data['entry_position'] = $this->language->get('entry_position');
		
		$this->data['button_save'] = $this->language->get('button_save');
		$this->data['button_cancel'] = $this->language->get('button_cancel');
		$this->data['button_add_advertise'] = $this->language->get('button_add_advertise');
		$this->data['button_remove'] = $this->language->get('button_remove');

 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}

 		if (isset($this->error['name'])) {
			$this->data['error_name'] = $this->error['name'];
		} else {
			$this->data['error_name'] = '';
		}
		
		if (isset($this->error['link'])) {
			$this->data['error_link'] = $this->error['link'];
		} else {
			$this->data['error_link'] = '';
		}
		
		

 		if (isset($this->error['image'])) { 
			$this->data['error_image'] = $this->error['image'];
		} else { 
			$this->data['error_image'] = '';
		}	
						
		$url = '';

		if (isset($this->request->get['sort'])) {
			$url .= '&sort=' . $this->request->get['sort'];
		}

		if (isset($this->request->get['order'])) {
			$url .= '&order=' . $this->request->get['order'];
		}
		
		if (isset($this->request->get['page'])) {
			$url .= '&page=' . $this->request->get['page'];
		}

  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('design/advertise', 'token=' . $this->session->data['token'] . $url, 'SSL'),
      		'separator' => ' :: '
   		);
							
		if (!isset($this->request->get['advertise_id'])) { 
			$this->data['action'] = $this->url->link('design/advertise/insert', 'token=' . $this->session->data['token'] . $url, 'SSL');
		} else {
			$this->data['action'] = $this->url->link('design/advertise/update', 'token=' . $this->session->data['token'] . '&advertise_id=' . $this->request->get['advertise_id'] . $url, 'SSL');
		}
		
		$this->data['cancel'] = $this->url->link('design/advertise', 'token=' . $this->session->data['token'] . $url, 'SSL');
		
		if (isset($this->request->get['advertise_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
			$advertise_info = $this->model_design_advertise->getAdvertise($this->request->get['advertise_id']);
		}
		

		$this->data['token'] = $this->session->data['token'];

		if (isset($this->request->post['name'])) {
			$this->data['name'] = $this->request->post['name'];
		} elseif (!empty($advertise_info)) {
			$this->data['name'] = $advertise_info['name'];
		} else {
			$this->data['name'] = '';
		}
		
		if (isset($this->request->post['link'])) {
			$this->data['link'] = $this->request->post['link'];
		} /*elseif (!empty($advertise_info)) {
			$this->data['link'] = $advertise_info['link'];
		}*/ else {
			$this->data['link'] = '';
		}
		
		if (isset($this->request->post['title'])) {
			$this->data['title'] = $this->request->post['title'];
		} /*elseif (!empty($advertise_info)) {
			$this->data['title'] = $advertise_info['title'];
		} */else {
			$this->data['title'] = '';
		}
		
		
		
		if (isset($this->request->post['status'])) {
			$this->data['status'] = $this->request->post['status'];
		} elseif (!empty($advertise_info)) {
			$this->data['status'] = $advertise_info['status'];
		} else {
			$this->data['status'] = true;
		}

		$this->load->model('localisation/language');
		
		$this->data['languages'] = $this->model_localisation_language->getLanguages();
		
		$this->load->model('tool/image');
	$advertise_images = array();
		if (isset($this->request->post['advertise_image'])) {
			$advertise_images = $this->request->post['advertise_image'];
		} elseif (isset($this->request->get['advertise_id'])) { 
			$advertise_images = $this->model_design_advertise->getAdvertiseImages($this->request->get['advertise_id']);	
			
		}
		//echo '<pre>';
		//print_r($advertise_images);
		$this->data['advertise_images'] = array();
		
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayoutsAdvertise();
		//print_r($advertise_images);
		foreach ($advertise_images as $advertise_image) {
			if ($advertise_image['image'] && file_exists(DIR_IMAGE . $advertise_image['image'])) {
				$image = $advertise_image['image'];
			} else {
				$image = 'no_image.jpg';
			}		
			
			$this->data['advertise_image_description'] = $advertise_image['advertise_image_description'];
				$this->data['link']                    =$advertise_image['link'];
				$this->data['image']                   = $image;
				$this->data['thumb']                   =$this->model_tool_image->resize($image, 100, 100);
				$this->data['position']					=$advertise_image['position'];
				$this->data['title']					=$advertise_image['title'];
				
		
			//echo "<pre>";print_r($this->data); die("mmmm");
		} 
	
		$this->data['products'] = array();
		$advertiseProducts = $this->model_design_advertise->getAdvertiseProducts($this->request->get['advertise_id']);
		
		foreach ($advertiseProducts as $advertiseProduct) {
				$this->data['products'][] = array(
					'product_id' => $advertiseProduct['product_id'],
					'name'        => $advertiseProduct['name']
				);
			}
		
		
		$this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 100, 100);		

		$this->template = 'design/advertise_form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);
				
		$this->response->setOutput($this->render());
	}

	protected function validateForm() {
		if (!$this->user->hasPermission('modify', 'design/advertise')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 64)) {
			$this->error['name'] = $this->language->get('error_name');
		}
	
		if ( strlen($this->request->post['link']) < 3)  {
			$this->error['link'] = $this->language->get('error_link');
		}
	
		if (!isset($this->request->post['advertise_image'])) { 
			
			$this->error['image'] = $this->language->get('error_image');
			/*foreach ($this->request->post['advertise_image'] as $advertise_image_id => $advertise_image) {
				foreach ($advertise_image['advertise_image_description'] as $language_id => $advertise_image_description) {
					if ((utf8_strlen($advertise_image_description['title']) < 2) || (utf8_strlen($advertise_image_description['title']) > 64)) {
						$this->error['advertise_image'][$advertise_image_id][$language_id] = $this->language->get('error_title'); 
					}					
				}
			}	*/
		}
		
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}

	protected function validateDelete() {
		if (!$this->user->hasPermission('modify', 'design/advertise')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
	
		if (!$this->error) {
			return true;
		} else {
			return false;
		}
	}
	
	public function autocomplete() {
		$json = array();
		
		if (isset($this->request->get['filter_name'])) {
			$this->load->model('catalog/product');
			
			$data = array(
				'filter_name' => $this->request->get['filter_name'],
				'start'       => 0,
				'limit'       => 20
			);
			
			$results = $this->model_catalog_product->getProducts($data);
				
			foreach ($results as $result) {
				$json[] = array(
					'product_id' => $result['product_id'], 
					'name'        => strip_tags(html_entity_decode($result['name'], ENT_QUOTES, 'UTF-8'))
				);
			}		
		}

		$sort_order = array();
	  
		foreach ($json as $key => $value) {
			$sort_order[$key] = $value['name'];
		}

		array_multisort($sort_order, SORT_ASC, $json);

		$this->response->setOutput(json_encode($json));
	}	
}
?>
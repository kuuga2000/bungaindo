<?php
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#auther:Sheetal Godase
#data: 27 June 2013
*/
class ControllerVendorSalesDashboard extends Controller {

/*
function to get vendor Order listing
@params NULL
@return NULL
*/ 	
	public function index() {
		
			//----------checking if vendor is login or not
			$this->load->model('vendor/vendor');
			$this->language->load('vendor/vieworder');
			$this->language->load('vendor/column_left');
			$this->language->load('vendor/sales_dashboard');
			if (!$this->vendor->isLogged()) {
				$this->session->data['redirect'] = $this->url->link('vendor/account', '', 'SSL');
				
		  		$this->redirect($this->url->link('vendor/login', '', 'SSL'));
	    	}	
		
			
			if(isset($this->request->get['order_id']))
			{
				$order_id = $this->request->get['order_id'];
			}
			else
			{
				$order_id = '';
			}
		
			if (isset($this->session->data['success'])) {
	    		$this->data['success'] = $this->session->data['success'];
	    
				unset($this->session->data['success']);
			} else {
				$this->data['success'] = '';
			}
			
			//------------Setting variables ------------------- 
			$this->data['heading_title'] = $this->language->get('heading_title');
			$this->data['txt_order_id'] = $this->language->get('txt_order_id');
			$this->data['txt_status'] = $this->language->get('txt_status');
			$this->data['txt_product_detail'] = $this->language->get('txt_product_detail');
			$this->data['txt_delevery_detail'] = $this->language->get('txt_delevery_detail');
			$this->data['txt_quantity'] = $this->language->get('txt_quantity');
			$this->data['txt_price'] = $this->language->get('txt_price');
			$this->data['entry_range'] = $this->language->get('entry_range');
			$this->data['text_day'] = $this->language->get('text_day');
			$this->data['text_week'] = $this->language->get('text_week');
			$this->data['text_month'] = $this->language->get('text_month');
			$this->data['text_year'] = $this->language->get('text_year');
			$this->data['text_statistics'] = $this->language->get('text_statistics');
			//$this->data['token'] = "";
		
			//---------------- getting order detail of given order
			$this->load->model('account/order');
			
			$orderDetails = $this->model_account_order->getOrder($order_id, 0);
			
			$orderProducts = $this->model_vendor_vendor->getOrderProducts($order_id);
			$additionalProducts = $this->model_vendor_vendor->getOrderUpsellProducts($order_id);
				
			$this->data['orderDetails'] = $orderDetails;
			
			$cntOrder = 0;
			foreach($orderProducts AS $orderProduct)
			{
			  $orderProducts[$cntOrder]['quantity'] = $this->model_vendor_vendor->getOrderProductQuantity($orderProduct['order_product_id']);
			$cntOrder++;
			}
			
			$cntOrder = 0;
			foreach($additionalProducts AS $additionalProduct)
			{
			  $additionalProducts[$cntOrder]['quantity'] = $this->model_vendor_vendor->getOrderProductQuantity($additionalProduct['order_product_id']);
			$cntOrder++;
			}
			
			
			$this->data['orderProducts'] = $orderProducts;
			$this->data['additionalProducts'] = $additionalProducts;
			$additionalProductPrice = 0;
			foreach($additionalProducts AS $additionalProduct)
			{
				$additionalProductPrice += $additionalProduct['total'];
			}
			
			
			$this->data['additionalProductPrice'] = $additionalProductPrice;
			/*echo '<pre>';
			print_r($this->data['orderDetails']);
			print_r($this->data['orderProducts']);
			print_r($this->data['additionalProducts']);
			echo '</pre>';*/
			$this->data['acceptOrderAction'] = $this->url->link('vendor/orderlist/acceptOrder', '', 'SSL');
			$this->data['processOrderAction'] = $this->url->link('vendor/pendinglist/processOrder', '', 'SSL');
			$this->data['shippOrderAction'] = $this->url->link('vendor/shippinglist/shippOrder', '', 'SSL');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/vendor/sales_dashboard.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/vendor/sales_dashboard.tpl';
		} else {
			$this->template = 'default/template/vendor/sales_dashboard.tpl';
		}
		
	$this->children = array(
			'vendor/column_left',
			'common/footer',
			'vendor/header'	
		);
						
		$this->response->setOutput($this->render());
		}
		
		
		
	public function chart() {
		$this->load->model('vendor/vendor');
		$this->language->load('vendor/sales_dashboard');
			$this->language->load('vendor/vieworder');
			$this->language->load('vendor/column_left');
			
			
		
		$data = array();
		
		$data['order'] = array();
		$data['customer'] = array();
		$data['xaxis'] = array();
		
		$data['order']['label'] = $this->language->get('text_order');
		$data['customer']['label'] = $this->language->get('text_customer');
		
		if (isset($this->request->get['range'])) {
			$range = $this->request->get['range'];
		} else {
			$range = 'month';
		}
		
		
		switch ($range) {
			case 'day':
				for ($i = 0; $i < 24; $i++) {
					
					//$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND (DATE(date_added) = DATE(NOW()) ) GROUP BY HOUR(date_added) ORDER BY date_added ASC");
					// this queruy is for accepted(status id 19) order by vendor
					
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id ='19'  AND (DATE(date_modified) = DATE(NOW()) ) AND vendor_id='".$this->vendor->getId()."' GROUP BY HOUR(date_modified) ORDER BY date_modified  ASC");
					
					if ($query->num_rows) {
						$data['order']['data'][]  = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][]  = array($i, 0);
					}
					
					// this queruy is for shipped (status id 3) order by vendor
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id ='3'  AND (DATE(date_modified) = DATE(NOW()) ) AND vendor_id='".$this->vendor->getId()."' GROUP BY HOUR(date_modified) ORDER BY date_modified  ASC");
					
					if ($query->num_rows) {
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}
			
					$data['xaxis'][] = array($i, date('H', mktime($i, 0, 0, date('n'), date('j'), date('Y'))));
				}
						
				break;
			case 'week':
				$date_start = strtotime('-' . date('w') . ' days'); 
				
				for ($i = 0; $i < 7; $i++) {
					$date = date('Y-m-d', $date_start + ($i * 86400));
					
					
						
					// this query is for accepted(status id 19) order by vendor
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id ='19' AND DATE(date_modified) = '" . $this->db->escape($date) . "'  AND vendor_id='".$this->vendor->getId()."' GROUP BY DATE(date_modified)");
			
					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}
				
				// this queruy is for shipped (status id 3) order by vendor
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id ='3' AND DATE(date_modified) = '" . $this->db->escape($date) . "'  AND vendor_id='".$this->vendor->getId()."' GROUP BY DATE(date_modified)");
			
					if ($query->num_rows) {
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}
		
					$data['xaxis'][] = array($i, date('D', strtotime($date)));
				}
				
				break;
			default:
			case 'month':
			
				for ($i = 1; $i <= date('t'); $i++) {
					$date = date('Y') . '-' . date('m') . '-' . $i;
					
					// this query is for accepted(status id 19) order by vendor
					
					
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id ='19' AND (DATE(date_modified) = '" . $this->db->escape($date) . "') AND vendor_id='".$this->vendor->getId()."' GROUP BY DAY(date_modified)");
					
					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}	
				
					// this queruy is for shipped (status id 3) order by vendor
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id ='3' AND (DATE(date_modified) = '" . $this->db->escape($date) . "') AND vendor_id='".$this->vendor->getId()."' GROUP BY DAY(date_modified)");
			
					if ($query->num_rows) {
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}	
					
					$data['xaxis'][] = array($i, date('j', strtotime($date)));
				}
			
				break;
			case 'year':
				for ($i = 1; $i <= 12; $i++) {
					// this query is for accepted(status id 19) order by vendor
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id ='19' AND YEAR(date_modified) = '" . date('Y') . "' AND MONTH(date_modified) = '" . $i . "' AND vendor_id='".$this->vendor->getId()."' GROUP BY MONTH(date_modified)");
					
					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}
						// this queruy is for shipped (status id 3) order by vendor
					
					$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id ='3' AND YEAR(date_modified) = '" . date('Y') . "' AND MONTH(date_modified) = '" . $i . "' AND vendor_id='".$this->vendor->getId()."' GROUP BY MONTH(date_modified)");
					
					if ($query->num_rows) { 
						$data['customer']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['customer']['data'][] = array($i, 0);
					}
					
					$data['xaxis'][] = array($i, date('M', mktime(0, 0, 0, $i, 1, date('Y'))));
				}			
				break;	
		} 
	//	echo "<pre>";	print_r($data);		die("nr response");		
		
		$this->response->setOutput(json_encode($data));
	}
	
	
	/* PIE CHART TO SHOW TOP 10 SELLING PRODUCTS STARTS ADDED BY SHEETAL GODASE ON 24 JULY 2013*/
	public function topProductsPieChart() {
		
			$this->load->model('vendor/vendor');
			$this->language->load('vendor/sales_dashboard');
			$this->language->load('vendor/vieworder');
			$this->language->load('vendor/column_left');
			
			
		
		$data = array();
		
		$data['product'] = array();
		//$data['customer'] = array();
		//$data['xaxis_top_products'] = array();
		
	//	$data['products']['label'] = $this->language->get('text_order');
		//$data['customer']['label'] = $this->language->get('text_customer');
		
		if (isset($this->request->get['range'])) {
			$range = $this->request->get['range'];
		} else {
			$range = 'month';
		}
	
		
		switch ($range) {
			case 'day':
		
			/*	for ($i = 0; $i < 24; $i++) {*/
					
					//$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND (DATE(date_added) = DATE(NOW()) ) GROUP BY HOUR(date_added) ORDER BY date_added ASC");
					// this queruy is for accepted(status id 19) order by vendor


					$query = $this->db->query("SELECT `".DB_PREFIX."order_product`.`product_id` , count( `".DB_PREFIX."order_product`.`product_id` ) count,`".DB_PREFIX."product_description`.`name` AS name
FROM `" . DB_PREFIX . "order_product`,`" . DB_PREFIX . "order`,`" . DB_PREFIX . "product_description`
WHERE 
`".DB_PREFIX."order_product`.`order_id`=`".DB_PREFIX ."order`.`order_id` AND `".DB_PREFIX."order`.`vendor_id`='".$this->vendor->getId()."' AND (DATE(`".DB_PREFIX."order`.date_modified) = DATE(NOW()) )
AND `" . DB_PREFIX . "product_description`.`product_id` = `" . DB_PREFIX . "order_product`.`product_id` GROUP BY `".DB_PREFIX."order_product`.`product_id`
ORDER BY count DESC
LIMIT 10 ");

				if($query)
					{
						
						foreach($query->rows as $result)
						{
							$data['product'][]= array($result['name'], (int)$result['count']);
						}
						
						
					}
					
				
					else {
						
					}	
					
			
					//$data['xaxis'][] = array($i, date('H', mktime($i, 0, 0, date('n'), date('j'), date('Y'))));
				/*}*/
					if(count($data['product']) == 0)
				{
					$data['product'] ="error" ;
				}	
				break;
			case 'week':
			
				$date_start = strtotime('-' . date('w') . ' days'); 
				
				
					$date = date('Y-m-d', $date_start + (0 * 86400));
				
		
					// this query is for accepted(status id 19) order by vendor
					
					
					
					$query = $this->db->query("SELECT `".DB_PREFIX."order_product`.`product_id` , count( `".DB_PREFIX."order_product`.`product_id` ) count,`".DB_PREFIX."product_description`.`name` AS name
FROM `" . DB_PREFIX . "order_product`,`" . DB_PREFIX . "order`,`" . DB_PREFIX . "product_description`
WHERE 
`".DB_PREFIX."order_product`.`order_id`=`".DB_PREFIX ."order`.`order_id` AND `".DB_PREFIX."order`.`vendor_id`='".$this->vendor->getId()."' AND (DATE(`".DB_PREFIX."order`.date_modified) BETWEEN '" . ($date) . "' AND DATE(NOW())  )
AND `" . DB_PREFIX . "product_description`.`product_id` = `" . DB_PREFIX . "order_product`.`product_id` GROUP BY `".DB_PREFIX."order_product`.`product_id`
ORDER BY count DESC LIMIT 10 ");	
					
			
					if(count($query->rows) > 0 )
					{
						
						foreach($query->rows as $result)
						{
							$data['product'][]= array($result['name'], (int)$result['count']);
						}
						
						
					}
					
				
					else {
						
					}	
					//$data['xaxis'][] = array($i, date('D', strtotime($date)));
				
				if(count($data['product']) == 0)
				{
					$data['product'] ="error" ;
				}	
				break;
			default:
			case 'month':
				
			
				/*for ($i = 1; $i <= date('t'); $i++) {*/
					$dateStart = date('Y') . '-' . date('m').'-'.'1';
						$dateEnd = date('Y') . '-' . date('m').'-'.'31';
					
					// this query is for accepted(status id 19) order by vendor
				
					$query = $this->db->query("SELECT `".DB_PREFIX."order_product`.`product_id` , count( `".DB_PREFIX."order_product`.`product_id` ) count,`".DB_PREFIX."product_description`.`name` AS name
FROM `" . DB_PREFIX . "order_product`,`" . DB_PREFIX . "order`,`" . DB_PREFIX . "product_description`
WHERE 
`".DB_PREFIX."order_product`.`order_id`=`".DB_PREFIX ."order`.`order_id` AND `".DB_PREFIX."order`.`vendor_id`='".$this->vendor->getId()."' AND `".DB_PREFIX."product_description`.`product_id` = `".DB_PREFIX."order_product`.`product_id` AND (DATE(`".DB_PREFIX."order`.date_modified) BETWEEN '" . $this->db->escape($dateStart) . "' AND '" . $this->db->escape($dateEnd) . "'  )
AND `" . DB_PREFIX . "product_description`.`product_id` = `" . DB_PREFIX . "order_product`.`product_id` GROUP BY `".DB_PREFIX."order_product`.`product_id`
ORDER BY count DESC
LIMIT 10 ");	
						if(count($query->rows) > 0)
					{
						
						foreach($query->rows as $result)
						{
							$data['product'][]= array($result['name'], (int)$result['count']);
						}
						
						
					}
					
				
					else {
						
					}	
				
					
					
					//$data['xaxis'][] = array($i, date('j', strtotime($date)));
				/*}*/
			if(count($data['product']) == 0)
				{
					$data['product'] ="error" ;
				}	
				break;
			case 'year':
				
				$dateStart = date('Y') . '-' .'1'.'-'.'1';
						$dateEnd = date('Y') . '-' .'12'.'-'.'31';
					// this query is for accepted(status id 19) order by vendor
	
					

					$query = $this->db->query("SELECT `".DB_PREFIX."order_product`.`product_id` , count( `".DB_PREFIX."order_product`.`product_id` ) count,`".DB_PREFIX."product_description`.`name` AS name
FROM `" . DB_PREFIX . "order_product`,`" . DB_PREFIX . "order`,`" . DB_PREFIX . "product_description`
WHERE 
`".DB_PREFIX."order_product`.`order_id`=`".DB_PREFIX ."order`.`order_id` AND `".DB_PREFIX."order`.`vendor_id`='".$this->vendor->getId()."' AND (DATE(`".DB_PREFIX."order`.date_modified) BETWEEN '" . $this->db->escape($dateStart) . "' AND '" . $this->db->escape($dateEnd) . "' )
AND `" . DB_PREFIX . "product_description`.`product_id` = `" . DB_PREFIX . "order_product`.`product_id` GROUP BY `".DB_PREFIX."order_product`.`product_id`
ORDER BY count DESC
LIMIT 10 ");
					
						if(count($query->rows) > 0)
					{
						
						foreach($query->rows as $result)
						{
							$data['product'][]= array($result['name'], (int)$result['count']);
						}
						
						
					}
					
				
					else {
					
					}	
				if(count($data['product']) == 0)
				{
					$data['product'] ="error" ;
				}		
					
					
				break;	
		} 
	//echo "<pre>";	print_r($data);		//die("nr response");		
		
		$this->response->setOutput(json_encode($data));
	}
	/* PIE CHART TO SHOW TOP 10 SELLING PRODUCTS ENDS ADDED BY SHEETAL GODASE ON 24 JULY 2013*/
	
	/* PIE CHART TO SHOW TOP 10 MEMBERS STARTS ADDED BY SHEETAL GODASE ON 24 JULY 2013*/
	public function topMember() {
		//$this->load->model('vendor/vendor');
		
		$data = array();
		
		//$data['order'] = array();
		$data['topcustomer'] = array();
		//$data['xaxis'] = array();
		
		//$data['order']['label'] = $this->language->get('text_order');
		//$data['customer']['label'] = $this->language->get('text_customer');
		
		if (isset($this->request->get['range'])) {
			$range = $this->request->get['range'];
		} else {
			$range = 'month';
		}
		
		switch ($range) {
			case 'day':
				
					
$query = $this->db->query("SELECT `" . DB_PREFIX . "customer`.`customer_id` , count( `" . DB_PREFIX . "order`.`customer_id` ) count, `" . DB_PREFIX . "customer`.`firstname` AS fname
, `" . DB_PREFIX . "customer`.`lastname` AS lname FROM `" . DB_PREFIX . "customer` , `" . DB_PREFIX . "order`
WHERE `" . DB_PREFIX . "customer`.`customer_id` = `" . DB_PREFIX . "order`.`customer_id`
AND `" . DB_PREFIX . "order`.`vendor_id`='".$this->vendor->getId()."'
AND DATE(`" . DB_PREFIX . "order`.date_added) = DATE(NOW())
GROUP BY `" . DB_PREFIX . "customer`.`customer_id`
ORDER BY count DESC
LIMIT 10");
					
					
					if(count($query->rows) > 0)
					{
						
						foreach($query->rows as $result)
						{
							$data['topcustomer'][]= array($result['fname']." ".$result['lname'], (int)$result['count']);
						}
						
						
					}
					
				
					else {
						
					
					}	
					
				if(count($data['topcustomer']) == 0)
				{
					$data['topcustomer'] ="error" ;
				}
				break;				
				break;
			case 'week':
				$date_start = strtotime('-' . date('w') . ' days'); 
				
				for ($i = 0; $i < 7; $i++) {
					$date = date('Y-m-d', $date_start + ($i * 86400));


$query = $this->db->query("SELECT `" . DB_PREFIX . "customer`.`customer_id` , count( `" . DB_PREFIX . "order`.`customer_id` ) count, `" . DB_PREFIX . "customer`.`firstname` AS fname
, `" . DB_PREFIX . "customer`.`lastname` AS lname FROM `" . DB_PREFIX . "customer` , `" . DB_PREFIX . "order`
WHERE `" . DB_PREFIX . "customer`.`customer_id` = `" . DB_PREFIX . "order`.`customer_id`
AND `" . DB_PREFIX . "order`.`vendor_id`='".$this->vendor->getId()."'
AND DATE(`" . DB_PREFIX . "order`.date_added) = '" . $this->db->escape($date) . "'
GROUP BY `" . DB_PREFIX . "customer`.`customer_id`
ORDER BY count DESC
LIMIT 10");					
			
					
			//echo "<pre>"; echo count($query->rows); exit();
					if(count($query->rows) > 0)
					{
						
						foreach($query->rows as $result)
						{
							$data['topcustomer'][]= array($result['fname']." ".$result['lname'], (int)$result['count']);
						}
						
						
					}
					
				
					else {						
					}	
				}
				if(count($data['topcustomer']) == 0)
				{
					$data['topcustomer'] ="error" ;
				}
				break;
				
			default:
			case 'month':
				
		$dateStart = date('Y') . '-' . date('m').'-'.'1';
						$dateEnd = date('Y') . '-' . date('m').'-'.'31';
					
					// this query is for accepted(status id 19) order by vendor
				
					
					
			
					
$query = $this->db->query("SELECT `" . DB_PREFIX . "customer`.`customer_id` , count( `" . DB_PREFIX . "order`.`customer_id` ) count, `" . DB_PREFIX . "customer`.`firstname` AS fname
, `" . DB_PREFIX . "customer`.`lastname` AS lname FROM `" . DB_PREFIX . "customer` , `" . DB_PREFIX . "order`
WHERE `" . DB_PREFIX . "customer`.`customer_id` = `" . DB_PREFIX . "order`.`customer_id`
AND `" . DB_PREFIX . "order`.`vendor_id`='".$this->vendor->getId()."'
AND (DATE(`" . DB_PREFIX . "order`.date_added) BETWEEN '" . $this->db->escape($dateStart) . "' AND '" . $this->db->escape($dateEnd) . "'  )
GROUP BY `" . DB_PREFIX . "customer`.`customer_id`
ORDER BY count DESC
LIMIT 10");						
								
					if(count($query->rows) > 0)
					{
						
						foreach($query->rows as $result)
						{
							$data['topcustomer'][]= array($result['fname']." ".$result['lname'], (int)$result['count']);
						}
						
						
					}
					
				
					else {
						
					}	
				
			if(count($data['topcustomer']) == 0)
				{
					$data['topcustomer'] ="error" ;
				}
				break;
			case 'year':
			$dateStart = date('Y') . '-' .'1'.'-'.'1';
						$dateEnd = date('Y') . '-' .'12'.'-'.'31';
						
				
			
			
				
$query = $this->db->query("SELECT `" . DB_PREFIX . "customer`.`customer_id` , count( `" . DB_PREFIX . "order`.`customer_id` ) count, `" . DB_PREFIX . "customer`.`firstname` AS fname
, `" . DB_PREFIX . "customer`.`lastname` AS lname
FROM `" . DB_PREFIX . "customer` , `" . DB_PREFIX . "order`
WHERE `" . DB_PREFIX . "customer`.`customer_id` = `" . DB_PREFIX . "order`.`customer_id`
AND `" . DB_PREFIX . "order`.`vendor_id`='".$this->vendor->getId()."'
AND (DATE(`" . DB_PREFIX . "order`.date_added) BETWEEN '" . $this->db->escape($dateStart) . "' AND '" . $this->db->escape($dateEnd) . "'  )
GROUP BY `" . DB_PREFIX . "customer`.`customer_id`
ORDER BY count DESC
LIMIT 10");	
					
					
					
					
					if(count($query->rows) > 0)
					{
						//echo "<pre>"; print_r($query->rows);
						
						foreach($query->rows as $result)
						{
							
							$data['topcustomer'][]= array($result['fname']." ".$result['lname'], (int)$result['count']);
						}
						
						
					}
					
				
					else {
						
					}
					if(count($data['topcustomer']) == 0)
				{
					$data['topcustomer'] ="error" ;
				}			
				break;	
		} 
		//print_r($data);
		$this->response->setOutput(json_encode($data));
	}
	/* PIE CHART TO SHOW TOP 10 MEMBERS ENDS ADDED BY SHEETAL GODASE ON 24 JULY 2013*/
	
	/*  CHART TO SHOW VENDOR SALE ADDED BY SHEETAL GODASE ON 24 JULY 2013*/
public function saleChart() {
		$this->load->model('vendor/vendor');
		$this->language->load('vendor/sales_dashboard');
			$this->language->load('vendor/vieworder');
			$this->language->load('vendor/column_left');
			
			
		
		$data = array();
		
		$data['order'] = array();
		$data['customer'] = array();
		$data['xaxis'] = array();
		
		$data['order']['label'] = $this->language->get('text_sale');
		//$data['customer']['label'] = $this->language->get('text_sale');
		
		if (isset($this->request->get['range'])) {
			$range = $this->request->get['range'];
		} else {
			$range = 'month';
		}
		
		
		switch ($range) {
			case 'day':
				for ($i = 0; $i < 24; $i++) {
					
					//$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE order_status_id > '" . (int)$this->config->get('config_complete_status_id') . "' AND (DATE(date_added) = DATE(NOW()) ) GROUP BY HOUR(date_added) ORDER BY date_added ASC");
					// this queruy is for accepted(status id 19) order by vendor
					
					$query = $this->db->query("SELECT SUM(total) AS total FROM `" . DB_PREFIX . "order` WHERE  (DATE(date_modified) = DATE(NOW()) ) AND vendor_id='".$this->vendor->getId()."' ");
					
					if ($query->num_rows) {
						$data['order']['data'][]  = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}
					
					
			
					$data['xaxis'][] = array($i, date('H', mktime($i, 0, 0, date('n'), date('j'), date('Y'))));
				}
						
				break;
			case 'week':
				$date_start = strtotime('-' . date('w') . ' days'); 
				
				for ($i = 0; $i < 7; $i++) {
					$date = date('Y-m-d', $date_start + ($i * 86400));
					
					
						
					// this query is for accepted(status id 19) order by vendor
					$query = $this->db->query("SELECT SUM(total) AS total FROM `" . DB_PREFIX . "order` WHERE  DATE(date_modified) = '" . $this->db->escape($date) . "'  AND vendor_id='".$this->vendor->getId()."' GROUP BY DATE(date_modified)");
			
					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] =array($i, 0);
					}
				
		
					$data['xaxis'][] = array($i, date('D', strtotime($date)));
				}
				
				break;
			default:
			case 'month':
			
				for ($i = 1; $i <= date('t'); $i++) {
					$date = date('Y') . '-' . date('m') . '-' . $i;
					//$startDate = date('Y') . '-' .date('m').'-'.'1';
					//	$endDate = date('Y') . '-' .date('m').'-'.'31';
					
					// this query is for accepted(status id 19) order by vendor
					
					
					$query = $this->db->query("SELECT SUM(total) AS total FROM `" . DB_PREFIX . "order` WHERE DATE(date_modified) = '" . $this->db->escape($date) . "'  AND vendor_id='".$this->vendor->getId()."' GROUP BY DATE(date_modified)");
					
					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] = array($i, 0);
					}	
				
				
					$data['xaxis'][] = array($i, date('j', strtotime($date)));
				}
			
				break;
			case 'year':
				for ($i = 1; $i <= 12; $i++) {
					//$startDate = date('Y') . '-' .'1'.'-'.'1';
						//endDate = date('Y') . '-' .'12'.'-'.'31';
					// this query is for accepted(status id 19) order by vendor
				
					$query = $this->db->query("SELECT SUM(total) AS total FROM `" . DB_PREFIX . "order` WHERE  vendor_id='".$this->vendor->getId()."' AND YEAR(date_modified) = '" . date('Y') . "' AND MONTH(date_modified) = '" . $i . "' GROUP BY MONTH(date_modified) ");
					
					if ($query->num_rows) {
						$data['order']['data'][] = array($i, (int)$query->row['total']);
					} else {
						$data['order']['data'][] =array($i, 0);
					}
						// this queruy is for shipped (status id 3) order by vendor
					
					
					
					$data['xaxis'][] = array($i, date('M', mktime(0, 0, 0, $i, 1, date('Y'))));
				}			
				break;	
		} 
	//	echo "<pre>";	print_r($data);		die("nr response");		
		
		$this->response->setOutput(json_encode($data));
	}
	/*  CHART TO SHOW VENDOR SALE ENDS ADDED BY SHEETAL GODASE ON 24 JULY 2013*/
	
	
	
	
}

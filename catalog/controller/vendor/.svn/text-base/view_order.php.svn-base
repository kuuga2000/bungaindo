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
#data: 14 June 2013
*/
class ControllerVendorViewOrder extends Controller {

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
			
			//---------------- getting order detail of given order
			$this->load->model('account/order');
			$orderDetails = $this->model_account_order->getOrder($order_id, 0);
			$orderProducts = $this->model_vendor_vendor->getOrderProducts($order_id);
			$additionalProducts = $this->model_vendor_vendor->getOrderUpsellProducts($order_id);
			
		
			if( $orderDetails['vendor_id']  != 0 && $this->vendor->getId() != $orderDetails['vendor_id'] )
			{
				$this->redirect($this->url->link('vendor/orderlist', '', 'SSL'));
			}
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
			$this->data['totals'] = $this->model_account_order->getOrderTotals($order_id);
			/*echo '<pre>';
			print_r($this->data['orderDetails']);
			print_r($this->data['orderProducts']);
			print_r($this->data['additionalProducts']);
			echo '</pre>';*/
			$this->data['acceptOrderAction'] = $this->url->link('vendor/orderlist/acceptOrder', '', 'SSL');
			$this->data['processOrderAction'] = $this->url->link('vendor/pendinglist/processOrder', '', 'SSL');
			$this->data['shippOrderAction'] = $this->url->link('vendor/shippinglist/shippOrder', '', 'SSL');
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/vendor/viewOrder.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/vendor/viewOrder.tpl';
		} else {
			$this->template = 'default/template/vendor/viewOrder.tpl';
		}
		
	$this->children = array(
			'vendor/column_left',
			'common/footer',
			'vendor/header'	
		);
						
		$this->response->setOutput($this->render());
		}
}
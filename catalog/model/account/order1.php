<?php
class ModelAccountOrder extends Model {
	public function getOrder($order_id, $isCustomer = 1) {
		//--------------- added flag by gaurav to use same function for dislaying order in vendor section 
		if($isCustomer == 1)
		{
			$order_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order` WHERE order_id = '" . (int)$order_id . "' AND customer_id = '" . (int)$this->customer->getId() . "' AND order_status_id > '0' ORDER BY date_added DESC");
		}
		else
		{
			$order_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order` WHERE order_id = '" . (int)$order_id . "' ORDER BY date_added DESC");
		}
		
		if ($order_query->num_rows) {
			$country_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "country` WHERE country_id = '" . (int)$order_query->row['payment_country_id'] . "'");
			
			if ($country_query->num_rows) {
				$payment_iso_code_2 = $country_query->row['iso_code_2'];
				$payment_iso_code_3 = $country_query->row['iso_code_3'];
			} else {
				$payment_iso_code_2 = '';
				$payment_iso_code_3 = '';				
			}
			
			$zone_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "zone` WHERE zone_id = '" . (int)$order_query->row['payment_zone_id'] . "'");
			
			if ($zone_query->num_rows) {
				$payment_zone_code = $zone_query->row['code'];
			} else {
				$payment_zone_code = '';
			}
			
			$country_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "country` WHERE country_id = '" . (int)$order_query->row['shipping_country_id'] . "'");
			
			if ($country_query->num_rows) {
				$shipping_iso_code_2 = $country_query->row['iso_code_2'];
				$shipping_iso_code_3 = $country_query->row['iso_code_3'];
			} else {
				$shipping_iso_code_2 = '';
				$shipping_iso_code_3 = '';				
			}
			
			$zone_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "zone` WHERE zone_id = '" . (int)$order_query->row['shipping_zone_id'] . "'");
			
			if ($zone_query->num_rows) {
				$shipping_zone_code = $zone_query->row['code'];
			} else {
				$shipping_zone_code = '';
			}
			
			//------------ added by gaurav on 14-june to get order status text 
			$order_status_query = $this->db->query("SELECT name FROM `" . DB_PREFIX . "order_status` WHERE order_status_id = '" . (int)$order_query->row['order_status_id'] . "'");
			if ($order_status_query->num_rows) {
				$order_status = $order_status_query->row['name'];
			} else {
				$order_status = '';
			}
			
			//------------ added by sheetal on 15-july to get order payment status text 
			
			$order_payment_status_query = $this->db->query("SELECT status FROM `" . DB_PREFIX . "order_customer_payment` WHERE order_id = '" . (int)$order_id . "'");
			if ($order_payment_status_query->num_rows) {
				$order_payment_status = $order_payment_status_query->row['status'];
			} else {
				$order_payment_status = '';
			}
			
			
			return array(
				'order_id'                => $order_query->row['order_id'],
				'vendor_id'               => $order_query->row['vendor_id'],		
				'invoice_no'              => $order_query->row['invoice_no'],
				'invoice_prefix'          => $order_query->row['invoice_prefix'],
				'store_id'                => $order_query->row['store_id'],
				'store_name'              => $order_query->row['store_name'],
				'store_url'               => $order_query->row['store_url'],				
				'customer_id'             => $order_query->row['customer_id'],
				'firstname'               => $order_query->row['firstname'],
				'lastname'                => $order_query->row['lastname'],
				'telephone'               => $order_query->row['telephone'],
				'fax'                     => $order_query->row['fax'],
				'email'                   => $order_query->row['email'],
				'payment_firstname'       => $order_query->row['payment_firstname'],
				'payment_lastname'        => $order_query->row['payment_lastname'],				
				'payment_company'         => $order_query->row['payment_company'],
				'payment_address_1'       => $order_query->row['payment_address_1'],
				'payment_address_2'       => $order_query->row['payment_address_2'],
				'payment_postcode'        => $order_query->row['payment_postcode'],
				'payment_city'            => $order_query->row['payment_city'],
				'payment_zone_id'         => $order_query->row['payment_zone_id'],
				'payment_zone'            => $order_query->row['payment_zone'],
				'payment_zone_code'       => $payment_zone_code,
				'payment_country_id'      => $order_query->row['payment_country_id'],
				'payment_country'         => $order_query->row['payment_country'],	
				'payment_iso_code_2'      => $payment_iso_code_2,
				'payment_iso_code_3'      => $payment_iso_code_3,
				'payment_address_format'  => $order_query->row['payment_address_format'],
				'payment_method'          => $order_query->row['payment_method'],
				'shipping_firstname'      => $order_query->row['shipping_firstname'],
				'shipping_lastname'       => $order_query->row['shipping_lastname'],				
				'shipping_company'        => $order_query->row['shipping_company'],
				'shipping_address_1'      => $order_query->row['shipping_address_1'],
				'shipping_address_2'      => $order_query->row['shipping_address_2'],
				'shipping_postcode'       => $order_query->row['shipping_postcode'],
				'shipping_city'           => $order_query->row['shipping_city'],
				'shipping_zone_id'        => $order_query->row['shipping_zone_id'],
				'shipping_zone'           => $order_query->row['shipping_zone'],
				'shipping_zone_code'      => $shipping_zone_code,
				'shipping_country_id'     => $order_query->row['shipping_country_id'],
				'shipping_country'        => $order_query->row['shipping_country'],	
				'shipping_iso_code_2'     => $shipping_iso_code_2,
				'shipping_iso_code_3'     => $shipping_iso_code_3,
				'shipping_address_format' => $order_query->row['shipping_address_format'],
				'shipping_method'         => $order_query->row['shipping_method'],
				'comment'                 => $order_query->row['comment'],
				'total'                   => $order_query->row['total'],
				'order_status_id'         => $order_query->row['order_status_id'],
				'order_status'            => $order_status,   
				'language_id'             => $order_query->row['language_id'],
				'currency_id'             => $order_query->row['currency_id'],
				'currency_code'           => $order_query->row['currency_code'],
				'currency_value'          => $order_query->row['currency_value'],
				'date_modified'           => $order_query->row['date_modified'],
				'date_added'              => $order_query->row['date_added'],
				'ip'                      => $order_query->row['ip'],
				'hide_sender'			=>$order_query->row['hideSender'],
				'order_payment_status'		=>$order_payment_status
			);
		} else {
			return false;	
		}
	}
	 
	public function getOrders($start = 0, $limit = 20) {
		if ($start < 0) {
			$start = 0;
		}
		
		if ($limit < 1) {
			$limit = 1;
		}	
		
		$query = $this->db->query("SELECT o.order_id,o.payment_method, o.firstname, o.lastname, os.name as status, o.date_added, o.total, o.currency_code, o.currency_value FROM `" . DB_PREFIX . "order` o LEFT JOIN " . DB_PREFIX . "order_status os ON (o.order_status_id = os.order_status_id) WHERE o.customer_id = '" . (int)$this->customer->getId() . "' AND o.order_status_id > '0' AND os.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY o.date_added DESC LIMIT " . (int)$start . "," . (int)$limit);	
	
		return $query->rows;
	}
	
	public function getOrderProducts($order_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_product WHERE order_id = '" . (int)$order_id . "'");
	
		return $query->rows;
	}
	
	public function getOrderOptions($order_id, $order_product_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_option WHERE order_id = '" . (int)$order_id . "' AND order_product_id = '" . (int)$order_product_id . "'");
	
		return $query->rows;
	}
	
	public function getOrderVouchers($order_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order_voucher` WHERE order_id = '" . (int)$order_id . "'");
		
		return $query->rows;
	}
	
	public function getOrderTotals($order_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_total WHERE order_id = '" . (int)$order_id . "' ORDER BY sort_order");
	
		return $query->rows;
	}	

	public function getOrderHistories($order_id) {
		$query = $this->db->query("SELECT date_added, os.name AS status, oh.comment, oh.notify FROM " . DB_PREFIX . "order_history oh LEFT JOIN " . DB_PREFIX . "order_status os ON oh.order_status_id = os.order_status_id WHERE oh.order_id = '" . (int)$order_id . "' AND oh.notify = '1' AND os.language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY oh.date_added");
	
		return $query->rows;
	}	

	public function getOrderDownloads($order_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_download WHERE order_id = '" . (int)$order_id . "' ORDER BY name");
	
		return $query->rows; 
	}	

	public function getTotalOrders() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order` WHERE customer_id = '" . (int)$this->customer->getId() . "' AND order_status_id > '0'");
		
		return $query->row['total'];
	}
		
	public function getTotalOrderProductsByOrderId($order_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "order_product WHERE order_id = '" . (int)$order_id . "'");
		
		return $query->row['total'];
	}
	
	public function getTotalOrderVouchersByOrderId($order_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "order_voucher` WHERE order_id = '" . (int)$order_id . "'");
		
		return $query->row['total'];
	}	
	
	
	
	/**
	* function by sheetal godase to get product related to order
	* @param: order id
	* @return array of all products in that order
	*/	
	public function getOrderUpsellProducts($order_id) {
		$sql = "SELECT *,op.price AS price_add FROM " . DB_PREFIX . "order_product op INNER JOIN " . DB_PREFIX . "product p  ON op.product_id = p.product_id  WHERE order_id = '" . (int)$order_id . "' AND p.upselling = 1 ";

		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	
	/**
	* function by sheetal godase to get product related to order
	* @param: order id
	* @return array of all products in that order
	*/	
	public function getOrderProductsNoUpsell($order_id) {
		$sql = "SELECT *,op.quantity as qty FROM " . DB_PREFIX . "order_product op INNER JOIN " . DB_PREFIX . "product p  ON op.product_id = p.product_id  WHERE order_id = '" . (int)$order_id . "' AND p.upselling = 0 ";

		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	
	/**
	* function by sheetal godase to get product related to order
	* @param: order id
	* @return array of all products in that order
	*/	
	public function getOrderPaymentStatusByOrderId($order_id) {
		
		$order_payment_status_query = $this->db->query("SELECT status FROM `" . DB_PREFIX . "order_customer_payment` WHERE order_id = '" . (int)$order_id . "'");
			if ($order_payment_status_query->num_rows) {
				$order_payment_status = $order_payment_status_query->row['status'];
			} else {
				$order_payment_status = '';
			}
		
		
		
		
		return $order_payment_status;
	}
	
	public function processOrderPayment($data)
	{
		$order_status_query = $this->db->query("SELECT order_status_id FROM " . DB_PREFIX . "order_status WHERE name LIKE  '%Processed%' AND language_id = '" . (int)$this->config->get('config_language_id')  . "'");
		$intOrderStatusId = $order_status_query->row['order_status_id'];
		
		 $SQL = "UPDATE ". DB_PREFIX ."order_customer_payment set payment_to = '".$data['payment_to']."',payment_from= '".$data['payment_from']."',account_name= '".$data['account_name']."',total_amount= '".$data['total_amount']."',payment_date= '".$data['payment_date']."', status ='confirm' WHERE order_id = '".(int)$data['order_id']."' ";
		
		
		$this->db->query($SQL);
		
		
		$getCustomer = "SELECT c.email AS email, c.firstname AS firstname, c.lastname AS lastname FROM " . DB_PREFIX . "customer c INNER JOIN " . DB_PREFIX . "order o ON c.customer_id = o.customer_id WHERE o.order_id =  ".(int)$data['order_id']." ";
		
		$res = $this->db->query($getCustomer);
		$customer = $res->row;
		$subject = 'Bunga Indo - Payment confirmed.';
		$html = "Dear admin";
		$html .= '<br><br>';
		$html .= "Payment for following order has been confirm by customer<br>ORDER ID: ".$data['order_id'];
		$html .= "<br><br>Thanks You<br>Bunga Indo";
		
		$mail = new Mail(); 
		$mail->protocol = $this->config->get('config_mail_protocol');
		$mail->parameter = $this->config->get('config_mail_parameter');
		$mail->hostname = $this->config->get('config_smtp_host');
		$mail->username = $this->config->get('config_smtp_username');
		$mail->password = $this->config->get('config_smtp_password');
		$mail->port = $this->config->get('config_smtp_port');
		$mail->timeout = $this->config->get('config_smtp_timeout');			
		$mail->setTo($customer['email']);
		$mail->setFrom($this->config->get('config_email'));
		$mail->setSender('Bunga Indo');
		$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
		$mail->setHtml($html);
		$mail->setText(html_entity_decode($html, ENT_QUOTES, 'UTF-8'));
		$mail->send();
	}
	
	
	
}
?>
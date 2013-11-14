<?php
class ModelVendorVendor extends Model {

	/**
	Function to get all vendors in perticular city
	@param undefined $city
	@return: list of all vendors 
	*/		
	public function getVendorByCity($city){
		$sql = "SELECT `vendor_id`, `email`, `firstname`, `lastname` FROM " . DB_PREFIX . "vendor WHERE FIND_IN_SET('".$this->db->escape($city)."',city)";
		$query = $this->db->query($sql);
		return $query->rows;
	}
	
	/**
	* function to get count of total approved orders
	* @param: null
	* @return order count
	*/	
	public function getTotalApprovedOrders()
	{
			$sql = "SELECT COUNT(o.order_id) AS total  FROM " . DB_PREFIX . "order o INNER JOIN " . DB_PREFIX . "order_status os ON os.order_status_id = o.order_status_id WHERE os.name LIKE '%Approved%' OR ((os.name LIKE '%Assigned%' OR os.name LIKE '%Accepted%') AND o.vendor_id = ".(int)$this->vendor->getId().") ";
			$query =  $this->db->query($sql);
			return $query->row['total'];
	}	
	/**
	* function to get all approved orders
	* @param: null
	* @return array of all approved orders
	*/	
	public function getApprovedOrders($data)
	{
		$sql = "SELECT o.order_id AS order_id , o.payment_method AS payment_method, o.total AS total,os.name AS name FROM " . DB_PREFIX . "order o INNER JOIN " . DB_PREFIX . "order_status os ON os.order_status_id = o.order_status_id WHERE os.name LIKE '%Approved%' OR ((os.name LIKE '%Assigned%' OR os.name LIKE '%Accepted%') AND o.vendor_id = ".(int)$this->vendor->getId().") ORDER BY ".$data['sort']." DESC LIMIT " . (int)$data['start'] . "," . (int)$data['limit']."  ";
		$query =  $this->db->query($sql);
		$return = array();
	
		foreach($query->rows as $row)
		{

			//---- getting delivery date of latest product
			$dateSQL = "SELECT date(delivery_date) AS delivery_date FROM " . DB_PREFIX . "order_product WHERE order_id = '".(int)$row['order_id']."' ORDER BY delivery_date DESC ";
		
			$dateQuery = $this->db->query($dateSQL);
			$latestDate = $dateQuery->row;
			$date = date('d-m-Y',strtotime($latestDate['delivery_date']));
			$return[] = array(
			'order_id'       => $row['order_id'],
			'payment_method'       => $row['payment_method'],
			'total'       => $row['total'],
			'name'       => $row['name'],
			'delivery_date' => $date
			);
		}
		return $return;
	}
	
	/**
	* function to get count of total pending  orders
	* @param: null
	* @return order count
	*/	
	public function getTotalPendingOrders()
	{
			$sql = "SELECT COUNT(o.order_id) AS total FROM " . DB_PREFIX . "order o INNER JOIN " . DB_PREFIX . "order_status os ON os.order_status_id = o.order_status_id WHERE (os.name LIKE '%Accepted%' OR os.name LIKE '%Processed%' ) AND o.vendor_id = ".(int)$this->vendor->getId()."";
			$query =  $this->db->query($sql);
			return $query->row['total'];
	}	
	
	/**
	* function to get all pending orders which are accepted by vendor but not yet processed
	* @param: null
	* @return array of all pending orders
	*/	
	public function getPendingOrders($data)
	{
		$sql = "SELECT o.order_id AS order_id , o.payment_method AS payment_method, o.total AS total,os.name AS name FROM " . DB_PREFIX . "order o INNER JOIN " . DB_PREFIX . "order_status os ON os.order_status_id = o.order_status_id WHERE (os.name LIKE '%Accepted%' OR os.name LIKE '%Processed%' ) AND o.vendor_id = ".(int)$this->vendor->getId()." ORDER BY ".$data['sort']. " DESC LIMIT " . (int)$data['start'] . "," . (int)$data['limit']."";
		$query =  $this->db->query($sql);
		$return = array();
		foreach($query->rows as $row)
		{
	
			//---- getting delivery date of latest product
			$dateSQL = "SELECT date(delivery_date) AS delivery_date FROM " . DB_PREFIX . "order_product WHERE order_id = '".(int)$row['order_id']."' ORDER BY delivery_date DESC ";
			$dateQuery = $this->db->query($dateSQL);
			$latestDate = $dateQuery->row;
			$date = date('d-m-Y',strtotime($latestDate['delivery_date']));
			
			$return[] = array(
			'order_id'       => $row['order_id'],
			'payment_method'       => $row['payment_method'],
			'total'       => $row['total'],
			'name'       => $row['name'],
			'delivery_date' => $date
			);
		}
		return $return;
	}
	
	/**
	* function to get count of total shippin orders ie order processed but not yet shipped
	* @param: null
	* @return order count
	*/	
	public function getTotalShippingOrders()
	{
			$sql = "SELECT COUNT(o.order_id) AS total FROM " . DB_PREFIX . "order o INNER JOIN " . DB_PREFIX . "order_status os ON os.order_status_id = o.order_status_id WHERE (os.name LIKE '%Processed%' OR os.name LIKE '%Shipped%' ) AND o.vendor_id = ".(int)$this->vendor->getId()."";
			$query =  $this->db->query($sql);
			return $query->row['total'];
	}	
	
	/**
	* function to get all shipping orders which are processed by vendor but not yet shipped
	* @param: null
	* @return array of all pending orders
	*/	
	public function getShippingOrders($data)
	{
		$sql = "SELECT o.order_id AS order_id , o.payment_method AS payment_method, o.total AS total,os.name AS name FROM " . DB_PREFIX . "order o INNER JOIN " . DB_PREFIX . "order_status os ON os.order_status_id = o.order_status_id WHERE (os.name LIKE '%Shipped%' OR os.name LIKE '%Processed%' ) AND o.vendor_id = ".(int)$this->vendor->getId()." ORDER BY ".$data['sort']. " DESC LIMIT " . (int)$data['start'] . "," . (int)$data['limit']."";
		$query =  $this->db->query($sql);
		$return = array();
		foreach($query->rows as $row)
		{

			//---- getting delivery date of latest product
			$dateSQL = "SELECT date(delivery_date) AS delivery_date FROM " . DB_PREFIX . "order_product WHERE order_id = '".(int)$row['order_id']."' ORDER BY delivery_date DESC ";
			$dateQuery = $this->db->query($dateSQL);
			$latestDate = $dateQuery->row;
			$date = date('d-m-Y',strtotime($latestDate['delivery_date']));
			$return[] = array(
			'order_id'       => $row['order_id'],
			'payment_method'       => $row['payment_method'],
			'total'       => $row['total'],
			'name'       => $row['name'],
			'delivery_date' => $date
			);
		}
		return $return;
	}
	
	/**
	* function to accept order
	* @param: order id: Id of order which is accepted 
	* 		  vendor id: Id of vendor who is accepting order
	* @return null
	*/	
	public function acceptOrder($data)
	{
		$order_status_query = $this->db->query("SELECT order_status_id FROM " . DB_PREFIX . "order_status WHERE name LIKE  '%Accepted%' AND language_id = '" . (int)$this->config->get('config_language_id')  . "'");
		$intOrderStatusId = $order_status_query->row['order_status_id'];
		
		$SQL = "UPDATE ". DB_PREFIX ."order set vendor_id = ".(int)$data['vendor_id'].", order_status_id = ".(int)$intOrderStatusId.", date_modified = NOW() WHERE order_id = ".(int)$data['order_id']." ";
		
		
		$this->db->query($SQL);
	}
	
	/**
	* function to process order
	* @param: order id: Id of order which is process 
	* 		  vendor id: Id of vendor who is process order
	* @return null
	*/	
	public function processOrder($data)
	{
		$order_status_query = $this->db->query("SELECT order_status_id FROM " . DB_PREFIX . "order_status WHERE name LIKE  '%Processed%' AND language_id = '" . (int)$this->config->get('config_language_id')  . "'");
		$intOrderStatusId = $order_status_query->row['order_status_id'];
		
		$SQL = "UPDATE ". DB_PREFIX ."order set vendor_id = ".(int)$data['vendor_id'].", order_status_id = ".(int)$intOrderStatusId.", date_modified = NOW() WHERE order_id = ".(int)$data['order_id']." ";
		
		$this->db->query($SQL);
	}
	
	/**
	* function to change order flag to shipped
	* @param: order id: Id of order which is shipped 
	* 		  vendor id: Id of vendor who is shipped order
	* @return null
	*/	
	public function shippOrder($data)
	{
		$order_status_query = $this->db->query("SELECT order_status_id FROM " . DB_PREFIX . "order_status WHERE name LIKE  '%Shipped%' AND language_id = '" . (int)$this->config->get('config_language_id')  . "'");
		$intOrderStatusId = $order_status_query->row['order_status_id'];
		
		$SQL = "UPDATE ". DB_PREFIX ."order set vendor_id = ".(int)$data['vendor_id'].", order_status_id = ".(int)$intOrderStatusId.", date_modified = NOW() WHERE order_id = ".(int)$data['order_id']." ";
		
		$getCustomer = "SELECT c.email AS email, c.firstname AS firstname, c.lastname AS lastname FROM " . DB_PREFIX . "customer c INNER JOIN " . DB_PREFIX . "order o ON c.customer_id = o.customer_id WHERE o.order_id =  ".(int)$data['order_id']." ";
		
		$res = $this->db->query($getCustomer);
		$customer = $res->row;
		$subject = 'Bunga indo- order has been shipped';
		$html = "Dear ".$customer['firstname']." ".$customer['lastname'];
		$html .= '<br><br>';
		$html .= "Your order  has been shipped<br>ORDER ID: ".$data['order_id'];
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
		$mail->setSender('Bunga indo');
		$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
		$mail->setHtml($html);
		$mail->setText(html_entity_decode($text, ENT_QUOTES, 'UTF-8'));
		$mail->send();
		
		
		$this->db->query($SQL);
	}
	
	
	
	/***************************************************************************************
	
				BELOW FUNCTIONS ADDED BY SHEETAL GODASE ON13TH JUNE 2013
	
	****************************************************************************************/
	
	/**
	* function by sheetal to get vendor login
	* @param: email
	* @return 
	*/	
	public function getTotalVendorsByEmail($email) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "vendor WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");
		
		return $query->row['total'];
	}
	/**
	* function by sheetal to mail vendor password
	* @param: email password
	* @return 
	*/	
	public function editPassword($email, $password) {
      	$this->db->query("UPDATE " . DB_PREFIX . "vendor SET salt = '" . $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9)) . "', password = '" . $this->db->escape(sha1($salt . sha1($salt . sha1($password)))) . "' WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");
	}
	/**
	* function by sheetal to get vendor detail
	* @param: vendor_id
	* @return 
	*/	
		public function getVendor($vendor_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "vendor WHERE vendor_id = '" . (int)$vendor_id . "'");
		
		return $query->row;
	}
	
	/**
	* function by sheetal to update vendor profile info
	* @param: post array
	* @return 
	*/	
	public function editVendor($data) {
		
		//$strCity = trim($data['city'],',');
		//$strCity .= ',';
		
	/*$this->db->query("UPDATE " . DB_PREFIX . "vendor SET telephone = '" . $this->db->escape($data['telephone']) . "', fax = '" . $this->db->escape($data['fax']) . "', mobile_number = '" . $this->db->escape($data['mobile_number']) . "', address = '" . $this->db->escape($data['address']) . "', shopname = '" . $this->db->escape($data['shopname']) . "',website = '".$this->db->escape($data['website'])."', city = '" . $this->db->escape($strCity) . "', zip_code = '" . $this->db->escape($data['zip_code']) . "', country_id = '" . (int)$data['country_id'] . "', zone_id = '" . (int)$data['zone_id'] . "' ,modified = NOW() WHERE vendor_id = '" . (int)$this->vendor->getId() . "'");*/
	$this->db->query("UPDATE " . DB_PREFIX . "vendor SET telephone = '" . $this->db->escape($data['telephone']) . "', fax = '" . $this->db->escape($data['fax']) . "', mobile_number = '" . $this->db->escape($data['mobile_number']) . "', address = '" . $this->db->escape($data['address']) . "', shopname = '" . $this->db->escape($data['shopname']) . "',website = '".$this->db->escape($data['website'])."', zip_code = '" . $this->db->escape($data['zip_code']) . "' ,modified = NOW() WHERE vendor_id = '" . (int)$this->vendor->getId() . "'");
	}	
	/**
	* function by gaurav to get product related to order
	* @param: order id
	* @return array of all products in that order
	*/	
	public function getOrderProducts($order_id) {
		
		$sql = "SELECT *, op.price AS price, op.total AS total, op.shippingMethod AS shippingMethod FROM " . DB_PREFIX . "order_product op INNER JOIN " . DB_PREFIX . "product p  ON op.product_id = p.product_id  WHERE order_id = '" . (int)$order_id . "' AND p.upselling = 0 ";
//$sql = "SELECT * FROM " . DB_PREFIX . "order_product op  WHERE order_id = '" . (int)$order_id . "'  ";

		$query = $this->db->query($sql);
		
		
		return $query->rows;
	}
	
	/**
	* function by gaurav to get product related to order
	* @param: order id
	* @return array of all products in that order
	*/	
	public function getOrderUpsellProducts($order_id) {
		$sql = "SELECT * FROM " . DB_PREFIX . "order_product op INNER JOIN " . DB_PREFIX . "product p  ON op.product_id = p.product_id  WHERE order_id = '" . (int)$order_id . "' AND p.upselling = 1 ";

		$query = $this->db->query($sql);
		return $query->rows;
	}
	/**
	* function by gaurav to get quantity of ordered product
	* @param: order product id
	* @return product quantity
	*/	
	public function getOrderProductQuantity($orderProductId)
	{
		$sql = "SELECT quantity FROM " . DB_PREFIX . "order_product op WHERE order_product_id = ".(int)$orderProductId." ";
		$query = $this->db->query($sql);
		return $query->row['quantity'];
	}
	
	public function getRegion($vendorId)
	{
		$sql = "SELECT z.name AS name FROM " . DB_PREFIX . "zone z LEFT JOIN " . DB_PREFIX . "vendor v ON v.zone_id = z.zone_id   WHERE v.vendor_id = ".(int)$vendorId." ";
		$query = $this->db->query($sql);
		return $query->row['name'];
	}
	
	
	 public function addForgotPasswordToken($customerEmail)
	 {
	 	$passwordToken =  sha1(time());
	 	$query = $this->db->query("UPDATE `" . DB_PREFIX . "vendor` SET passwordToken = '". $this->db->escape($passwordToken)."' WHERE email = '".$this->db->escape($customerEmail)."'");
		
			$link = $this->url->link('vendor/forgotten/validatePasswordToken&token='.$passwordToken, '', 'SSL');
			
			$subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'));
			$message = "Dear Vendor\n\n";
			$message .= "Please click on below link to accept your reset password request:". "\n\n";
			$message .= $link . "\n\n";
			$message .= "Thank You\n".$this->config->get('config_name');
			$mail = new Mail();
			$mail->protocol = $this->config->get('config_mail_protocol');
			$mail->parameter = $this->config->get('config_mail_parameter');
			$mail->hostname = $this->config->get('config_smtp_host');
			$mail->username = $this->config->get('config_smtp_username');
			$mail->password = $this->config->get('config_smtp_password');
			$mail->port = $this->config->get('config_smtp_port');
			$mail->timeout = $this->config->get('config_smtp_timeout');				
			$mail->setTo($customerEmail);
			$mail->setFrom($this->config->get('config_email'));
			$mail->setSender($this->config->get('config_name'));
			$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
			$mail->send();
			
	 }
	 
	 public function getEmailFromToken($token)
	 {
	 	$query = $this->db->query("SELECT email FROM `" . DB_PREFIX . "vendor` WHERE passwordToken = '" . $this->db->escape($token) . "'");
		if($query->num_rows > 0)
		{
			return $query->row['email'];
		}
		else
		{
			return '';
		}
	 }
}
?>
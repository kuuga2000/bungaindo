<?php
class ModelAccountCustomer extends Model {
	public function addCustomer($data) {
		if (isset($data['customer_group_id']) && is_array($this->config->get('config_customer_group_display')) && in_array($data['customer_group_id'], $this->config->get('config_customer_group_display'))) {
			$customer_group_id = $data['customer_group_id'];
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}
		
		$this->load->model('account/customer_group');
		
		$customer_group_info = $this->model_account_customer_group->getCustomerGroup($customer_group_id);
		
		$strActivationToken = sha1(time());
		//$strActivationToken = '';

      	$this->db->query("INSERT INTO " . DB_PREFIX . "customer SET store_id = '" . (int)$this->config->get('config_store_id') . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . trim($this->db->escape($data['email'])) . "', telephone = '" . $this->db->escape($data['telephone']) . "', fax = '" . $this->db->escape($data['fax']) . "', salt = '" . $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9)) . "', password = '" . $this->db->escape(sha1($salt . sha1($salt . sha1($data['password'])))) . "', newsletter = '" . (isset($data['newsletter']) ? (int)$data['newsletter'] : 0) . "', customer_group_id = '" . (int)$customer_group_id . "', ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "', status = '1', approved = '" . (int)!$customer_group_info['approval'] . "', activation_token = '".$strActivationToken."', date_added = NOW()");
      	
		$customer_id = $this->db->getLastId();
		$address_title = '';
		if(isset($data['address_title']))
		{
			$address_title = $data['address_title'];
		}
      	$this->db->query("INSERT INTO " . DB_PREFIX . "address SET customer_id = '" . (int)$customer_id . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', company = '" . $this->db->escape($data['company']) . "', company_id = '" . $this->db->escape($data['company_id']) . "', address_title = '".$this->db->escape($address_title)."',  tax_id = '" . $this->db->escape($data['tax_id']) . "', address_1 = '" . $this->db->escape($data['address_1']) . "', address_2 = '" . $this->db->escape($data['address_2']) . "', city = '" . $this->db->escape($data['city']) . "', postcode = '" . $this->db->escape($data['postcode']) . "', country_id = '" . (int)$data['country_id'] . "', zone_id = '" . (int)$data['zone_id'] . "', telephone = '" . $this->db->escape($data['telephone']) . "'");
		
		$address_id = $this->db->getLastId();

      	$this->db->query("UPDATE " . DB_PREFIX . "customer SET address_id = '" . (int)$address_id . "' WHERE customer_id = '" . (int)$customer_id . "'");
		/* CUSTOM [ */ /*list($usec, $sec) = explode(' ', microtime()); srand((float) $sec + ((float) $usec * 100000)); $verification_code = md5($customer_id . ':' . rand()); $this->db->query("DELETE FROM ".DB_PREFIX."customer_verification WHERE customer_id = '".(int)$customer_id."'"); $this->db->query("INSERT INTO ".DB_PREFIX."customer_verification SET customer_id = '".(int)$customer_id."', verification_code = '".$verification_code."'"); $verification_link = $this->url->link('account/verification') . '&v=' . $verification_code . '&u=' . (int)$customer_id;  *//* ] */
		
		$this->language->load('mail/customer');
		
		/* $subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'));
		
		$message = sprintf($this->language->get('text_welcome'), $this->config->get('config_name')) . "\n\n";
		
		if (!$customer_group_info['approval']) {
			$message .= $this->language->get('text_login') . "\n";
		} else {
			$message .= $this->language->get('text_approval') . "\n";
		}
		
		$message .= $this->language->get('text_activation') . "\n";
		$message .= $this->url->link('account/login_register&activate='.$strActivationToken, '', 'SSL') . "\n\n";
		$message .= $this->language->get('text_services') . "\n\n";
		$message .= $this->language->get('text_thanks') . "\n";
		$message .= $this->config->get('config_name');
		
		$mail = new Mail();
		$mail->protocol = $this->config->get('config_mail_protocol');
		$mail->parameter = $this->config->get('config_mail_parameter');
		$mail->hostname = $this->config->get('config_smtp_host');
		$mail->username = $this->config->get('config_smtp_username');
		$mail->password = $this->config->get('config_smtp_password');
		$mail->port = $this->config->get('config_smtp_port');
		$mail->timeout = $this->config->get('config_smtp_timeout');				
		//$mail->setTo($data['email']);
		echo $data['email'];exit;
		$mail->setFrom($this->config->get('config_email'));
		$mail->setSender($this->config->get('config_name'));
		$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
		//$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
		//$mail->send(); */
		
		/* if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

			$email_template = "";

			if(isset ($this->request->post['name']) && $this->request->post['name'] != "") {
				$email_template .= "Name: ". $this->request ->post['name']. "" ;
			}
			if(isset ($this->request->post['email']) && $this->request->post['email'] != "") {
				$email_template .= "Email Address: ". $this->request->post['email']. "" ;
			}
			if(isset ($this->request->post['phone']) && $this->request->post['phone'] != "") {
				$email_template .= "Phone: ". $this->request->post['phone']. "" ;
			}

			if(isset ($this->request->post['subject']) && $this->request->post['subject'] != "") {
				$email_template .= "Subject: ". $this->request->post['subject']. "" ;
			}
			if(isset ($this->request->post['enquiry']) && $this->request->post['enquiry'] != "") {
				$email_template .= "Comments: ". $this->request->post['enquiry']. "" ;
			} */
			
			$subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'));
		
			$message = sprintf($this->language->get('text_welcome'), $this->config->get('config_name')) . "<br/><br/>";
		
			if (!$customer_group_info['approval']) {
				$message .= $this->language->get('text_login') . "<br/>";
			} else {
				$message .= $this->language->get('text_approval') . "<br/>";
			}
			$a = $this->url->link('account/login_register&activate='.$strActivationToken, '', 'SSL');
			$message .= $this->language->get('text_activation') . "<br/>";
			$message .= "<a href='".$a."'>".$this->url->link('account/login_register&activate='.$strActivationToken, '', 'SSL') . "</a><br/><br/>";
			$message .= $this->language->get('text_services') . "<br/><br/>";
			$message .= $this->language->get('text_thanks') . "<br/>";
			$message .= $this->config->get('config_name');

			$mail = new PHPMailer(true); //New instance, with exceptions enabled

			$mail->IsSMTP(); // tell the class to use SMTP
			$mail->SMTPAuth = true; // enable SMTP authentication
			/* $mail->Port = $this->config->get('config_smtp_port'); // set the SMTP server port
			$mail->Host = $this->config->get('config_smtp_host'); // SMTP server
			$mail->Username = $this->config->get('config_smtp_username'); // SMTP server username
			$mail->Password = $this->config->get('config_smtp_password'); // SMTP server password */
			$mail->Port = '25'; // set the SMTP server port
			$mail->Host = 'mail.bungaindo.com'; // SMTP server
			$mail->Username = 'admin@bungaindo.com'; // SMTP server username
			$mail->Password = 'kebunrayabogor1'; // SMTP server password
			$mail->SMTPAuth = true; // enable SMTP authentication
			
			//$mail->IsSendmail(); // tell the class to use Sendmail

			$mail->AddReplyTo($this->config->get('config_email'));

			/* $mail->From = $this->request->post['email'] ; */
			$mail->From = $this->config->get('config_email');
			/* $mail->FromName = $this->request->post['name'] ; */
			$mail->FromName = $this->config->get('config_name');

			/* $to = $this->config->get('config_email'); */

			$mail->AddAddress($data['email']);

			/* if(isset ($this-> request->post['subject']) && $this->request ->post['subject'] != "") {
				$mail->Subject = ($this ->request->post['subject']." – ". $this->request ->post['name']);
			} else {
				$mail->Subject = (sprintf($this->language->get('email_subject'), $this->request->post['name']));
			} */

			$mail->Subject = (html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			
			$mail->AltBody = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test
			$mail->WordWrap = 80; // set word wrap

			$mail->MsgHTML(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));

			$mail->IsHTML(true); // send as HTML

			$mail->Send();

			/* $this->redirect( $this->url ->link('information/contact/success')); */
		/* } */
		
		// Send to main admin email if new account email is enabled
		if ($this->config->get('config_account_mail')) {
			$mail = new PHPMailer(true);
			$mail->IsSMTP(); // tell the class to use SMTP
			$mail->SMTPAuth = true; // enable SMTP authentication
			/* $mail->Port = $this->config->get('config_smtp_port'); // set the SMTP server port
			$mail->Host = $this->config->get('config_smtp_host'); // SMTP server
			$mail->Username = $this->config->get('config_smtp_username'); // SMTP server username
			$mail->Password = $this->config->get('config_smtp_password'); // SMTP server password */
			$mail->Port = '25'; // set the SMTP server port
			$mail->Host = 'mail.bungaindo.com'; // SMTP server
			$mail->Username = 'admin@bungaindo.com'; // SMTP server username
			$mail->Password = 'kebunrayabogor1'; // SMTP server password
			$mail->SMTPAuth = true;
			$message  = $this->language->get('text_signup') . "<br/><br/>";
			$message .= $this->language->get('text_website') . ' ' . $this->config->get('config_name') . "<br/>";
			$message .= $this->language->get('text_firstname') . ' ' . $data['firstname'] . "<br/>";
			$message .= $this->language->get('text_lastname') . ' ' . $data['lastname'] . "<br/>";
			$message .= $this->language->get('text_customer_group') . ' ' . $customer_group_info['name'] . "<br/>";
			
			if ($data['company']) {
				$message .= $this->language->get('text_company') . ' '  . $data['company'] . "<br/>";
			}
			
			$message .= $this->language->get('text_email') . ' '  .  $data['email'] . "<br/>";
			$message .= $this->language->get('text_telephone') . ' ' . $data['telephone'] . "<br/>";
			
			$mail->AddAddress($this->config->get('config_email'));
			$mail->Subject = (html_entity_decode($this->language->get('text_new_customer'), ENT_QUOTES, 'UTF-8'));
			$mail->MsgHTML(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
			$mail->send();
			
			// Send to additional alert emails if new account email is enabled
			$emails = explode(',', $this->config->get('config_alert_emails'));
			
			foreach ($emails as $email) {
				if (strlen($email) > 0 && preg_match('/^[^\@]+@.*\.[a-z]{2,6}$/i', $email)) {
					$mail->AddAddress($email);
					$mail->send();
				}
			}
		}
	}
	
	public function editCustomer($data) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', fax = '" . $this->db->escape($data['fax']) . "' WHERE customer_id = '" . (int)$this->customer->getId() . "'");
	}

	public function editPassword($email, $password) {
      	$this->db->query("UPDATE " . DB_PREFIX . "customer SET salt = '" . $this->db->escape($salt = substr(md5(uniqid(rand(), true)), 0, 9)) . "', password = '" . $this->db->escape(sha1($salt . sha1($salt . sha1($password)))) . "' WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");
	}

	public function editNewsletter($newsletter) {
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET newsletter = '" . (int)$newsletter . "' WHERE customer_id = '" . (int)$this->customer->getId() . "'");
	}
					
	public function getCustomer($customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE customer_id = '" . (int)$customer_id . "'");
		
		return $query->row;
	}
	
	public function getCustomerByEmail($email) { 
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "'");
		
		return $query->row;
	}
		
	public function getCustomerByToken($token) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE token = '" . $this->db->escape($token) . "' AND token != ''");
		
		$this->db->query("UPDATE " . DB_PREFIX . "customer SET token = ''");
		
		return $query->row;
	}
		
	public function getCustomers($data = array()) {
		$sql = "SELECT *, CONCAT(c.firstname, ' ', c.lastname) AS name, cg.name AS customer_group FROM " . DB_PREFIX . "customer c LEFT JOIN " . DB_PREFIX . "customer_group cg ON (c.customer_group_id = cg.customer_group_id) ";

		$implode = array();
		
		if (isset($data['filter_name']) && !is_null($data['filter_name'])) {
			$implode[] = "LCASE(CONCAT(c.firstname, ' ', c.lastname)) LIKE '" . $this->db->escape(utf8_strtolower($data['filter_name'])) . "%'";
		}
		
		if (isset($data['filter_email']) && !is_null($data['filter_email'])) {
			$implode[] = "LCASE(c.email) = '" . $this->db->escape(utf8_strtolower($data['filter_email'])) . "'";
		}
		
		if (isset($data['filter_customer_group_id']) && !is_null($data['filter_customer_group_id'])) {
			$implode[] = "cg.customer_group_id = '" . $this->db->escape($data['filter_customer_group_id']) . "'";
		}	
		
		if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
			$implode[] = "c.status = '" . (int)$data['filter_status'] . "'";
		}	
		
		if (isset($data['filter_approved']) && !is_null($data['filter_approved'])) {
			$implode[] = "c.approved = '" . (int)$data['filter_approved'] . "'";
		}	
			
		if (isset($data['filter_ip']) && !is_null($data['filter_ip'])) {
			$implode[] = "c.customer_id IN (SELECT customer_id FROM " . DB_PREFIX . "customer_ip WHERE ip = '" . $this->db->escape($data['filter_ip']) . "')";
		}	
				
		if (isset($data['filter_date_added']) && !is_null($data['filter_date_added'])) {
			$implode[] = "DATE(c.date_added) = DATE('" . $this->db->escape($data['filter_date_added']) . "')";
		}
		
		if ($implode) {
			$sql .= " WHERE " . implode(" AND ", $implode);
		}
		
		$sort_data = array(
			'name',
			'c.email',
			'customer_group',
			'c.status',
			'c.ip',
			'c.date_added'
		);	
			
		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY name";	
		}
			
		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}
		
		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}			

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	
			
			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}		
		
		$query = $this->db->query($sql);
		
		return $query->rows;	
	}
		
	public function getTotalCustomersByEmail($email) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . trim($this->db->escape(utf8_strtolower($email))) . "'");
		
		return $query->row['total'];
	}
	
	public function getIps($customer_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "customer_ip` WHERE customer_id = '" . (int)$customer_id . "'");
		
		return $query->rows;
	}	
	
	public function isBanIp($ip) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "customer_ban_ip` WHERE ip = '" . $this->db->escape($ip) . "'");
		
		return $query->num_rows;
	}	
	
	public function get_credit($id)
{	

		$query = $this->db->query("SELECT  SUM(ct.amount) AS total FROM " . DB_PREFIX . "customer_transaction ct  WHERE ct.customer_id = $id");
		return $query->row['total'];
}

	//--------- added by Gaurav on 4-06-2013 to add new newsletter subscribtions.
	public function addNewsletterSubscriber($strEmail)
	{
		$this->db->query("INSERT INTO " . DB_PREFIX . "newsletter SET email = '".$this->db->escape(utf8_strtolower($strEmail))."', created = NOW() ");
		return true;
	}
	//--------- added by Gaurav on 4-06-2013 to check whether email is already subscribe for newletter or not.
	public function getNewsletterSubscriberByEmail($strEmail)
	{
		$query = $this->db->query("SELECT newsletter_id FROM " . DB_PREFIX . "newsletter WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($strEmail)) . "'");
		
		return $query->rows;
	}
	
	//--------------- added by Gaurav on 5-june-13 to check is customer is activated or not
	/*public function checkCustomerActivation($strEmail,$strPassword)
	{
		$query = $this->db->query("SELECT activation_token FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($strEmail)) . "' AND (password = SHA1(CONCAT(salt, SHA1(CONCAT(salt, SHA1('" . $this->db->escape($strPassword) . "'))))) OR password = '" . $this->db->escape(md5($strPassword)) . "') AND status = '1' AND approved = '1'");
		
		return $query->row;
	}*/
	//check approved also---->added by sheetal godase on 30sept 2013
	public function checkCustomerActivation($strEmail,$strPassword)
	{
		$query = $this->db->query("SELECT activation_token,approved FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($strEmail)) . "' AND (password = SHA1(CONCAT(salt, SHA1(CONCAT(salt, SHA1('" . $this->db->escape($strPassword) . "'))))) OR password = '" . $this->db->escape(md5($strPassword)) . "') AND status = '1' ");
		
		return $query->row;
	}
	//--------------- added by Gaurav on 5-june-13 to activated customer
	public function activateUser($strActivateToken)
	{
		$query = $this->db->query("UPDATE " . DB_PREFIX . "customer SET activation_token = '',approved='1' WHERE activation_token = '".$this->db->escape($strActivateToken)."' ");
	}
	//--------------- added by Sheetal on 27-june-13 to check is customer is activated or not for forgot password
	public function checkCustomerActivationForgotPassword($strEmail)
	{
$query = $this->db->query("SELECT email FROM " . DB_PREFIX . "customer WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($strEmail)) . "' AND status = '1' AND activation_token  = ''");
		
		return $query->row;
	}
	
	/**
	* function added by Gaurav on 28-june-13 to add token for forgot password request
	* @param : customer email
	* return NULL
	*/ 
	 public function addForgotPasswordToken($customerEmail)
	 {
	 	$passwordToken =  sha1(time());
	 	$query = $this->db->query("UPDATE `" . DB_PREFIX . "customer` SET passwordToken = '". $this->db->escape($passwordToken)."' WHERE email = '".$this->db->escape($customerEmail)."'");
		
			$link = $this->url->link('account/forgotten/validatePasswordToken&token='.$passwordToken, '', 'SSL');
			
			/* $subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'));
			$message = "Dear User\n\n";
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
			$mail->send(); */
			
			$subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'));
			$message = "Dear User<br/><br/>";
			$message .= "Please click on below link to accept your reset password request:". "<br/><br/>";
			$message .= "<a href=\"".$link."\">".$link . "</a><br/><br/>";
			$message .= "Thank You<br/>".$this->config->get('config_name');
			$mail = new PHPMailer(true); //New instance, with exceptions enabled
			$mail->IsSMTP(); // tell the class to use SMTP
			$mail->SMTPAuth = true; // enable SMTP authentication
			$mail->Port = '25'; // set the SMTP server port
			$mail->Host = 'mail.bungaindo.com'; // SMTP server
			$mail->Username = 'admin@bungaindo.com'; // SMTP server username
			$mail->Password = 'kebunrayabogor1'; // SMTP server password
			$mail->SMTPAuth = true; // enable SMTP authentication
			//$mail->IsSendmail(); // tell the class to use Sendmail
			$mail->AddReplyTo($this->config->get('config_email'));
			$mail->From = $this->config->get('config_email');
			$mail->FromName = $this->config->get('config_name');
			$mail->AddAddress($customerEmail);
			$mail->Subject = (html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
			$mail->AltBody = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test
			$mail->WordWrap = 80; // set word wrap
			$mail->MsgHTML(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
			$mail->IsHTML(true); // send as HTML
			$mail->Send();
			
	 }
	 
	  public function getEmailFromToken($token)
	 {
	 	$query = $this->db->query("SELECT email FROM `" . DB_PREFIX . "customer` WHERE passwordToken = '" . $this->db->escape($token) . "'");
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

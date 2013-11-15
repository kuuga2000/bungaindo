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
#data: 1 June 2013
*/

class ModelVendorVendor extends Model {
	
	//------------------------ function to add new vendor -----------------------------
	public function addVendor($data) {
		
		$strCity = trim($data['city'],',');
		$strCity .= ',';
		
		$this->db->query("INSERT INTO `" . DB_PREFIX . "vendor` SET firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "',password = '" . $this->db->escape(md5($data['password'])) . "', shopname = '" . $this->db->escape($data['shopname']) . "', address = '" . $this->db->escape($data['address']) . "', country_id = '" . (int)$data['country_id'] . "',zone_id = '" . (int)$data['zone_id'] . "', city = '" . $this->db->escape($strCity) . "', zip_code = '" . $data['zip_code'] . "',mobile_number = '" . $data['mobile_number'] . "',telephone = '" . $data['telephone'] . "',fax = '" . $data['fax'] . "',website = '" . $data['website'] . "',modified = NOW(),created = NOW()");
				
		$message = "Welcome ".$data['firstname'].' '.$data['lastname']. "\n\n";
		
				
		$message .= "Following is the link to your affilitate dash board". "\n";
		
		$message .= HTTP_CATALOG.'index.php?route=vendor/account'. "\n\n";
		$message .= 'Your login details are'."\n";
		$message .= 'Email: '.$data['email']."\n";
		$message .= 'Password: '.$data['password']."\n\n";
		$message .= "Thanks" . "\n";
		$message .= $this->config->get('config_name');
	
		$subject = $this->config->get('config_name').'- Affiliate Login Details';
		$mail = new Mail();
		$mail->protocol = $this->config->get('config_mail_protocol');
		$mail->parameter = $this->config->get('config_mail_parameter');
		$mail->hostname = $this->config->get('config_smtp_host');
		$mail->username = $this->config->get('config_smtp_username');
		$mail->password = $this->config->get('config_smtp_password');
		$mail->port = $this->config->get('config_smtp_port');
		$mail->timeout = $this->config->get('config_smtp_timeout');				
		$mail->setTo($data['email']);
		$mail->setFrom($this->config->get('config_email'));
		$mail->setSender($this->config->get('config_name'));
		$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
		$mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
		$mail->send();
	}
	
/*---------------- Function to check whether vendor with given email already exists
email: vendor email
*/
	public function checkEmail($email) 
	{
		$query = $this->db->query("SELECT count(vendor_id) AS cnt FROM " . DB_PREFIX . "vendor WHERE email = '".$this->db->escape($email)."'");
		return $query->row;
	}
	
/*---------------- Function to get vendor by its Id
$vendorId: vendor ID
*/	
	public function getVendor($vendorId){
	   $query = $this->db->query("SELECT * FROM ". DB_PREFIX . "vendor WHERE vendor_id = '" . (int)$vendorId . "'");
	   return $query->rows;
	} 
	
/*---------------- Function to get all vendors*/		
	public function getAllVendors(){
		$query = $this->db->query("SELECT vendor_id, firstname, lastname, email FROM ". DB_PREFIX . "vendor order by created ASC");
		return $query->rows;
	} 

/*---------------- Function to delete vendor
$vendorId: id of a vendor whome we need to delete
*/		
	function deleteVendor($vendorId){
		$this->db->query("DELETE FROM " . DB_PREFIX . "vendor WHERE vendor_id = '" . (int)$vendorId . "'");
	}
	
/*---------------- Function to update Vendor
data: array containg vendor information
*/		
	function updateVendor($data){

		$strCity = trim($data['city'],',');
		$strCity .= ',';
		$this->db->query("UPDATE `" . DB_PREFIX . "vendor` SET firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', shopname = '" . $this->db->escape($data['shopname']) . "', address = '" . $this->db->escape($data['address']) . "', country_id = '" . (int)$data['country_id'] . "',zone_id = '" . (int)$data['zone_id'] . "', city = '" . $this->db->escape($strCity) . "', zip_code = '" . $data['zip_code'] . "',mobile_number = '" . $data['mobile_number'] . "',telephone = '" . $data['telephone'] . "',fax = '" . $data['fax'] . "',website = '" . $data['website'] . "',modified = NOW() WHERE vendor_id = ".$data['vendor_id'] );
	}

/*---------------- Function to get vendor by city
$city: Id of city
*/		
	public function getVendorByCity($city){
		$sql = "SELECT `vendor_id`, `email`, `firstname`, `lastname` FROM " . DB_PREFIX . "vendor WHERE city LIKE '%".$this->db->escape($city).",%'";
		
		$query = $this->db->query($sql);
		return $query->rows;
	}
}
?>
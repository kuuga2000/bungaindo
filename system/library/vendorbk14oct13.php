<?php
class Vendor {
	private $vendor_id;
	private $firstname;
	private $lastname;
	private $email;
	private $telephone;
	private $fax;
	private $region;
	
  	public function __construct($registry) {
		$this->config = $registry->get('config');
		$this->db = $registry->get('db');
		$this->request = $registry->get('request');
		$this->session = $registry->get('session');
				
		if (isset($this->session->data['vendor_id'])) { 
			$vendor_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "vendor WHERE vendor_id = '" . (int)$this->session->data['vendor_id'] . "' AND status = '1'");
			
			if ($vendor_query->num_rows) {
				$this->vendor_id = $vendor_query->row['vendor_id'];
				$this->firstname = $vendor_query->row['firstname'];
				$this->lastname = $vendor_query->row['lastname'];
				$this->email = $vendor_query->row['email'];
				$this->telephone = $vendor_query->row['telephone'];
				$this->fax = $vendor_query->row['fax'];
				$this->region = $vendor_query->row['zone_id'];
							
      			$this->db->query("UPDATE " . DB_PREFIX . "vendor SET ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "' WHERE vendor_id = '" . (int)$this->session->data['vendor_id'] . "'");
			} else {
				$this->logout();
			}
  		}
	}

/*
function for vendor login
@params vendor email, password
@return true if email password is valid else false
*/		
  	public function login($email, $password) {
		$vendor_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "vendor WHERE LOWER(email) = '" . $this->db->escape(utf8_strtolower($email)) . "' AND (password = SHA1(CONCAT(salt, SHA1(CONCAT(salt, SHA1('" . $this->db->escape($password) . "'))))) OR password = '" . $this->db->escape(md5($password)) . "') AND status = '1'");
		if ($vendor_query->num_rows) {
			$this->session->data['vendor_id'] = $vendor_query->row['vendor_id'];	
		    
			$this->vendor_id = $vendor_query->row['vendor_id'];
			$this->firstname = $vendor_query->row['firstname'];
			$this->lastname = $vendor_query->row['lastname'];
			$this->email = $vendor_query->row['email'];
			$this->telephone = $vendor_query->row['telephone'];
			$this->fax = $vendor_query->row['fax'];
			$this->region = $vendor_query->row['zone_id']; 
	  
	  		return true;
    	} else {
      		return false;
    	}
  	}

/*
function for vendor logout
@params NULL
@return NULL
*/		  
  	public function logout() {
		unset($this->session->data['vendor_id']);

		$this->vendor_id = '';
		$this->firstname = '';
		$this->lastname = '';
		$this->email = '';
		$this->telephone = '';
		$this->fax = '';
		$this->region = '';
  	}
 
/*
function to check if there is login vendor or not
@params NULL
@return NULL
*/  
  	public function isLogged() {
    	return $this->vendor_id;
  	}

/*
function to get login vendor id
@params NULL
@return NULL
*/  
  	public function getId() {
    	return $this->vendor_id;
  	}

/*
function to get vendor firstname
@params NULL
@return NULL
*/       
  	public function getFirstName() {
		return $this->firstname;
  	}

/*
function to get vendor lastname
@params NULL
@return NULL
*/   
  	public function getLastName() {
		return $this->lastname;
  	}

/*
function to get vendor email
@params NULL
@return NULL
*/   
  	public function getEmail() {
		return $this->email;
  	}

/*
function to get vendor city
@params NULL
@return NULL
*/   
  	public function getRegion() {
		return $this->region;
  	}
}
?>
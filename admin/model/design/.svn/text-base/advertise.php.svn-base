<?php
class ModelDesignAdvertise extends Model {
	public function addAdvertise($data) {
		//echo "<pre>"; print_r($data); die("add");
		$this->db->query("INSERT INTO " . DB_PREFIX . "advertise SET name = '" . $this->db->escape($data['name']) . "', status = '" . (int)$data['status'] . "'");
	
		$advertise_id = $this->db->getLastId();
	
		$this->db->query("INSERT INTO " . DB_PREFIX . "advertise_image SET advertise_id = '" . (int)$advertise_id . "', link = '" .  $this->db->escape($data['link']) . "', image = '" .  $this->db->escape($data['advertise_image']) . "' , position='".$data['position']."'");
		
		$advertise_image_id = $this->db->getLastId();
		
		$this->db->query("INSERT INTO " . DB_PREFIX . "advertise_image_description SET advertise_image_id = '" . (int)$advertise_image_id . "', language_id = '" . (int)$language_id . "', advertise_id = '" . (int)$advertise_id . "', title = '" .  $this->db->escape($data['title']) . "'");
		
		
			
	}
	
	public function editAdvertise($advertise_id, $data) {
		
	
		//echo "<pre>"; print_r($data); die("edit");
		$this->db->query("UPDATE " . DB_PREFIX . "advertise SET name = '" . $this->db->escape($data['name']) . "', status = '" . (int)$data['status'] . "' WHERE advertise_id = '" . (int)$advertise_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "advertise_image WHERE advertise_id = '" . (int)$advertise_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "advertise_image_description WHERE advertise_id = '" . (int)$advertise_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "advertise_products WHERE advertise_id = '" . (int)$advertise_id . "'");
			                                                                    
		
			
				$this->db->query("INSERT INTO " . DB_PREFIX . "advertise_image SET advertise_id = '" . (int)$advertise_id . "', link = '" .  $this->db->escape($data['link']) . "', image = '" .  $this->db->escape($data['advertise_image']) . "', position='".$data['position']."'");
				
				$advertise_image_id = $this->db->getLastId();
				
							
					$this->db->query("INSERT INTO " . DB_PREFIX . "advertise_image_description SET advertise_image_id = '" . (int)$advertise_image_id . "', language_id = '" . (int)$language_id . "', advertise_id = '" . (int)$advertise_id . "', title = '" .  $this->db->escape($data['title']) . "'");
				
			foreach($data['product'] AS $addProduct)
			{
				$getProductName = "SELECT name FROM " . DB_PREFIX . "product_description WHERE  product_id = " .  $this->db->escape($addProduct) . "";
				$id = $this->db->query($getProductName);
				$res = $id->row;
				$productName = $res['name'];
				$this->db->query("INSERT INTO " . DB_PREFIX . "advertise_products SET advertise_id = '" . (int)$advertise_id . "', product_id = '" .  $this->db->escape($addProduct) . "', name ='".$this->db->escape($productName)."' ");
			}
			
	}
	
	public function deleteAdvertise($advertise_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "advertise WHERE advertise_id = '" . (int)$advertise_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "advertise_image WHERE advertise_id = '" . (int)$advertise_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "advertise_image_description WHERE advertise_id = '" . (int)$advertise_id . "'");
	}
	
	public function getAdvertise($advertise_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "advertise WHERE advertise_id = '" . (int)$advertise_id . "'");
		
		return $query->row;
	}
	
	public function getAdvertiseProducts($advertise_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "advertise_products WHERE advertise_id = '" . (int)$advertise_id . "'");
		
		return $query->rows;
	}
	
	
		
	public function getAdvertises($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "advertise";
		
		$sort_data = array(
			'name',
			'status'
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
		
	public function getAdvertiseImages($advertise_id) {
		$advertise_image_data = array();
		
		$advertise_image_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "advertise_image WHERE advertise_id = '" . (int)$advertise_id . "'");
		
		foreach ($advertise_image_query->rows as $advertise_image) { 
			$advertise_image_description_data = array();
			 
			$advertise_image_description_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "advertise_image_description WHERE advertise_image_id = '" . (int)$advertise_image['advertise_image_id'] . "' AND advertise_id = '" . (int)$advertise_id . "'");
			
			foreach ($advertise_image_description_query->rows as $advertise_image_description) {		
				$advertise_image_description_data[$advertise_image_description['language_id']] = array('title' => $advertise_image_description['title']);
			}
		
			$advertise_image_data[] = array(
				'advertise_image_description' => $advertise_image_description_data,
				'link'                     => $advertise_image['link'],
				'image'                    => $advertise_image['image']	,
				'position'					=>$advertise_image['position'],
				'title'					=>$advertise_image_description['title']	
			);
		}
		
		return $advertise_image_data;
	}
		
	public function getTotalAdvertises() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "advertise");
		
		return $query->row['total'];
	}	
}
?>
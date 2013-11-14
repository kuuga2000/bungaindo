<?php
class ModelDesignAdvertise extends Model {	
	public function getAdvertise($advertise_id) {

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "advertise_image bi LEFT JOIN " . DB_PREFIX . "advertise_image_description bid ON (bi.advertise_image_id  = bid.advertise_image_id) WHERE bi.advertise_id = '" . (int)$advertise_id . "' ");
		
		return $query->rows;
	}
	
	//-------- added function by Gaurav on 28 may-2013 to get baner id of home page advertise . name of home page advertise is flowers
	public function getHomeAdvertiseId() {
		$query = $this->db->query("SELECT `advertise_id` FROM " . DB_PREFIX . "advertise" . " WHERE name like '%home%' ORDER BY advertise_id ASC ");
		return $query->rows;
	}
	
	
//------CUSTOM FUNCTION TO GET ADVERTISE DETAILS OF HOME PAGE ADVT... NAME IS "HOME"



	
}
?>
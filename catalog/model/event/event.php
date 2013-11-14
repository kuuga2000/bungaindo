<?php
class ModelEventEvent extends Model {

	public function getAdvertiseProducts($addvertise) {
		
		$getAddId = $this->db->query("SELECT advertise_id FROM " . DB_PREFIX . "advertise WHERE name LIKE '%" .$addvertise . "%'");
		$resId = $getAddId->row;
		
		$addId = $resId['advertise_id'];
		
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "advertise_products WHERE advertise_id = '" . (int)$addId . "'");
		
		return $query->rows;
	}
}
?>
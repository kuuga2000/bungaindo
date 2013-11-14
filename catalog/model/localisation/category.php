<?php
class ModelLocalisationCategory extends Model {
	public function getAllCategories() {
		$query = $this->db->query("SELECT cd.`category_id`, `name` FROM " . DB_PREFIX . "category_description cd INNER JOIN " . DB_PREFIX . "category c ON c.category_id = cd.category_id  WHERE status = '1'");
		
		return $query->rows;
	}	
	
	public function getAdvanceSearchCategories() {
	
		$getUpsellCat = "SELECT category_id FROM " . DB_PREFIX . "category_description WHERE name LIKE '%upsell%'  " ;
		$upsellIdArr = $this->db->query($getUpsellCat);
		$upsellId = $upsellIdArr->row['category_id'];
		$query = $this->db->query("SELECT cd.`category_id`, `name` FROM " . DB_PREFIX . "category_description cd INNER JOIN " . DB_PREFIX . "category c ON c.category_id = cd.category_id  WHERE status = '1' AND (parent_id != ".(int)$upsellId." AND cd.`category_id` != ".(int)$upsellId.") ORDER BY `name` ");
		
		return $query->rows;
	}		
}
?>
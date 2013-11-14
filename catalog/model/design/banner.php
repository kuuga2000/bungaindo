<?php
class ModelDesignBanner extends Model {	
	public function getBanner($banner_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "banner_image bi LEFT JOIN " . DB_PREFIX . "banner_image_description bid ON (bi.banner_image_id  = bid.banner_image_id) WHERE bi.banner_id = '" . (int)$banner_id . "' AND bid.language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->rows;
	}
	
	//-------- added function by Gaurav on 28 may-2013 to get baner id of home page banner . name of home page banner is flowers
	public function getHomeBannerId() {
		$query = $this->db->query("SELECT `banner_id` FROM " . DB_PREFIX . "banner" . " WHERE name like '%Flowers%' ORDER BY banner_id ASC ");
		return $query->rows;
	}	
}
?>
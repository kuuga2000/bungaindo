<?php
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#auther: Sheetal Godase
#data: 11 June 2013
*/ 


// function to get orders which are either pending or not accepted by vendors

class ModelAccountCronpendingorder extends Model {
	public function getPendingOrder() { 
	
	$query = $this->db->query("SELECT oc_order.*, oc_order_status.name
									FROM `oc_order` , oc_order_status
									WHERE (
									`oc_order`.`order_status_id` = 
									
									oc_order_status.order_status_id
									AND (DATEDIFF(curdate() , date( oc_order.date_added) ) 
									
									>(select value from  oc_setting where  `key` LIKE 
									
									'config_order_duration') )
									AND (
									`oc_order`.`order_status_id` =17
									OR `oc_order`.`order_status_id` =1
									))");
									//print_r($query); die();
	//if($query->num_rows)
		return $query->rows;
	
	//else
		//return false;
		
}

}
?>
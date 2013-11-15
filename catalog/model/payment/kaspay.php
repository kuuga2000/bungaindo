<?php 
class ModelPaymentKaspay extends Model {
  	public function addNewTransaction($transaction_id,$orderId) {
		$sql = "INSERT INTO " . DB_PREFIX . "kaspay_transaction (transaction_id,order_id,created,modified) VALUES(".$transaction_id.",".$orderId.",NOW(),NOW())";
		$this->db->query($sql);
  	}
	
	public function getAllProducts($transaction_id)
	{
		$getAllOrders = "SELECT order_id FROM " . DB_PREFIX . "kaspay_transaction WHERE transaction_id = ".$this->db->escape($transaction_id)." ";
		$res = $this->db->query($getAllOrders);
		$orders = $res->rows;
		$allProducts = array();
		foreach($orders AS $order)
		{
			$products = $this->getOrderProducts($order['order_id']);
			
			foreach($products AS $product)
			{
				$allProducts[]=array(
				'productId'   		  => $product['product_id'],
				'productName' 		  => $product['name'],
				'productDescription'  	  => '',
				'urlImages'     	  => '',
				'qty' 		    	  => $product['quantity'],
				'weight' 		  => '',
				'price' 		  => number_format($product['price'],0,',','.'),
				'total'           => number_format($product['total'],0,',','.'),
				'shipping' 		  => '',
				'ppn' 		    	  => ''
				);
			}
			
		}
		return $allProducts;
	}
	
	public function getGrandTotal($transaction_id)
	{
		$getAllOrders = "SELECT order_id FROM " . DB_PREFIX . "kaspay_transaction WHERE transaction_id = ".$this->db->escape($transaction_id)." ";
		$res = $this->db->query($getAllOrders);
		$orders = $res->rows;
		$grandTotal = 0;
		foreach($orders AS $order)
		{
			$sql = "SELECT total FROM  " . DB_PREFIX . "order WHERE  order_id = '" . (int)$order['order_id'] . "'";
			$res = $this->db->query($sql);
			$total = $res->row;
			$grandTotal +=  (int)$total['total'];
		}
		return $grandTotal;
	}
	
	public function getOrderProducts($order_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_product WHERE order_id = '" . (int)$order_id . "'");
	
		return $query->rows;
	}
	
	
	
}
?>
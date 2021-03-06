<?php

require_once('nusoap.php');
require_once('phpmailer/class.phpmailer.php');
ini_set('soap.wsdl_cache_ttl', 1); 
ini_set("soap.wsdl_cache_enabled", 0);


$user 		 = 'demopi_andy';
$password 	 = '555666';
$db 		 = 'demopi_bungaindo';
$link 		 = mysql_connect('localhost', $user, $password);
$db_selected = mysql_select_db($db, $link);

if(isset($_GET['do']) && $_GET['do'] == 'thanks')
{
	//halaman confirmasi sukses. ketika kaspay berhasil melakukan transaksi, tombol continue akan mengarahkan ke confirm page
	//yang telah didaftarkan.
	echo 'merchant confirmation success';
	exit();
}
	
	$server = new nusoap_server();
	$server->configureWSDL('Merchant', 'urn:Merchant');	
		
		$server->wsdl->addComplexType(
			'Product',
			'complexType',
			'struct',
			'all',
			'',
			array(
				'productId'   		=> array('name' => 'productId', 'type' => 'xsd:string'),
				'productName' 		=> array('name' => 'productName', 'type' => 'xsd:string'),
				'productDescription'  	=> array('name' => 'productDescription', 'type' => 'xsd:string'),
				'urlImages'     	=> array('name' => 'urlImages', 'type' => 'xsd:string'),
				'qty' 		    	=> array('name' => 'qty', 'type' => 'xsd:int'),
				'weight' 		=> array('name' => 'weight', 'type' => 'xsd:int'),
				'price' 		=> array('name' => 'price', 'type' => 'xsd:int'),
				'shipping' 		=> array('name' => 'shipping', 'type' => 'xsd:int'),
				'ppn' 		    	=> array('name' => 'ppn', 'type' => 'xsd:int')
			)
		);
		$server->wsdl->addComplexType(
			  'Products',
			  'complexType', 
			  'array', 
			  '', 
			  'SOAP-ENC:Array', 
			  array(),
			  array(
				array('ref' 		=> 'SOAP-ENC:arrayType', 
				      'wsdl:arrayType'  => 'tns:Product[]')
			  ),
			  'tns:Product'
		);
		$server->wsdl->addComplexType(
			'OutputListTransaction',
			'complexType',
			'struct',
			'all',
			'',
			 array(
				'merchantId'    	=> array('name' => 'merchantId', 'type' => 'xsd:string'),
				'merchantName'	  	=> array('name' => 'merchantName', 'type' => 'xsd:string'),
				'merchantDescription' 	=> array('name' => 'merchantDescription', 'type' => 'xsd:string'),
				'urlLogo' 		=> array('name' => 'urlLogo', 'type' => 'xsd:string'),
				'landingTitle'		=> array('name' => 'landingTitle', 'type' => 'xsd:string'),
				'transactionNo'	  	=> array('name' => 'transactionNo', 'type' => 'xsd:string'),
				'product' 		=> array('name' => 'product', 'type' => 'tns:Products'),
				'grandtotal'	    	=> array('name' => 'grandtotal', 'type' => 'xsd:int'),
				'transactionDate'     	=> array('name' => 'transactionDate', 'type' => 'xsd:string')
			)
		);
		
		$server->wsdl->addComplexType(
			'OutputPaymentConfirmation',
			'complexType',
			'struct',
			'all',
			'',
			 array(
				'merchantId'    		=> array('name' => 'merchantId', 'type' => 'xsd:string'),
				'transactionNo' 		=> array('name' => 'transactionNo', 'type' => 'xsd:string'),
				'transactionDate' 		=> array('name' => 'transactionDate', 'type' => 'xsd:int'),
				'status'			=> array('name' => 'status', 'type' => 'xsd:int'),
				'reason'	  	   	=> array('name' => 'reason', 'type' => 'xsd:string'),
				'referenceNo'	    		=> array('name' => 'referenceNo', 'type' => 'xsd:string')
			)
		);
		
		$server->wsdl->addComplexType(
			'InputListTransaction',
			'complexType',
			'struct',
			'all',
			'',
			 array(
				'merchantId'    		=> array('name' => 'merchantId', 'type' => 'xsd:string'),
				'transactionNo' 		=> array('name' => 'transactionNo', 'type' => 'xsd:string')
			)
		);
		
		$server->wsdl->addComplexType(
			'InputPaymentConfirmation',
			'complexType',
			'struct',
			'all',
			'',
			 array(
				'merchantId'    		=> array('name' => 'merchantId', 'type' => 'xsd:string'),
				'transactionNo' 		=> array('name' => 'transactionNo', 'type' => 'xsd:string'),
				'transactionDate' 		=> array('name' => 'transactionDate', 'type' => 'xsd:int'),
				'amount'		    	=> array('name' => 'amount', 'type' => 'xsd:int'),
				'referenceNo'	    		=> array('name' => 'referenceNo', 'type' => 'xsd:string')
			)
		);
		
		$server->register('InputListTransaction',                   		// method name
		    array('InputListTransaction' 	=> 'tns:InputListTransaction'), // input parameters
		    array('OutputListTransaction' 	=> 'tns:OutputListTransaction'),// output parameters
		    'urn:Merchant',                                       		// namespace
		    'urn:Merchant#OutputListTransaction',              			// soapaction
		    'rpc',                                                  		// style
		    'encoded',                                              		// use
		    'Output List Transaction'                                   	// documentation
		);
		
		$server->register('InputPaymentConfirmation',                   	   // method name
		    array('InputPaymentConfirmation' 	=> 'tns:InputPaymentConfirmation'),// input parameters
		    array('OutputPaymentConfirmation' 	=> 'tns:OutputPaymentConfirmation'),// output parameters
		    'urn:Merchant',                                       		    // namespace
		    'urn:Merchant#OutputPaymentConfirmation',              		    // soapaction
		    'rpc',                                                     		    // style
		    'encoded',                                              		    // use
		    'Output Payment Confirmation'                                   	    // documentation
		);
		
		function InputListTransaction($param)
		{
			//your process here.
			//Output list produk berbentuk array berikut.
			/*$param['transactionNo'] = '1374642583';
			$param['merchantId'] = '48943060';*/
			$products = getAllProducts($param['transactionNo']);
			$grandTotal = getGrandTotal($param['transactionNo']);
			$output = 	
					array( 
					'merchantId' 			=> '48943060',
					'merchantName'	  	  	=> 'bungaindo',
					'merchantDescription' 		=> 'toko online',
					'urlLogo' 			=> '',
					'landingTitle'			=> 'Selamat Berbelanja',
					'transactionNo'	  	    	=> $param['transactionNo'],
					'product' =>$products,	
					'grandtotal'	    	=> $grandTotal,
					'transactionDate'     	=> time()			
			);

		//mysql_query("INSERT INTO inputlist(merchantid, storeid) VALUES('".$param['merchantId']."','".$param['transactionNo']."');");
		
		return $output;
		}
		
		function getAllProducts($transaction_id)
		{
			$getAllOrders = "SELECT order_id FROM oc_kaspay_transaction WHERE transaction_id = ".mysql_real_escape_string($transaction_id)." ";
			$res = mysql_query($getAllOrders);
			//$orders = mysql_fetch_assoc($res);
			$allProducts = array();
			while($order =  mysql_fetch_assoc($res))
			{
				//$products = $this->getOrderProducts($order['order_id']);
				$query = "SELECT * FROM oc_order_product WHERE order_id = '" . (int)$order['order_id'] . "'";
				$resProduct = mysql_query($query);
				
				while($product = mysql_fetch_assoc($resProduct))
				{
					$allProducts[]=array(
					'productId'   		  => $product['product_id'],
					'productName' 		  => $product['name'],
					'productDescription'  	  => '',
					'urlImages'     	  => '',
					'qty' 		    	  => $product['quantity'],
					'weight' 		  => '',
					'price' 		  => (int)$product['price'],
					'total'           => (int)$product['total'],
					'shipping' 		  => '',
					'ppn' 		    	  => ''
					);
				}
				
			}
			return $allProducts;
		}
		function getGrandTotal($transaction_id)
		{
			$getAllOrders = "SELECT order_id FROM oc_kaspay_transaction WHERE transaction_id = ". mysql_real_escape_string($transaction_id)." ";
			$res =  mysql_query($getAllOrders);
			$grandTotal = 0;
			while($order = mysql_fetch_assoc($res))
			{
				$sql = "SELECT total FROM  oc_order WHERE  order_id = '" . (int)$order['order_id'] . "'";
				$resTotal = mysql_query($sql);
				$total = mysql_fetch_assoc($resTotal);
				$grandTotal +=  (int)$total['total'];
			}
			return $grandTotal;
		}
		function InputPaymentConfirmation($param)
		{
		
			//your process and your output here
			
			if(!empty($param['transactionNo']) && !empty($param['referenceNo']))
			{
				$output = array(
						  'merchantId' 		=> $param['merchantId'],
						  'transactionNo' 	=> $param['transactionNo'],
						  'transactionDate' 	=> $param['transactionDate'],
						  'status'		=> 0, //berhasil
						  'reason'		=> 'success',
						  'referenceNo'		=> $param['referenceNo']
				);
			}else
			{
				$output = array(
						  'merchantId' 		=> $param['merchantId'],
						  'transactionNo' 	=> $param['transactionNo'],
						  'transactionDate' 	=> $param['transactionDate'],
						  'status'		=> 1, //gagal
						  'reason'		=> 'error',
						  'referenceNo'		=> $param['referenceNo']
				);
			}
			
			$myGrandTotal = getGrandTotal($param['transactionNo']);
			$myGrandTotal = (int)$myGrandTotal;
			if($myGrandTotal == $param['amount'])
			{
				mysql_query("INSERT INTO `oc_kaspay_paymentconfirm`(referenceNo,merchantId,transactionNo,transactionDate,amount,created) VALUES('".$param['referenceNo']."','".$param['merchantId']."','".$param['transactionNo']."','".$param['transactionDate']."','".$param['amount']."', NOW());");
			
				
				$getAllOrders = "SELECT order_id FROM oc_kaspay_transaction WHERE transaction_id = ".mysql_real_escape_string($param['transactionNo'])." ";
				$res = mysql_query($getAllOrders);
				//$orders = mysql_fetch_assoc($res);
				$allProducts = array();
				
				$getAdminDetails = 'SELECT * FROM oc_user WHERE username = \'admin\' ';
				$resAdmin = mysql_query($getAdminDetails);
				$adminDetail = mysql_fetch_assoc($resAdmin);
				
				while($order =  mysql_fetch_assoc($res))
				{
					
						$update  = "UPDATE oc_order_customer_payment set payment_to = 'kaspay',payment_from= 'kaspay',account_name= 'kaspay',payment_date= NOW(), status ='confirm' WHERE order_id = '".(int)$order['order_id']."'"; 
						mysql_query($update);
						
						$updatePaymentmethod = 'UPDATE oc_order set payment_method=\'kaspay\', payment_code=\'kaspay\' WHERE order_id = '.(int)$order['order_id'].' ';
						mysql_query($updatePaymentmethod);
						
						$smtpUsername = 'eluminous_sse22@eluminoustechnologies.com';
						$smtpPassword = 'eluminous900';
						$smtpHost = 'smtp.gmail.com';
						$smtpPort = '465';
						$smtpFromEmail = $adminDetail['email'];
						$smtpFromName = 'Bunga Indo';
						
						$message = "Dear Admin,<br/>
						     Customer has confirm payment for following order using kaspay<br/>
						     ORDER ID :".$order['order_id']."<br/><br/>
						     Thank you"; 
						
						$mail = new PHPMailer;

						//$mail->IsSMTP();                                      // Set mailer to use SMTP
						$mail->IsSendmail();
						$mail->Host = $smtpHost;  // Specify main and backup server
						//$mail->Port=$smtpPort; 
						//$mail->SMTPAuth = true;                               // Enable SMTP authentication
						//$mail->Username = $smtpUsername;       // SMTP username
						//$mail->Password = $smtpPassword;                           // SMTP password
						//$mail->SMTPSecure = 'ssl';                            // Enable encryption, 'ssl' also accepted

						$mail->From = $smtpFromEmail;
						$mail->FromName = $smtpFromName;
						$mail->IsHTML(true); 	                       // Set email format to HTML

						$mail->Subject = 'BungaIndo- Payment Confirmation';
						$mail->Body    = $message;
						$mail->AltBody = $message;
						$mail->AddAddress($adminDetail['email'],'Admin');  // Add a recipient
						
						$mail->Send();
				}	
			}
			else
			{
				$output = array(
						  'merchantId' 		=> $param['merchantId'],
						  'transactionNo' 	=> $param['transactionNo'],
						  'transactionDate' 	=> $param['transactionDate'],
						  'status'		=> 1, //gagal
						  'reason'		=> 'Invalid Grand Total',
						  'referenceNo'		=> $param['referenceNo']
				);
			}
			
			return $output;
		}

	$HTTP_RAW_POST_DATA = isset($HTTP_RAW_POST_DATA) ? $HTTP_RAW_POST_DATA : '';
	$server->service($HTTP_RAW_POST_DATA);

?>

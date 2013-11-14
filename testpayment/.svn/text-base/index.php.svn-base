<?php

require_once('lib/nusoap.php');
ini_set('soap.wsdl_cache_ttl', 1); 
ini_set("soap.wsdl_cache_enabled", 0);

$user 		 = 'root';
$password 	 = '';
$db 		 = 'wsdlmerchant';
$link 		 = mysql_connect('localhost', $user, $password);
$db_selected = mysql_select_db($db, $link);

if($_GET['do'] == 'thanks')
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
			$output = 	
					array( 
					'merchantId' 			=> '48943060',
					'merchantName'	  	  	=> 'bungaindo',
					'merchantDescription' 		=> 'toko online',
					'urlLogo' 			=> '',
					'landingTitle'			=> 'Selamat Berbelanja',
					'transactionNo'	  	    	=> $param['transactionNo'],
					'product' =>array(
					array(
						'productId'   		  => '9871',
						'productName' 		  => 'Laptop',
						'productDescription'  	  => 'laptop dengan spesifikasi tercanggih...',
						'urlImages'     	  => '',
						'qty' 		    	  => 1,
						'weight' 		  => 2,
						'price' 		  => 70000,
						'shipping' 		  => 2000,
						'ppn' 		    	  => 1000
					),
					array(
						'productId'   		  => '9872',
						'productName' 		  => 'Komputer',
						'productDescription'  	  => 'komputer dengan teknologi terbaru...',
						'urlImages'     	  => '',
						'qty' 		    	  => 2,
						'weight' 		  => 2,
						'price' 		  => 13000,
						'shipping' 		  => 3000,
						'ppn' 		    	  => 2000
					)),	
					'grandtotal'	    	=> 91000,
					'transactionDate'     	=> '123456789'			
			);
			
		mysql_query("INSERT INTO inputlist(merchantid, storeid) VALUES('".$param['merchantId']."','".$param['transactionNo']."');");
		
		return $output;
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

			mysql_query("INSERT INTO paymentconfirm(trxid,merchantid,storeid,trxdate,nominal) VALUES('".$param['referenceNo']."','".$param['merchantId']."','".$param['transactionNo']."','".$param['transactionDate']."','".$param['amount']."');");
			return $output;
		}
		
	$HTTP_RAW_POST_DATA = isset($HTTP_RAW_POST_DATA) ? $HTTP_RAW_POST_DATA : '';
	$server->service($HTTP_RAW_POST_DATA);

?>

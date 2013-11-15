<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php echo $title; ?></title>
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #000000;">
<div style="width: 680px;">
  <div style="float: right; margin-left: 20px;"><a href="<?php echo $store_url; ?>" title="<?php echo $store_name; ?>"><img src="<?php echo $image; ?>" alt="<?php echo $store_name; ?>" style="margin-bottom: 20px; border: none;" /></a></div>
  <div>
    <p style="margin-top: 0px; margin-bottom: 20px;">Dear <?php echo $strVendorName; ?></p>
	<p style="margin-top: 0px; margin-bottom: 20px;"><?php echo $store_name; ?> admin assigned following order to you </p>
	 <table style=" margin-bottom: 20px;">
	 <tr>
	 	<td style="font-size: 12px;	 text-align: left; padding: 7px;">order id</td>
		<td style="font-size: 12px;	 text-align: left; padding: 7px;"><?php echo $order_id; ?></td>
	 </tr>
	 <tr>
	 	<td style="font-size: 12px;	 text-align: left; padding: 7px;">Customer Name</td>
		<td style="font-size: 12px;	 text-align: left; padding: 7px;"><?php echo $customer_name; ?></td>
	 </tr>
	 <tr>
	 	<td style="font-size: 12px;	 text-align: left; padding: 7px;">Shipping Address</td>
		<td style="font-size: 12px;	 text-align: left; padding: 7px;"><?php echo $shipping_address; ?></td>
	 </tr>
	 <tr>
	 	<td style="font-size: 12px;	 text-align: left; padding: 7px;">Shipping City</td>
		<td style="font-size: 12px;	 text-align: left; padding: 7px;"><?php echo $shipping_city; ?></td>
	 </tr>
	  <tr>
	 	<td style="font-size: 12px;	 text-align: left; padding: 7px;">Shipping Post code</td>
		<td style="font-size: 12px;	 text-align: left; padding: 7px;"><?php echo $shipping_postcode; ?></td>
	 </tr>
	 <table>
	<div style="font-size: 14px;  font-weight: bold; text-align: left; padding: 7px; color: #222222; margin-bottom: 10px">Product Details:</div>
	 <table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">
    <thead>
      <tr>
        <td style="font-size: 12px;  background-color: #EFEFEF; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $text_product; ?></td>
        <td style="font-size: 12px;  background-color: #EFEFEF; font-weight: bold; text-align: right; padding: 7px; color: #222222;"><?php echo $text_quantity; ?></td>
        <td style="font-size: 12px;  background-color: #EFEFEF; font-weight: bold; text-align: right; padding: 7px; color: #222222;"><?php echo $text_price; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($products as $product) { ?>
      <tr>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $product['name']; ?></td>
   
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;"><?php echo $product['quantity']; ?></td>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;"><?php echo $product['price']; ?></td>
      </tr>
      <?php } ?>
   
    </tbody>
  </table>
    <p style="margin-top: 0px; margin-bottom: 20px;">Thanks,<br><?php echo $store_name; ?></p>
  </div>
</div>
</body>
</html>

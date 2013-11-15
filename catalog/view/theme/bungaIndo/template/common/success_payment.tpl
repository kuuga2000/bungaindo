<?php echo $header; ?>
<div id="content">

 <div class="cart-tab" style="margin-top:88px;">
        <ul>
            <li class="light"><i></i><span>Cart</span></li>
            <li class="light"><i></i><span class="sec-tab">Shipping Address</span></li>
            <li class="light"><i></i><span class="third-tab">Payment</span></li>
            <li class="active"><i></i><span>Success</span></li>
        </ul>
    </div>


  <h1>THANK YOU</h1>
  
  <div class="buttons">
  <div class="trans"><?php echo $text_message; ?></div>
  <div class="full_width left">

  <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <?php if(isset($orders)) { 
       foreach($orders AS $order)
	   {
	?>
  <tr>
    <td width="105" class="thnku1">ORDER ID</td>
    <td width="21" align="center">:</td>
    <td style="color:#ee2b7b;" class="thnku2"><?php echo $order['order_id']; ?></td>
  </tr>
  <tr>
    <td class="thnku1">TOTAL ORDER</td>
    <td width="21" align="center">:</td>
    <td class="thnku2">IDR <?php echo number_format($order['total'],0,',','.'); ?></td>
  </tr>
  
  
  <?php } } ?>
  
  <tr><td colspan="3" height="10"></td></tr>
  <?php if($completeTotal > 0)
  {
  	?>

  <tr>
    <td class="thnku1" style="padding: 0px" valign="top">PAYMENT DETAILS</td>
    <td width="21" align="center" valign="top">:</td>
    <td class="thnku3" style="padding: 0px"><?php if($order['payment_method'] == 'bank_transfer') { ?>
		<div style="width: 100%; float: left; padding-bottom: 10px">
		<div style="float: left">Bank Transfer :</div>
			<div style="float: left; padding-left:5px;">-BCA (2418018777) a/n Tan Kong Ie Isaphira T<br>-Mandiri (900-00-0482321-8) a/n Tan Kong Ie Isaphira T</div>
		</div>
	 
	<?php } ?></td>
  </tr>
  <?php } ?>
  
</table>

  </div>
  <?php if($completeTotal > 0)
  {
  	?>
  <p><?php echo $text_end; ?></p>
   <?php } else { echo '<p>Thank You</p>.'; } ?> 
	<div class="left"><input type="button" class="back_to_home_btn" value="" onclick="window.location.href='index.php'"/> &nbsp;&nbsp; <input type="button" class="go_to_acct_btn" value="" onclick="window.location.href='index.php?route=account/account'"/></div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>

<?php  echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
<?php if (!isset($redirect)) { ?>
<!--<div class="left">-->

    <div class="cart-tab" style="margin-top:88px;">
        <ul>
            <li class="light"><i></i><span>Cart</span></li>
            <li class="light"><i></i><span class="sec-tab">Shipping Address</span></li>
            <li class="active"><i></i><span class="third-tab">Payment</span></li>
            <li><i></i><span>Success</span></li>
        </ul>
    </div>
	
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>

  <div class="checkout-heading" ><span><?php echo $text_payment_method ?></span>&nbsp;
  <form id="confrmForm"  method="POST">
 
  <input checked="checked" type="radio" name="paymentmethod" value="bank_transfer" id="bank_transfer"  />
  <label>Bank Transfer(BCA & Mandiri)</label> 
 
  <?php if(isset($total) && $total > 5000) { ?>
   <input type="radio" name="paymentmethod" value="kaspay" id="kaspay" />
  <label>Kaspay</label>
  <?php } ?>
  <input type="hidden" name="confirmOrder" value="confirmOrder"/>
    </form>
 </div>
<!-- <div id="banktransferDiv" class="">
 		<h2><?php echo $text_instruction; ?></h2>
		<div class="content">
		  <p><?php echo $text_description; ?></p>
		  <p><?php echo $bank; ?></p>
		  <p><?php echo $text_payment; ?></p>
		</div>
 </div>-->
 
 <div class="checkout-product">
 
  <table class="ordr_lst_tbl_in"  style="border-bottom:none !important; margin-bottom:0px;" border="0" cellpadding="0" cellspacing="0">
    <thead>
      <tr>
        <th><?php echo 'product detail'; ?></th>
        <th>&nbsp;</th>
        <th><?php echo $column_model; ?></th>
        <th>QTY</th>
        <th><?php echo $column_price; ?></th>
        <th><!--<?php echo $column_total; ?>--></th> 
		<th></th>
      </tr>
    </thead>
    <tbody>
    
      <?php 
	  $productCount=1;
	  foreach ($products as $product) {  //echo "<pre>"; print_r($delivery_date_pass);?>
      <tr>
        <td class="name" width="350"><?php echo $productCount; ?>.&nbsp;<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a><?php if(isset($this->session->data['hideSender'][$product['product_id']]) && $this->session->data['hideSender'][$product['product_id']] == 1){ echo ' <span style="font-weight:400">(hide sender)</span>'; } ?> <br/>
        - <?php echo $product['shippingMethod']; ?>
		<?php if(count($product['upsellProducts']) > 0) { ?>
		<br>
		- Additional<br>
		<table class="inner-name margin_none">
		  			<?php foreach($product['upsellProducts'] AS $upsellProduct) { 
                   ?>
		            <tr>
                    <td width="10" align="center"></td>
		            <td width="60" >-<?php echo $upsellProduct['cat_name'] ?></td>
					<td width="10"  align="center">:</td>
		         	<td width="80" align="left" class="ordr_lst_black"><?php echo $upsellProduct['name'];  ?> </td>
					
					<td class="ordr_lst_black">IDR</td>
					<td class="ordr_lst_black" align="right">  <?php echo number_format($upsellProduct['price'],0,',','.');  ?></td>
		            <td width="120" style="padding-left: 5px !important"><a href="<?php echo $removeUpsell.'&product='.$product['product_id'].'&upsell='.$upsellProduct['product_id'];?>"><img src="catalog/view/theme/bungaIndo/images/cross_03.png" alt="" /></a></td>
		            </tr>
		  <?php } ?>
		  </table> 
		 <?php } ?> 
		 <?php if(isset($this->session->data['comment_message'][$product['product_id']]) && $this->session->data['comment_message'][$product['product_id']] != '') { ?>
		<br>
		- Card message
		<!--<br><div style="margin-left: 20px;"><?php /*if(isset($this->session->data['comment_message'][$product['product_id']])) { echo $this->session->data['comment_message'][$product['product_id']]; }*/ ?> </div>  -->
		<?php } ?>
		</td>
        <td class="model" width="5">
        - <br />
        - <br />
        </td>
	      <?php  
	       $key_date=$product['product_id']; 
		   if(array_key_exists($key_date, $delivery_date_pass)) 
			 {
			 	// $ddate=$delivery_date_pass[$key_date];
                $ddate= date('d F Y', strtotime($delivery_date_pass[$key_date]));
			 }
			else $ddate= '';
		  ?>
             
        <td class="model" width="307">Delivery Date:<?php echo $ddate; ?><br/>
		  Delivery Address: <br>
			  <?php echo $product['shppingAddres']['shipping_firstname']." ".$product['shppingAddres']['shipping_lastname']; ?><br/>
                     <?php echo $product['shppingAddres']['shipping_address_1'].', '.$product['shppingAddres']['shipping_city'].', '.$product['shppingAddres']['shipping_postcode']; ?><br/><?php echo $product['shppingAddres']['telephone']; ?>                                  
        </td>
        <td class="quantity font12" width="153"><?php echo $product['quantity']; ?>pc</td>
        <td class="price" width="94">Flower<!--<?php echo $product['price']; ?>-->
		<?php if(count($product['upsellProducts']) > 0) { ?>
			<br>Additional
		<?php } ?>	
		</td>
		<td class="ordr_lst_black font12" width="25"> 
			IDR <br> <?php if(count($product['upsellProducts']) > 0) { ?> IDR <?php } ?>
		</td>
        <td class="total ordr_lst_black font12" align="right" style="text-align: right"> <?php echo  number_format($product['total'],0,',','.'); ?><br>
			<?php if(count($product['upsellProducts']) > 0) { echo number_format($product['additionalPrice'],0,',','.'); } ?>
		</td>
      </tr>

      <?php $productCount++; } ?>
    </tbody>
    
    <tfoot>
    
    <tr>
            <td  colspan="7" class="padding_none" valign="top">
                   <table class="margin_none inner-name" border="0" cellspacing="0" cellpadding="0" style="border-top: solid 1px #e7eacb;">
  <tr>
    <td width="815" style="vertical-align:middle"><div class="chkout-footer">

 <div id="coupon" class="" >
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
      	<div  style="padding-top: 5px">
	        <div class="left" ><span class="font12">Promotion code &nbsp;&nbsp; : &nbsp;&nbsp; </span>
			
	        <input type="text" name="coupon" value="<?php echo $coupon; ?>" style="width:114px; margin-right:7px;"  />
	        <input type="hidden" name="next" value="coupon" /></div>
	        <div class="left"><input type="submit" value="" class="add_btn "/>
			</div>
	    </div>
      </form>
    </div>
 </td>
    <td>
    <table width="100" border="0" cellspacing="0" cellpadding="0" class="margin_none">
   
      <?php foreach ($totals as $total) {  
     if($total['title']!='Total' && $total['code']!='coupon') 
            {?>
     
      <tr>
            <td class="price" width="94"><?php echo $total['title']; ?></td>
			<td class="ordr_lst_black font12" width="25">IDR</td>
            <td class="total ordr_lst_black font12" align="right" style="text-align: right"> <?php echo number_format($total['value'],0,',','.'); ?></td>
            
      </tr>
      <?php } } ?>
      <?php foreach ($totals as $total) {  
    if($total['code']=='coupon') 
            {?>
     
      <tr>
            <td class="price" width="94" style="width:100px;">Promotion Code</td>
			<td class="ordr_lst_black font12" width="25">IDR</td>
            <td class="total ordr_lst_black font12" align="right" style="text-align: right"><?php echo number_format($total['value'],0,',','.'); ?></td>
            
      </tr>
      <?php } } ?>
 
</table>

    </td>
  </tr>
  <tr>
  	<td style=" border-top: 1px solid #E7EACB !important;" width="809">&nbsp;</td>
    <td style=" border-top: 1px solid #E7EACB !important;">
    
    <table width="100" border="0" cellspacing="0" cellpadding="0" class="margin_none">
    
      <tr>
        <?php foreach ($totals as $total) {  
     if($total['title']=='Total') 
            {?>
        <td class="price" style="width:100px;">
<span style="padding: 10px 0 0 0; "><?php echo $total['title']; ?></span></span>
<span class="thnku2" style="padding:0 10px;">IDR</span> 
</td>
        <td class="total" style="text-align:right"><span class="thnku2"><?php echo number_format($total['value'],0,',','.'); ?></span></td>
      </tr>
      <?php } } ?>
</table>
    </td>
  </TR>
 
</table>
            </td>

	  </tr>
    </tfoot>
  </table>
</div> <!--</div>-->
 <!--<div id="voucher" class="content" >
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <?php echo $entry_voucher; ?>&nbsp;
        <input type="text" name="voucher" value="<?php //echo $voucher; ?>" />
        <input type="hidden" name="next" value="voucher" />
        &nbsp;
        <input type="submit" value="<?php echo $button_voucher; ?>" class="button" />
      </form>
      </div>
-->

 <table  border="0" cellspacing="0" cellpadding="0" class="margin_none" style="float:right">
  
 <tr>
 
 <td><div class="buttons">
  <div class="right">
    <input type="button" onclick="confirmOrder()" value="" id="button-confirm" class="checkout_btn" />
  </div>
</div>
<?php } else { ?>
<?php } ?></td>
 
 </tr>
</table>
  
  
 
 
 



<script>

// function to post the form
function confirmOrder()
{
	/*if($('input[name=paymentmethod]:checked').val() == 'bank_transfer')
	{
		$('#confrmForm').submit()
	}
	else
	{
		alert('please select bank transfer');
	}*/
	$('#confrmForm').submit()
}
$(document).ready(function(){
	$('#bank_transfer').click(function(){
		$('#banktransferDiv').removeClass('displayNone');	
	})
	$('#doku').click(function(){
		$('#banktransferDiv').addClass('displayNone');	
	})
         /*$("#bank_transfer").click(function(){
           //  $("#comment_div").show(1000);
			 $("#bank_transfer").attr('checked', true);
			 $("#doku").attr('checked', false);
			//$(this).checked = false; 
          });

          $("#doku").click(function(){
            // $("#comment_div").hide(1000);
			 $("#doku").attr('checked', true);
			  $("#bank_transfer").attr('checked', false);
			// $(this).checked = false; 
          });*/

  });
</script>
</div>
<?php echo $footer; ?>
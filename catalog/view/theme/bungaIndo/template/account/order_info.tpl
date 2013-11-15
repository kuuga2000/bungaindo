<?php
$strBreadcrumb = '';
 foreach ($breadcrumbs as $breadcrumb)
 {
 	$strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
 }
?>
<?php echo $header; ?>

<div class="category_box">
<div class="home_ttl_fold"><span class="whtDot"></span> Customer Account <span class="whtDot"></span></div>
<div class="afflt_acc_bx"> 
<?php echo $column_left; ?><?php //echo $column_right; ?>
<div class="afflt_rgt">
<div id="content"><?php echo $content_top; ?>
  <div class="order_id"><span class="ordr_lst_black" style="font-weight:400 !important;">Order Id :</span> <span class="ordr_lst_pink"><?php echo  $orderDetails['order_id']; ?></span></div>
   <?php if(count($orderDetails) > 0) { ?>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ordr_lst_tbl_in">
              <tr>
                <th>PRODUCT DETAIL</th>
                <th width="20">&nbsp;</th>
                <th width="180">DELIVERY DETAIL</th>
                <th width="60">QTY</th>
                <th width="20">&nbsp;</th>
                <th width="90">PRICE</th>
                <th>&nbsp;</th>
                <th>&nbsp;</th>
              </tr>
			  <?php if(count($orderProducts) > 0) {
               
			   foreach($orderProducts AS $orderProduct) {?>
              <tr>
                           <?php  if($orderDetails['hide_sender']=='1') $sender="Hide Sender"; else $sender="Show Sender"; ?>
               <td valign="top" class="LatoRegular font12">1.  <?php echo $orderProduct['name']."($sender)"; ?> </td>
                <td class="LatoRegular font12">&nbsp;</td>
                <td valign="top">- Delivery Date : <?php echo date('d-F-Y',strtotime($orderProduct['delivery_date'])); ?><br>- Order time : <?php echo $orderProduct['order_time'];?></td>
                <td valign="top" class="font12"><?php echo $orderProduct['qty']; ?> pc</td>
                <td valign="top" class="font12">&nbsp;</td>
                <td valign="top" class="font12">Flower</td>
                <td valign="top" align="right" class="ordr_lst_black font12">IDR</td>
                <td valign="top" align="right" class="ordr_lst_black font12"> <?php echo number_format($orderProduct['total'],0,',','.'); ?></td>
              </tr>
              <tr>
                <td>- <?php echo $orderProduct['shippingMethod']; ?> </td>
                <td>&nbsp;</td>
                <td>- Delivery Address :</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="font12"><?php if(count($additionalProducts) > 0) {?>Additional<?php }?></td>
                <td align="right" class="ordr_lst_black font12"><?php if(count($additionalProducts) > 0) {?>IDR<?php }?></td>
                <td align="right" class="ordr_lst_black font12"><?php if(count($additionalProducts) > 0) {?> <?php echo number_format($additionalProductPrice,0,',','.'); ?><?php }?> </td>
              </tr>
               
              <tr>
                <td><?php if(count($additionalProducts) > 0) {?> -  Additional <?php }?></td>
                <td>&nbsp;</td>
                <td>&nbsp;&nbsp; a/n <?php echo $orderDetails['shipping_firstname'].' '.$orderDetails['shipping_lastname']; ?></td>
                <td>&nbsp;</td>
                <td class="font12">&nbsp;</td>
                <td class="font12">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              
              <tr>
                <td class="padding_none" valign="top" width="200">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0" class="text_color">
				  <?php if(count($additionalProducts) > 0) { 
				  		foreach($additionalProducts AS $additionalProduct)
						{
                        $productCatName = $this->model_catalog_product->getCategoriesName($additionalProduct['product_id']);	
				  ?>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td valign="top"> - <?php echo $productCatName; ?></td>
                        <td width="16" align="center">:</td>
                        <td valign="top" class="LatoRegular"><?php echo $additionalProduct['name']; ?> </td>
						<td  class="ordr_lst_black">IDR</td>
                        <td align="right" class="ordr_lst_black" style=""><?php echo number_format($additionalProduct['price_add'],0,',','.'); ?></td>
						<td>&nbsp;</td>
                      </tr>
     				<?php } } ?>
                    </table>
                </td>
                <td class="padding_none">&nbsp;</td>
                <td valign="top" class="padding_none"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="text_color">
                 <tr><td>&nbsp;&nbsp; <?php echo $orderDetails['shipping_address_1'].', '.$orderDetails['shipping_postcode']; ?></td></tr>	
				 <tr><td>&nbsp;&nbsp; <?php echo $orderDetails['shipping_city'].', '.$orderDetails['shipping_zone']; ?></td></tr>
                </table></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <?php if($orderDetails['comment']!='') 
              {
              ?>
              <tr>
                
                <td>- Card message<br><div style="margin-left:7px;"><?php echo $orderDetails['comment']; ?></div></td>
                <!--<td>- Card message</td>-->
                <td>&nbsp;</td>
                 <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              
               
			 <?php } } } ?>
       
	   <tr>
          <td colspan="6" class="straight_border_top" style="height: 1px; padding-bottom: 0px"></td>
		  <td class="straight_border_top" style="height: 1px;  padding-bottom: 0px"></td>
          <td class="straight_border_top" style="height: 1px;  padding-bottom: 0px"></td>
       </tr>      
             <?php foreach ($totals as $total) { ?>
      <tr>
       
       		<?php if($total['title']!='Total' && $total['code']!='coupon') 
            {?>
            <td colspan="5">&nbsp; </td>
          <td align="left" > <?php echo $total['title']; ?></td>
		  <td align="right" class="ordr_lst_black font12">IDR</td>
           <td align="right" class="ordr_lst_black font12"><?php echo number_format($total['value'],0,',','.'); ?></td>
      		<?php } ?>
      </tr>
       <?php } ?>
       
      <?php foreach ($totals as $total) { ?>
        <?php if($total['code']=='coupon') 
            {?>
      <tr>
        <td colspan="5">&nbsp;</td>
          
     <td>Promotion Code</td>
	 <td align="right" class="ordr_lst_black font12">IDR</td>
           <td align="right" class="ordr_lst_black font12"><?php echo  number_format($total['value'],0,',','.'); ?></td>
      </tr>
      
       <?php } } ?>
     
      
        </table>
		<table width="100%" cellpadding="0" cellspacing="">
        <?php foreach ($totals as $total) { ?>
        <?php if($total['title']=='Total') 
            {?>
     <tr>     <td align="right" height="40"><span class="thnku2" style="padding-top: 10px; float:right;"><span style="padding: 0px 24px;">IDR</span><?php echo  number_format($total['value'],0,',','.'); ?></span><span style="padding: 10px 0 0 0; float: left; width:76.5%  "><?php echo $total['title']; ?></span></td></tr>
        <?php } } ?>
      </table>
            
            
  	    <?php } ?>
        <table width="100%" cellpadding="0" cellspacing="">
       <?php if($orderDetails['order_payment_status'] == 'not confirm') { ?>
			 <td align="right" height="40">	
             <a href="<?php echo $processOrderAction; ?>&order_id=<?php echo $orderDetails['order_id']; ?>" class="confirm_btn">&nbsp;</a>
				</td>
				<?php } ?>
      </table>
            
            
  	   
           
  <!--<div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>--> 
  <?php echo $content_bottom; ?></div>
</div>
</div>
</div>
<?php echo $footer; ?>
<script type="text/javascript">
$(document).ready(function() {
	
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
});
//---- function to process an order using ajax call
	function processOrder(order_id)
	{
		$('#order_id').val(order_id);
		$('#processOrderFrm').submit();		
	}
</script>	
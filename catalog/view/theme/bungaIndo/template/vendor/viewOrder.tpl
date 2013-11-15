<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<div id="content">
  <div class="category_box">
    <div class="home_ttl_fold"><span class="whtDot"></span> <?php echo $heading_title; ?> <span class="whtDot"></span></div>
    <div class="afflt_acc_bx">
      <div class="afflt_lft">
          <?php echo $column_left; ?>
      </div>
      <div class="afflt_rgt">
           <?php if(count($orderDetails) > 0) { ?>
		    <div class="order_id"><span style="font-weight:400 !important;" class="ordr_lst_black">ORDER ID</span> <span class="ordr_lst_pink padding_lft_rgt10"><?php echo $orderDetails['order_id']; ?></span>  
            <span class="padding_lft_rgt10">|</span>
            <span style="font-weight:400 !important; text-transform:capitalize;" class="ordr_lst_black">Status &nbsp; : &nbsp; 
            
            
            <?php echo $orderDetails['order_status']; ?></span></div>
            
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="ordr_lst_tbl_in">
              <tr>
                <th width="230">PRODUCT DETAIL</th>
                <th width="25">&nbsp;</th>
                <th width="189">DELIVERY DETAIL</th>
                <th width="27">QTY</th>
                <th width="25">&nbsp;</th>
                <th>PRICE</th>
                <th width="10">&nbsp;</th>
                <th width="74">&nbsp;</th>
              </tr>
			  <?php if(count($orderProducts) > 0) { 
			   foreach($orderProducts AS $orderProduct)?>
			   <?php  if($orderDetails['hide_sender']=='1') $sender="(Hide Sender)"; else $sender="(Show Sender)"; ?>
              <tr>
                <td class="LatoRegular font12">1.  <?php echo $orderProduct['name'].$sender; ?> </td>
                <td class="LatoRegular font12">&nbsp;</td>
                <td>- Delivery Date : <?php echo date('d-F-Y',strtotime($orderProduct['delivery_date'])); ?></td>
                <td class="font12"><?php echo $orderProduct['quantity']; ?>pc</td>
                <td class="font12">&nbsp;</td>
                <td class="font12">Flower</td>
                <td class="font12">&nbsp;</td>
                <td class="ordr_lst_black font12">IDR <?php echo number_format($orderProduct['price'],0,',','.'); ?></td>
              </tr>
              <tr>
                <td>- <?php echo $orderProduct['shippingMethod']; ?> </td>
                <td>&nbsp;</td>
                <td>- Customer :
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="font12">Additional</td>
                <td class="font12">&nbsp;</td>
                <td class="ordr_lst_black font12">IDR <?php echo number_format($additionalProductPrice,0,',','.'); ?></td>
              </tr>
              <tr>
                <td>-  Additional</td>
                <td>&nbsp;</td>
                <td>&nbsp;&nbsp;<?php echo $orderDetails['payment_firstname']; ?> / No-number</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
				 <?php foreach ($totals as $total) { ?>
       
       		<?php if($total['code']=='coupon') 
            {?>
                <td class="font12" style="width:100px;">Promotion Code</td>
                <td class="font12">&nbsp;</td>
                <td class="ordr_lst_black font12">IDR <?php echo number_format($total['value'],0,',','.'); ?></td>
      		<?php }  } ?>
              </tr>
              <tr>
                <td valign="top" class="padding_none" width="200px"> 
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="text_color">
				  <?php if(count($additionalProducts) > 0) { 
				  		foreach($additionalProducts AS $additionalProduct)
						{
                        $productCatName = $this->model_catalog_product->getCategoriesName($additionalProduct['product_id']);
				  ?>
                      <tr>
                        <td width="10">&nbsp;</td>
                        <td> - <?php echo $productCatName; ?></td>
                        <td width="16" align="center">:</td>
                        <td class="LatoRegular"><?php echo $additionalProduct['name']; ?> </td>
						<td><strong>IDR</strong></td>
                        <td align="right" ><strong><?php echo number_format($additionalProduct['total'],0,',','.'); ?></strong></td>
                      </tr>
     				<?php } } ?>
                    </table>
                </td>
                <td>&nbsp;</td>
                <td class="padding_none">
                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="text_color">
                  <tr>
                    <td>- Delivery Address :</td>
                  </tr>
                  
                  <tr>
                    <td>&nbsp;&nbsp;a/n <?php echo $orderDetails['shipping_firstname'].' '.$orderDetails['shipping_lastname']; ?></td>
                  </tr>
                  
                  <tr>
                  	<td>&nbsp;&nbsp;<?php echo $orderDetails['shipping_address_1'].', '.$orderDetails['shipping_city'].', '.$orderDetails['shipping_postcode']; ?></td>
                  </tr>
                  
                  <tr>
                  	<td>&nbsp;&nbsp;<?php echo $orderDetails['telephone']; ?></td>
                  </tr>
                  
                </table>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
				<td colspan="3" valign="top">
				
				 <?php foreach ($totals as $total) { ?>
       
       		<?php if($total['code']=='credit') 
            {?>
			<table>
			<tr>
                <td class="font12" style="width:55px;">Credit</td>
                <td class="font12">&nbsp;</td>
                <td class="ordr_lst_black font12">IDR <?php echo number_format($total['value'],0,',','.'); ?></td>
			</tr>
			</table>
      		<?php }  } ?> 
                
              
			  <?php foreach ($totals as $total) { ?>
				               
                <?php if($total['title']=='Total') 
            {?>
			<table>
			<tr>
     <td valign="top" style="width: 79px"><span style="padding: 10px 0 0 0; "><?php echo $total['title']; ?></span>
     <span style="padding: 0px 10px; font-size:18px;" class="thnku2">IDR</span>
     </td>
                <td>&nbsp;</td>
                <td valign="top">
                <span class="thnku2" style="padding-top: 10px; "><?php echo number_format($total['value'],0,',','.'); ?></span>
                
                </td>
	 </tr>
	 </table>
        <?php } } ?>
		
			  </td>
               <!-- <td class="font12">Total</td>
                <td class="font12">&nbsp;</td>
                <td class="ordr_lst_black font12">IDR <?php ?></td>-->
              </tr>
              
              <tr>
              <?php if($orderDetails['comment']!='') 
              {
              ?>
                <td>- Card message<br><div style="margin-left:7px;"><?php echo $orderDetails['comment']; ?></div></td>
                
                <?php }
                else { ?>
                 <td>&nbsp;</td>
                <?php } ?>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>
				<?php if(isset($this->request->get['frm']) && $this->request->get['frm'] == 'pending' && $orderDetails['order_status'] == 'Accepted') { ?>
				<input name="" type="button" value="" class="process_btn" onclick="processOrder(<?php echo $orderDetails['order_id']; ?>)" />
				<form name="processOrderFrm" id="processOrderFrm" method="POST" action="<?php echo $processOrderAction ?>">
					<input type="hidden" name="order_id" id="order_id" value=""/>
				</form>
				<?php }elseif(isset($this->request->get['frm']) && $this->request->get['frm'] == 'shipping' && $orderDetails['order_status'] == 'Processed') { ?>
				<input name="" type="button" value="" class="shipped_btn" onclick="shippOrder(<?php echo $orderDetails['order_id']; ?>)" />
				<form name="shippOrderFrm" id="shippOrderFrm" method="POST" action="<?php echo $shippOrderAction ?>">
					<input type="hidden" name="order_id" id="order_id" value=""/>
				</form>
				<?php } elseif($orderDetails['order_status'] == 'Approved' || $orderDetails['order_status'] == 'Assigned' )  { ?>
				<input name="" type="button" value="" class="get_order_btn" onclick="acceptOrder(<?php echo $orderDetails['order_id']; ?>)" />
				<form name="acceptOrderFrm" id="acceptOrderFrm" method="POST" action="<?php echo $acceptOrderAction ?>">
					<input type="hidden" name="order_id" id="order_id" value=""/>
				</form>
				<?php } ?>
				</td>
              </tr>
			
			 <?php } ?>
            </table>
	  	   <?php } ?>
	  </div>	
    </div>
  </div>
</div>
<script type="text/javascript">
	//---- function to accept an order using ajax call
	function acceptOrder(order_id)
	{
		$('#order_id').val(order_id);
		$('#acceptOrderFrm').submit();		
	}
	
	//---- function to process an order using ajax call
	function processOrder(order_id)
	{
		$('#order_id').val(order_id);
		$('#processOrderFrm').submit();		
	}
	
	//---- function to shipped an order using ajax call
	function shippOrder(order_id)
	{
		$('#order_id').val(order_id);
		$('#shippOrderFrm').submit();		
	}
	
</script>
<!-- <?php// foreach ($totals as $total) { ?>
      <tr>
       
      <td colspan="5"></td>
       
          <td class="ordr_lst_black font12"><b><?php echo $total['title']; ?>:</b></td>
          <td></td>
           <td class="ordr_lst_black font12"><?php echo $total['text']; ?></td>
      
      </tr>
      <?php// } ?>-->
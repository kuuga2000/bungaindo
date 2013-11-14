<?php echo $header; ?>

<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } 
?>
<div id="content">
 <div class="category_box">
  <div class="home_ttl_fold"><span class="whtDot"></span> <?php echo $heading_title; ?> <span class="whtDot"></span></div>
  <div class="afflt_acc_bx">
      <div class="afflt_lft">
          <?php echo $column_left; ?>
      </div>
	  <div class="afflt_rgt">
	  		<h2 style="font-size: 14px;"><?php echo $region ?></h2>
			<?php if($orderlists) { ?>
	  		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="ordr_lst_tbl">
				<thead>
					<tr>
						<th>ORDER ID</th>
						<th>DELIVERY DATE</th>
						<th>PAYMENT</th>
						<th>TOTAL PRICE</th>
						<th>STATUS</th>
						<th width="120">&nbsp;</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach($orderlists AS $orderlist){ ?>
						<tr>
							<td class="ordr_lst_pink"><a href="<?php echo $link_view_order;?>&order_id=<?php echo $orderlist['order_id']; ?>"><?php echo $orderlist['order_id']; ?></a></td>
							<td><?php echo $orderlist['delivery_date']; ?></td>
							<td><?php echo $orderlist['payment_method']; ?></td>
							<td class="ordr_lst_black">IDR <?php echo number_format($orderlist['total'],0,',','.'); ?></td>
							<td><?php if($orderlist['name'] == 'Approved' || $orderlist['name'] == 'Assigned') {echo 'Project'; } else { echo 'Taken'; } ?></td>
							<td><?php if($orderlist['name'] == 'Approved' || $orderlist['name'] == 'Assigned') { ?><input type="button" class="get_order_btn" value="" id="getOrder_<?php echo $orderlist['order_id']; ?>" onclick="window.location.href ='<?php echo $link_view_order;?>&order_id=<?php echo $orderlist['order_id']; ?>'" /><?php } else { echo '&nbsp;'; } ?></td>
						</tr>
					<?php }  ?>
				</tbody>
			</table>
			<?php }else{ echo 'There are no orders to display'; } ?>	
			<?php if($showPagination) { ?>
			<div class="pagination"> 			
			<?php echo $pagination; ?>
			</div>			
			<?php } ?>
		</div>	
	</div>
</div>
	<form name="acceptOrderFrm" id="acceptOrderFrm" method="POST" action="<?php echo $acceptOrderAction ?>">
		<input type="hidden" name="order_id" id="order_id" value=""/>
	</form>
<script type="text/javascript">
	//---- function to accept an order using ajax call
	function acceptOrder(order_id)
	{
		$('#order_id').val(order_id);
		$('#acceptOrderFrm').submit();		
	}
	
</script>	
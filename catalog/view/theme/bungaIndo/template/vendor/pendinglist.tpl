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
	  	<?php if($pendinglists) { ?>
	  		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="ordr_lst_tbl">
				<thead>
					<tr>
						<th>ORDER ID</th>
						<th>DELIVERY DATE</th>
						<th>PAYMENT</th>
						<th>TOTAL PRICE</th>
						<th>STATUS</th>
						<th width="120" align="center">&nbsp;</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach($pendinglists AS $pendinglist){ ?>
						<tr>
							<td class="ordr_lst_pink"><a href="<?php echo $link_view_order;?>&order_id=<?php echo $pendinglist['order_id']; ?>"><?php echo $pendinglist['order_id']; ?></a></td>
							<td><?php echo $pendinglist['delivery_date']; ?></td>
							<td><?php echo $pendinglist['payment_method']; ?></td>
							<td class="ordr_lst_black">IDR <?php echo number_format($pendinglist['total'],0,',','.'); ?></td>
							<td><?php if($pendinglist['name'] == 'Accepted') { echo 'Pending';} else { echo $pendinglist['name']; } ?></td>
							<td width="120" align="center"><?php if($pendinglist['name'] == 'Accepted') { ?><input type="button" class="process_btn" value="" id="getOrder_<?php echo $pendinglist['order_id']; ?>" onclick="window.location.href = '<?php echo $link_view_order;?>&order_id=<?php echo $pendinglist['order_id']; ?>'" /><?php } ?></td>
						</tr>
					<?php }  ?>
				</tbody>
			</table>
			<?php if($showPagination) { ?>
				<div class="pagination"> 			
				<?php echo $pagination; ?>
				</div>		
			<?php } ?>
		<?php }else { echo 'There are no orders to display';} ?>		
		</div>	
	</div>
</div>
	<form name="processOrderFrm" id="processOrderFrm" method="POST" action="<?php echo $processOrderAction ?>">
		<input type="hidden" name="order_id" id="order_id" value=""/>
	</form>
<script type="text/javascript">
	//---- function to process an order using ajax call
	function processOrder(order_id)
	{
		$('#order_id').val(order_id);
		$('#processOrderFrm').submit();		
	}
	
</script>	
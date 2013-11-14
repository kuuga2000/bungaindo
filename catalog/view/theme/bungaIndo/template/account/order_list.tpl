<?php
$strBreadcrumb = '';
 foreach ($breadcrumbs as $breadcrumb)
 {
 	$strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
 }
?>
<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } 
?>
<div class="category_box">
<div class="home_ttl_fold"><span class="whtDot"></span> Customer Account <span class="whtDot"></span></div>
<div class="afflt_acc_bx"> 
<?php echo $column_left; ?><?php //echo $column_right; ?>
<div class="afflt_rgt">
<div id="content"><?php echo $content_top; ?>
 <?php if ($orders) { ?>
<table class="ordr_lst_tbl" width="100%" cellpadding="0" cellspacing="0">
<tr>
<th>ORDER ID</th>
<th>DATE</th>
<th>PAYMENT</th>
<th width="114">TOTAL PRICE</th>
<th width="100">STATUS</th>
<th width="100"></th>
</tr>

 <?php foreach ($orders as $order) { ?> 
<tr>
<td class="ordr_lst_pink"><a href="<?php echo $order['href']; ?>"><?php echo $order['order_id']; ?></a></td>
<td><?php echo $order['date_added']; ?></td>
<td><?php echo $order['payment_method']; ?></td>
<td class="ordr_lst_black font12"><?php echo $order['total']; ?></td>
<td><?php if($order['status'] == 'Pending' ){echo ucfirst($order['order_payment_status']);} else { echo $order['status'];  }  ?></td>
<td><?php if($order['order_payment_status'] == 'not confirm' ) { ?><input type="button" class="confirm_btn" value="" id="getOrder_<?php echo $order['order_id']; ?>" onclick="window.location.href ='<?php echo $order['href'];?>'" /><?php } else { echo '&nbsp;'; } ?></td>
</tr>
<?php } //foreach ?>
</table>

<?php if($showPagination){ ?>
<div class="pagination"> 			
			<?php echo $pagination; ?>
			</div>
						
<?php }  } //if 
else 
{?>

 <div class="content"><?php echo $text_empty; ?></div>



<?php }?>
 
 <!-- <div class=""><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>-->
  <?php echo $content_bottom; ?></div>
</div>
</div>
</div>
<?php echo $footer; ?>
<script type="text/javascript">
$(document).ready(function() {
	
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
});
</script>	
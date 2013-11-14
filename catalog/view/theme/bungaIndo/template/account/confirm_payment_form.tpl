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
<?php echo $column_left; ?><?php echo $column_right; ?>
<div class="afflt_rgt" style="border-left:none !important; width: 698px; padding-left:0px;">

<div id="content">
<div class="aff_rgt_lft" style="border-left: solid 1px #e7eacb; padding-left:36px;">
	 <h2>Information</h2>
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p> 
    </div>
    <div class="aff_rgt_rgt">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <h2>Confirm Payment</h2>
      <table class="form">
        <tr>
          <td>Order Id</td>
		  <td style="width:26px; display:inline-block" align="center">:</td>
          <td><label><?php echo $order_id; ?></label></td>
        </tr>
        <tr>
          <td>Payment To</td>
           <td style="width:26px; display:inline-block" align="center">:</td>
		   <td>
            <select name="payment_to">
                <option value="BCA(0153363233) a/n Bunga Lestari">BCA(0153363233) a/n Bunga Lestari</option>
                <option value="Mandiri01532753533 a/n Bunga Lestari">Mandiri01532753533 a/n Bunga Lestari</option>
                
            </select>
              </td>
        </tr>
      <tr>
          <td>Payment From</td>
		  <td style="width:26px; display:inline-block" align="center">:</td>
          <td><input type="text" name="payment_from" value="" />
            <?php if ($error_payment_from) { ?>
            <span class="error"><?php echo $error_payment_from; ?></span>
            <?php } ?></td>
        </tr>
      <tr>
         <td>Account Name</td>
          <td style="width:26px; display:inline-block" align="center">:</td>
          <td><input type="text" name="account_name" value="" />
          
          <?php if ($error_account_name) { ?>
            <span class="error"><?php echo $error_account_name; ?></span>
            <?php } ?>
          </td>
        </tr>
        <tr>
         <td>Total Amount</td>
          <td style="width:26px; display:inline-block" align="center">:</td>
          <td><input type="text" name="total_amount_read" value="<?php echo number_format($total_amount,0,',','.'); ?>" readonly="readonly" />
		  <input type="hidden" name="total_amount" value="<?php echo $total_amount; ?>" />
          
          <?php if ($error_total_amount) { ?>
            <span class="error"><?php echo $error_total_amount; ?></span>
            <?php } ?>
             <?php if ($error_total_amount_less) { ?>
            <span class="error"><?php echo $error_total_amount_less; ?></span>
            <?php } ?>
          </td>
        </tr>
       
         
       <tr>
		      <td><span class="ship_form_pad">Payment Date</span></td>
             <td style="width:26px; display:inline-block" align="center">:</td>
		     <td valign="top" class="paymentConfirmDate"><input type="text" name="payment_date" value="<?php echo $payment_date; ?>" size="12" class="date" style="width:145px !important;"/> 
		     <!--  <img src="catalog/view/theme/bungaIndo/images/datepicker.png" width="26" height="20" align="absmiddle" style="margin:-4px 0 0 0;" />-->
<?php if ($error_payment_date) { ?>
		            <span class="error"><?php echo $error_payment_date; ?></span>
		            <?php } ?></td>
		    </tr>
         <td>&nbsp;</td>
             <td style="width:26px; display:inline-block" align="center">&nbsp;</td>
        <td>
        <input type="hidden" value ="<?php echo $order_id; ?>" name="order_id" />
         <input type="submit" value="" class="confirm_btn" name="submit"/></td>
   
      </table>
  </form>
 
   
  </div>
  </div>
  </div>
  </div> 
  <?php echo $content_bottom; ?></div>

<?php echo $footer; ?>
<script type="text/javascript">
$(document).ready(function() {
	
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
});

maxDate = new Date();

var dateToday = new Date();
$('.date').datepicker({
      dateFormat: 'dd-mm-yy',
	  showOn: "both",
	  maxDate: maxDate,
      buttonImage: "image/datepicker.png",
      buttonImageOnly: true});
</script>	
<?php
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#author: Sheetal Godase
#date: 13 June 2013
*/

$strBreadcrumb = '';
 foreach ($breadcrumbs as $breadcrumb)
 {
 	$strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
 }
?>
<?php echo $header;?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>

<div class="category_box">
<div class="home_ttl_fold"><span class="whtDot"></span> Customer Account <span class="whtDot"></span></div>
<div class="afflt_acc_bx"> 
<?php echo $column_left; ?><?php // echo $column_right; ?>
<div class="afflt_rgt">
<div id="content"><?php echo $content_top; ?>
  	<div class="aff_rgt_lft">
     <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <h2><?php echo $text_your_details; ?></h2>
  
    <table width="100%" class="form" cellpadding="0" cellspacing="0">
    <tr>
      <td style="display:inline-block"><?php echo $entry_firstname; ?></td>
      <td width="30" align="center" style="padding-right:10px;">:</td>
      <td><label><?php echo $firstname ?></label>
       </td>
    </tr>
    <tr>
      <td><?php echo $entry_lastname; ?></td>
      <td width="30" align="center" style="padding-right:10px;">:</td>
      <td><label><?php echo $lastname; ?></label>
      </td>
    </tr>
    <tr>
      <td><?php echo $entry_email; ?></td>
      <td width="30" align="center" style="padding-right:10px;">:</td>
      <td><div style="width:170px; position:relative; overflow:hidden;"><?php echo $email; ?></div>
      </td>
    </tr>
    
    <tr>
      <td><?php echo $entry_password; ?></td>
      <td width="30" align="center" style="padding-right:10px;">:</td>
      <td><input type="password" name="password" value="<?php echo $password; ?>" style="width:151px;" />
        <?php if ($error_password) { ?>
        <span class="error"><?php echo $error_password; ?></span>
        <?php } ?> </td>
    </tr>
    <tr>
      <td><?php echo $entry_confirm; ?></td>
      <td width="30" align="center" style="padding-right:10px;">:</td>
      <td><input type="password" name="confirm" value="<?php echo $confirm; ?>"  style="width:151px;"/>
        
        <?php if ($error_confirm) { ?>
        <span class="error"><?php echo $error_confirm; ?></span>
        <?php } ?>
      </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td width="30" align="center">&nbsp;</td>
      <td><!--<a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a>-->
        <input type="submit" name="submit" value="" class="save_btn" /></td> 
    </tr>
    </table> 
  </form>
    </div>
<div class="aff_rgt_rgt border_none">
    <h2><?php echo $credit_heading ?></h2>
    <?php echo $text_credit_balance ?>
    <p>Lorem ipsum dolor si amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolor sit amet, </p>
</div>
<!--<div class="aff_rgt_rgt border_none">
<h2><?php echo $credit_heading ?></h2>
<p><?php echo $text_credit_balance ?></p>
</div>  
   --> 
    <!----CUSTOM CODING ENDS ---->
    
  </div>
  </div>
  </div>
<!--  <h2><?php //echo $text_my_orders; ?></h2>-->
 <!-- <div class="content">
    <ul>
      <li><a href="<?php //echo $order; ?>"><?php //echo $text_order; ?></a></li>
      <li><a href="<?php //echo $download; ?>"><?php //echo $text_download; ?></a></li>
      <?php //if ($reward) { ?>
      <li><a href="<?php //echo $reward; ?>"><?php // echo $text_reward; ?></a></li>
      <?php // } ?>
      <li><a href="<?php //echo $return; ?>"><?php //echo $text_return; ?></a></li>
      <li><a href="<?php //echo $transaction; ?>"><?php //echo $text_transaction; ?></a></li>
    </ul>
  </div>-->
 <!-- <h2><?php ///echo $text_my_newsletter; ?></h2>-->
<!--  <div class="content">
    <ul>
      <li><a href="<?php //echo $newsletter; ?>"><?php //echo $text_newsletter; ?></a></li>
    </ul>
  </div>-->
  
  <script type="text/javascript"><!--
$(document).ready(function() {
	/*$('.colorbox').colorbox({
		width: 640,
		height: 480
	});*/
	
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
	
	var isError = '<?php echo $isError; ?>';
	if(isError == 1)
	{ 
		$('.register_div input[type=\'text\']').each(function(){
			
			if($(this).val() == 'You must fill in this form' || $(this).val() == 'Warning: E-Mail Address is already registered!' || $(this).val() == 'Password and Confirm Password did not match')
			{
				//$(this).val('You must fill in this form');
				$(this).addClass('error');
			}
			
		})		
	}
	$('input[type=\'text\']').click(function(){
		$(this).val('');
		$(this).removeClass('error');
	})
});
//--></script>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 
<script type="text/javascript">
$(document).ready(function() {
	
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
});
</script>
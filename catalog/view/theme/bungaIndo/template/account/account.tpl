<?php
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
<?php // echo $column_right; ?>
<div class="category_box">
<div class="home_ttl_fold"><span class="whtDot"></span> Customer Account <span class="whtDot"></span></div>
<div class="afflt_acc_bx"> 
    <?php echo $column_left; ?>
    <div class="afflt_rgt">
        <div id="content"><?php echo $content_top; ?>
          <div>
            <!---CUSTOM CODING -------------->
              
            <div class="aff_rgt_lft">
            <form action="<?php //echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
            <h2>Personal Information</h2>
            <table class="form" width="100%" cellpadding="0" cellspacing="0">
            <tr>
              <td style="width:70px; display:inline-block;"><label><?php echo $entry_firstname; ?></label></td>
			  <td align="center" style="padding-right:10px;">:</td>
              <td><label><?php echo  $firstname ?></label>
               </td>
            </tr>
            <tr>
              <td><label ><?php echo $entry_lastname; ?></label></td>
			    <td align="center" style="padding-right:10px;">:</td>
              <td><label><?php echo  $lastname ?></label>
               </td>
            </tr>
            <tr>
              <td><label>Email</label></td>
			  <td align="center" style="padding-right:10px;">:</td>
              <td><div style="width:190px; position:relative; overflow:hidden;"><?php echo  $email ?></div>
                </td>
            </tr>
			<tr>
              <td><label>Password</label></td>
			  <td align="center" style="padding-right:10px;">:</td>
              <td><label>*******</label>
                </td>
            </tr>
			<tr>
			  <td>&nbsp;</td>
			  <td align="center">&nbsp;</td>
			  <td><a href="<?php echo $action; ?>" class="edit_gray_btn">&nbsp;</a>
           <!-- <input type="submit" name="submit" value="<?php echo $button_edit; ?>" class="gray_btn" /> --></td>
			  </tr> 
            </table>
            <div class="">
            
            </div>
            </form>
            </div>
            
            <div class="aff_rgt_rgt border_none">
                <h2><?php echo $credit_heading ?></h2>
                <?php echo $text_credit_balance ?>
                <p>Lorem ipsum dolor si amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolor sit amet, </p>
            </div>
            
            <!----CUSTOM CODING ENDS ---->
            
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
          <script>
       
        
        </script>
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
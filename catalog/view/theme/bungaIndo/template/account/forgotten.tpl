<?php
$strBreadcrumb = '';
 foreach ($breadcrumbs as $breadcrumb)
 {
 	$strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
 }
?>
<?php echo $header; ?>
<?php //if ($error_warning) { ?><!--
<div class="warning"><?php // echo $error_warning; ?></div>-->
<?php // } ?>
<?php //echo $column_left; ?><?php //echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
   
  <div class="login-box">
        <div class="login_ttl_fold"><span class="whtDot"></span> Customer Account <span class="whtDot"></span></div>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
 <?php 
 	if ($success) { ?>
	<div class=""><?php echo $success; ?></div>
	<?php }
    elseif ($error_warning) { ?>
<div class="" style="width:300px"><?php echo $error_warning; ?></div>
<?php }
    
 
 else 
 {?>
 <h2>Forgot Password</h2>
       <p>Enter your email address below.<br>
	   We'll send you a link to reset your password.
	</p>
    <?php if ($success) { ?><div class="row">
	<div class="success"><?php echo $success; ?></div>
    </div><?php } ?>
    <div class="row">
        <div class="row_lft">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</div>
        <div class="row_rgt"><input type="text" name="email" value="" /></div>
    </div>
    <div class="row">
        <div class="row_lft">&nbsp;</div>
        <div class="row_rgt"><input type="submit" value="" class="send_btn" /></div>
    </div>
      
    <!--<div class="buttons">
      <div class="left"><a href="<?php //echo $back; ?>" class="button"><?php // echo $button_back; ?></a></div>
      <div class="right">
        <input type="submit" value="<?php //echo $button_continue; ?>" class="button" />
      </div>
    </div>-->
    
    
   <?php }?>
  </form>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
<script type="text/javascript">
$(document).ready(function() {
	
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
});
</script>	
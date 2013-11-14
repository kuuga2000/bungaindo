<?php echo $header; ?>
<div id="content">
  <div class="login-box">
    <div class="login_ttl_fold"><span class="whtDot"></span> Affiliate Account <span class="whtDot"></span></div>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <?php 
 	if ($success) { ?>
	<div class=""><?php echo $success; ?></div>
	<?php }
    elseif ($error_warning) { ?>
<div class=""><?php echo $error_warning; ?></div>
<?php }
    
 
 else 
 {?>
    <h2>Forgot Password</h2> 
    <p>Enter your email address below.<br>
	   We'll send you a link to reset your password.
	</p>
    <div class="row">
        <div class="row_lft" style="text-align: left">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</div>
        <div class="row_rgt"><input type="text" name="email" value="" /></div>
    </div>
    <div class="row">
        <div class="row_lft">&nbsp;</div>
        <div class="row_rgt">
        <input type="submit" value="" class="send_btn" />
        </div>
    </div>
<?php } ?>	
  </form>
  </div>
  <?php echo $content_bottom; ?></div>
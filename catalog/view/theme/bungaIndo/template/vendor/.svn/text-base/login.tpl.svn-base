<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="content"><?php //echo $content_top; ?>
    <div class="login-box">
        <div class="login_ttl_fold"><span class="whtDot"></span> <?php echo $heading_title; ?> <span class="whtDot"></span></div>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <h2><?php echo $text_signin; ?></h2>
        <div class="row">
          <div class="row_lft"><?php echo $entry_email; ?></div>
          <div class="row_rgt"><input type="text" name="email" value="<?php echo $email; ?>" /></div>
        </div>
        <div class="row">
          <div class="row_lft"><?php echo $entry_password; ?></div>
          <div class="row_rgt"><input type="password" name="password" value="<?php echo $password; ?>" /></div>
        </div>
        <div class="row">
          <div class="row_lft">&nbsp;</div>
          <div class="row_rgt">
          <input type="submit" value="" class="sign_in_btn" />
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
          </div>
        </div>
        <div class="row">
          <div class="row_lft">&nbsp;</div>
          <div class="row_rgt"><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></div>
        </div>
      </form>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<?php echo $content_top; 
		$strBreadcrumb = '';
		foreach ($breadcrumbs as $breadcrumb) {
         $strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
		}
	?>
  <!--<h1><?php echo $heading_title; ?></h1>-->
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <!--<h2><?php echo $text_location; ?></h2>
    <div class="contact-info">
      <div class="content"><div class="left"><b><?php echo $text_address; ?></b><br />
        <?php echo $store; ?><br />
        <?php echo $address; ?></div>
      <div class="right">
        <?php if ($telephone) { ?>
        <b><?php echo $text_telephone; ?></b><br />
        <?php echo $telephone; ?><br />
        <br />
        <?php } ?>
        <?php if ($fax) { ?>
        <b><?php echo $text_fax; ?></b><br />
        <?php echo $fax; ?>
        <?php } ?>
      </div>
    </div>
    </div>-->
    <h1><?php echo $text_contact; ?></h1>
    
    <p class="LatoLight">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore<br /> magna aliqua.</p> 
    
    <div class="contact_bx">
        <div class="row">
            <div class="row_lft"><?php echo $entry_name; ?></div>
            <div class="row_rgt">
                <input type="text" name="name" value="<?php echo $name; ?>" /><br />
                <?php if ($error_name) { ?>
                <span class="error"><?php echo $error_name; ?></span>
                <?php } ?>
            </div>
        </div>
        <div class="row">
            <div class="row_lft"><?php echo $entry_email; ?></div>
            <div class="row_rgt">
                <input type="text" name="email" value="<?php echo $email; ?>" /><br />
                <?php if ($error_email) { ?>
                <span class="error"><?php echo $error_email; ?></span>
                <?php } ?>
            </div>
        </div>
        <div class="row">
            <div class="row_lft"><?php echo $entry_enquiry; ?></div>
            <div class="row_rgt">
                <textarea name="enquiry" cols="40" rows="5"><?php echo $enquiry; ?></textarea><br />
                <?php if ($error_enquiry) { ?>
                <span class="error"><?php echo $error_enquiry; ?></span>
                <?php } ?>
            </div>
        </div>
        <div class="row">
            <div class="row_lft">&nbsp;</div>
            <div class="row_rgt">
                <!--  ####################CAPTCHA CODE STARTS#################################### -->
                <!--<b><?php echo $entry_captcha; ?></b><br />-->  
                <?php echo recaptcha_get_html($public_key); ?>
                <?php if ($error_captcha) { ?>
                <span class="error"><?php echo $error_captcha; ?></span>
                <?php } ?>
                <!--   ####################CAPTCHA CODE ENDS#################################### -->
            </div>
        </div>
        <div class="row"> 
            <div class="row_lft">&nbsp;</div>
            <div class="row_rgt"><input type="submit" value="" class="send_btn" /></div>
        </div>					
    </div>
  </form>
<script type="text/javascript">
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
</script>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>

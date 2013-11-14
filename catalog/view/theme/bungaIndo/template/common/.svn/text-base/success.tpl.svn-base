<?php
$strBreadcrumb = '';
 foreach ($breadcrumbs as $breadcrumb)
 {
 	$strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
 }
?>
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <h1><?php echo $heading_title; ?></h1>
  
  <div class="buttons">
  <?php echo $text_message; ?>
    <div class="left">
    
   <input type="submit" value="" onclick="window.location.href='index.php'" class="contnue_shp_btn" />
    
    </div>
    
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
<script type="text/javascript">
$(document).ready(function() {
	
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
});
</script>	

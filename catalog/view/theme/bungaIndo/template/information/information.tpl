<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<?php echo $content_top;
		$strBreadcrumb = '';
			foreach ($breadcrumbs as $breadcrumb) {
	         $strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
			}
	?>
  <h1><?php echo $heading_title; ?></h1>
  <?php echo $description; ?>
  <!--<div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>-->
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
<script type="text/javascript">
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
</script>
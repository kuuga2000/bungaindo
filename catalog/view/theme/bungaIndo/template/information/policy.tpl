<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
	<?php echo $content_top;
		$strBreadcrumb = '';
			foreach ($breadcrumbs as $breadcrumb) {
	         $strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
			}
	?>
  <h1>Order and Customer Policy</h1>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

<p><strong>ipsum dolor sit amet</strong><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

<p><strong>Lorem ipsum dolor sit amet</strong><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

<p><strong>Lorem ipsum dolor sit amet</strong><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

<p><strong>Lorem ipsum dolor sit amet</strong><br />
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
<script type="text/javascript">
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
</script>
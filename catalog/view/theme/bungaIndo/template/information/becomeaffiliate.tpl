<?php
		$strBreadcrumb = '';
			foreach ($breadcrumbs as $breadcrumb) {
	         $strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
			}
	?>
<?php echo $header; ?>
<div id="content">
	<h1>Become an Affliate</h1>
    <div class="affliate">
    <div class="affliate_lft">
        <img src="catalog/view/theme/bungaIndo/images/affliate_img.jpg" alt="" align="absmiddle">
    </div>
    <div class="affliate_rgt">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p> 
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit :</p>
        <ol>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
            <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>
        </ol>
    </div>
    </div>
    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
<script type="text/javascript">
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
</script>
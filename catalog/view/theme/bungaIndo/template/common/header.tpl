<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" /> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bungaIndo/stylesheet/style.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/bungaIndo/stylesheet/jquery-ui.css" />

<link href='http://fonts.googleapis.com/css?family=Lato:400,700,100' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>

<script type="text/javascript" src="catalog/view/javascript/jquery.icheck.min.js?v=0.9.1"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.placeholder-1.1.9.js"></script>

<script type="text/javascript">
$(document).ready(function(){
$('.skin-minimal input').iCheck({
checkboxClass: 'icheckbox_minimal',
radioClass: 'iradio_minimal',
increaseArea: '20%'
});
});
</script>


<!-- JS and css for home page image slider integrated in bungaIndo/common/home.tpl added by gaurav on 28-05-2013-->
<!-- help doc: http://www.woothemes.com/flexslider/ -->
<link href="catalog/view/theme/bungaIndo/stylesheet/flexslider.css" rel="stylesheet" type="text/css" />
<script src="catalog/view/javascript/jquery/jquery.flexslider.js" type="text/javascript"></script>
<!-- End of js and css for image slider-->	
	
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<style>
#bungaProductList .category_pro_bx
{
	margin:0 23px 40px 0;
}
</style>
<![endif]-->
<!--[if IE 8]> 
<style>
#bungaProductList .category_pro_bx
{
	margin:0 23px 40px 0;
}
</style>
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript">
alert("HELLO");
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
</script>

<?php } ?>

<script type="text/javascript">
$(document).ready(function () {

//	alert(screen.width);
	var wid =800;
	var resizeBox = function() {
		if(screen.width > wid){
			
			$("body").css("overflow-x", "hidden");
		}
		else{
			$("body").css("overflow", "auto");
		}
	};
	resizeBox();
	$(window).resize(resizeBox);
	
});
</script>



<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">
<div class="header" id="header">
        	<div class="headTop">
            	<div class="topLeft">
                	<div class="mob"><?php echo $config_telephone; ?></div>
                    <div class="proCode"><?php echo $config_bbpin; ?></div>
                </div>
                <div class="logo"><a href="index.php"></a></div>
				 <input type="text" class="header-search"  name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
				 
            </div>
        </div>
  		</div>
        <div class="navbox">
        	<div class="menubox">
			
			 <ul>
				    <?php foreach ($categories as $category) { ?>
				    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
				      <?php if ($category['children']) { ?>
				        <?php for ($i = 0; $i < count($category['children']);) { ?>
				        <ul class="submenubox">
				          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
				          <?php for (; $i < $j; $i++) { ?>
				          <?php if (isset($category['children'][$i])) { ?>
				          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
				          <?php } ?>
				          <?php } ?>
				        </ul>
				        <?php } ?>
				      <?php } ?>
				    </li>
				    <?php } ?>
				  </ul>
                  
                <div class="pinkLable">
                	<ul>
                    	<?php if (!$logged) { ?>
    					<?php echo $text_welcome; ?>
   						<?php } else { ?>
    					<?php echo $text_logged; ?>
    					<?php } ?>
                    	<!--<li><a href="#">Register</a> |</li>
                        <li><a href="#">Sign in</a></li>-->
                    </ul>
					<div class="cart"><?php echo $cart; ?></div>
                    <!--<div class="cart"> Cart (<span>0</span>)</div>-->
                </div>
            </div>
        </div>
   </div>

<div class="container">
<div class="container_in">
<div id="notification" class="clear"> </div>
</div>
</div>
<?php if(isset($_SERVER['QUERY_STRING']) && $_SERVER['QUERY_STRING'] != '' && $_SERVER['QUERY_STRING'] != 'route=common/home') { ?>
<div class="container">
<div class="container_in">

<?php } ?>
<?php if(isset($_SERVER['QUERY_STRING']) && $_SERVER['QUERY_STRING'] != '' && $_SERVER['QUERY_STRING'] != 'route=common/home' &&  $_SERVER['QUERY_STRING'] != 'route=checkout/cart' && $_SERVER['QUERY_STRING'] != 'route=checkout/shipping_address' && $_SERVER['QUERY_STRING'] != 'route=checkout/confirm' && $_SERVER['QUERY_STRING'] != 'route=checkout/success'){ ?>
  <div class="breadcrumb"> </div>
<?php } ?>
<div class="clear"></div>

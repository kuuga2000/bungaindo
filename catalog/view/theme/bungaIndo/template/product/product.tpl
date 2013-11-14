<?php 
$strBreadcrumb = '';
foreach ($breadcrumbs as $breadcrumb) { 
	$strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
	}
?>
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
 
  <div class="flowr_detail_bx">
    <?php if ($thumb || $images) { ?>
    <div class="flowr_detail_bx_lft"> 
      <?php if ($thumb) { ?>   
   		 <div class="image">
      <?php if($discounts)  {?>
         <?php foreach ($discounts as $discount) { ?>
      <?php } } ?>
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div>
      <?php } ?>
    </div>
    <?php } ?>
    <div class="flowr_detail_bx_rgt">
		 <h1><?php echo $heading_title; ?></h1>
		 <?php if ($price) { ?>
	      <div class="price">
	        <?php if (!$discounts) echo $price;
	        else{ echo $discount['price'];; } ?>
	        <br />
           
            <div class="localText"><?php echo $shippingMethod ?></div>
	        <?php if ($tax) { ?>
	        <span class="price-tax"><?php //echo $text_tax; ?> <?php //echo $tax; ?></span><br />
	        <?php } ?>
	        <?php if ($points) { ?>
	        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
	        <?php } ?>
	      </div>
      	<?php } ?>
		 <div class="flr_rgt_sub_ttl"><?php echo $tab_description; ?></div>
      <div class="description">
       	<?php echo $description; ?>
      
      <?php if ($options) { ?>
      <div class="options">
        <h2><?php echo $text_option; ?></h2>
        <br />
        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <b><?php echo $option['name']; ?>:</b><br />
          <select name="option[<?php echo $option['product_option_id']; ?>]">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select>
        </div>
        <br />
        <?php } ?>
     
        <?php } ?>
      </div>
      <?php } ?>
    </div>
    <div class="flr_rgt_sub_ttl">Delivery Information</div>
    <div class="description">
    	<ul>
            <li>Monday - Friday orders must be placed before 3:00 pm in the recipient's time zone 
            for same-day delivery.</li>
            <li>Saturday orders must be placed before 12:00 pm for same-day delivery.</li>
            <li>Sunday orders must be placed before 12:00 pm for same-day delivery.</li>
        </ul>
    </div>
  
    <div class="flr_rgt_sub_ttl">Choose delivery date</div>
    <div class="pro_para">
     <p><input type="text" class="date" name="delivery_date" id="delivery_date" /><!-- <a href="#"><img src="image/datepicker.png" alt="" align="absmiddle"></a>--></p>	
      <input type="hidden" name="quantity" size="2" value="1" />
      <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
         
      <p><input type="button" value="" id="button-cart" onclick="addToCart('<?php echo $product_id ?>',1,$('#delivery_date').val())" class="add_to_cart_btn" /></p>
     <div class="left" style="padding: 2px 3px 0 0 ">Share :</div>
	 	<div class="left"> 
		<div style="padding: 0 3px 0 0" class="fb-like left" data-href="http://<?php echo $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; ?>" data-layout="button_count" data-width="450" data-show-faces="true"></div>
		
	 	<div class="left"><a href="https://twitter.com/share" class="twitter-share-button" data-url="http://<?php echo $_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; ?>">Tweet</a></div>
	 	</div>
	  
	  
	  
	  
	<!--  <a href="#"><img src="catalog/view/theme/bungaIndo/images/social_share_img.jpg" alt="" align="absmiddle"></a></p>	-->
    </div> 
    <?php if ($minimum > 1) { ?>
    <div class="minimum"><?php echo $text_minimum; ?></div> 
    <?php } ?>
  </div>
  
  
  <?php echo $content_bottom; ?></div>
  </div>
 
 <div id="fb-root"></div>
<script>(function(d, s, id) {
 var js, fjs = d.getElementsByTagName(s)[0];
 if (d.getElementById(id)) return;
 js = d.createElement(s); js.id = id;
 js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=197686380396229";
 fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>

<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
function add_product_to_cart()
{
addToCart('<?php echo $product_id ?>',1,$('#delivery_date').val());
}
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
/*	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		success: function(json) {
			$('.success, .warning, .attention, information, .error, .wait').remove();
			alert(json['error']);
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});*/
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 

<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--

function getMinDate(specialStartDate)
{
	if(specialStartDate != '')
	{
		
		startArr = specialStartDate.split('-')
		
		minDate = new Date(startArr[0],startArr[1],startArr[2]);
		
		currentDate = new Date();
		if(currentDate.getFullYear() >= startArr[0] && (currentDate.getMonth()+1) >= startArr[1] &&  currentDate.getDate() > startArr[2]  )
		{
			minDate = new Date();
		}
	}
	else
	{
		minDate = new Date();		
	}
	return minDate;
}

function getMaxDate(specailEndDate)
{
	maxDate = '';
	if(specailEndDate != '')
	{
		endArr = specailEndDate.split('-');
		
		maxDate = new Date(endArr[0],endArr[1]-1,endArr[2]);
	}
	return maxDate
}
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}
specialStartDate = '<?php echo $specailStartDate ?>';
specailEndDate = '<?php echo $specailEndDate ?>';
minDate = getMinDate(specialStartDate)
maxDate = getMaxDate(specailEndDate);
//var dateToday = new Date();

	$('.date').datepicker({
		dateFormat: 'dd-mm-yy',
		showOn: "both",
      	buttonImage: "image/datepicker.png",
		minDate: minDate,
		maxDate: maxDate,
      	buttonImageOnly: true});
	  //alert($('#delivery_date').datepicker( "getDate" ));
	$('.datetime').datetimepicker({
		dateFormat: 'dd-mm-yy',
		minDate: minDate,
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
	//alert($('#delivery_date').datepicker( "getDate" ));
});
var strBreadcrumb = '<?php echo $strBreadcrumb; ?>';
$('.breadcrumb').html(strBreadcrumb);
//--></script> 
<?php echo $footer; ?>
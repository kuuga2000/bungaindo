<?php 
$strBreadcrumb = '';

foreach ($breadcrumbs as $breadcrumb) { 
	$strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
	}
?>
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">


<?php echo $content_top; ?>
<?php if($bannerImage != '') { ?>
	<div style="display: block; height: 162px"><img src="<?php echo $bannerImage ?>" alt="category_top" title="category_top"></div>
 <?php } ?> 
  
  <?php if ($products) { ?>
  <div class="product-filter" style="border: none">
  <div class="sort"><!--<b><?php echo $text_sort; ?></b>-->
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
  <div class="product-list" id="bungaProductList">
	
    <?php 
    	if($heading_title == 'Sale' || $heading_title == 'sale')
        {
        	$count = 1;
        	foreach ($products as $product) { ?>
        
    <div class="sales_pro_bx"> 
           		<div class="sales"><div class="sales_value"><?php echo $product['percentage']; ?>%</div></div>
      <?php if ($product['thumb']) { ?>
      <div class="image">
     
      <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } ?>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
     <!-- <div class="description"><?php echo $product['description']; ?></div>-->
      <?php if ($product['price']) { ?>
      <div class="price">
       <!-- <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
        <?php } ?>-->
         <?php if (!$product['discount']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <br/><span class="price-new"><?php echo $product['discount']; ?></span>
        <?php } ?>
        <?php //if ($product['tax']) { ?>
        <br />
        <!--<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>-->
        <?php //} ?>
      </div>
      <?php } ?>
      <?php if ($product['rating']) { ?>
      <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
      <?php } ?>
	  <div class="giftText"><?php echo $product['shippingMethod']; ?></div>
      <div class="cart">
        <input type="button" value="" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="buy_btn" />
      </div>
    </div>
    <?php $count++;} 
        }
        else
        {
        	foreach ($products as $product) {		 ?>
    <div  class="category_pro_bx"> 
      <?php if ($product['thumb']) { ?>
      <div class="image">

      <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
      <?php } ?>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
     <!-- <div class="description"><?php echo $product['description']; ?></div>-->
      <?php if ($product['price']) { ?>
      <div class="price">
       <!-- <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
        <?php } ?>-->
         <?php if (!$product['discount']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { 
		echo $product['discount']; ?>
       <!-- <span class="price-old"><?php echo $product['price']; ?></span> <br/><span class="price-new"><?php echo $product['discount']; ?></span>-->
        <?php } ?>
        <?php //if ($product['tax']) { ?>
        <br />
        <!--<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>-->
        <?php //} ?>
      </div>
      <?php } ?>
      <?php if ($product['rating']) { ?>
      <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
      <?php } ?>
	  <div class="giftText"><?php echo $product['shippingMethod']; ?></div>
      <div class="cart">
        <input type="button" value="" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="buy_btn" />
      </div>
  <!--    <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a></div>
      <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a></div>-->
    </div>
    <?php } 
        }
    	?>
  </div>

 <?php 	
 
 if ($highilighted_product) {
		 ?>
	 <div class="special-prod">
		 <div class="left">
		 	<div class="image"><a href="<?php echo $highilighted_product['href']; ?>"><img src="<?php echo $highilighted_product['thumb']; ?>" title="<?php echo $highilighted_product['name']; ?>" alt="<?php echo $highilighted_product['name']; ?>" /></a></div>
			 <div class="name">
			 	<a href="<?php echo $highilighted_product['href']; ?>"><?php echo $highilighted_product['name']; ?></a>
			 </div>
			 <div class="price">
		        <?php if (!$highilighted_product['discount']) { ?>
		        <?php echo $highilighted_product['price']; ?>
		        <?php } else { 
				 echo $highilighted_product['discount'];  } ?>
		        <?php if ($highilighted_product['tax']) { ?>
		        <br />
		        <!--<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>-->
		        <?php } ?>
		     </div>
	      </div>
           <div class="giftText"><?php echo $highilighted_product['shippingMethod']; ?></div>
		  <div class="right">
			  <div class="cart">
		        <input type="button" value="" onclick="addToCart('<?php echo $highilighted_product['product_id']; ?>');" class="buy_btn" />
		      </div>
		  </div>
	  <div class="spcial_image_baner"><span class="whtDot"></span> Special <span class="whtDot"></span></div>
    </div>
	<?php } ?>
	
	
	
	
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?> 
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
   <!-- <div class="right"><a href="<?php echo $continue; ?>" class="continue_btn">&nbsp;</a></div>-->
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--

function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
							
			html = '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			
			/*html += '  <div class="description">' + $(element).find('.description').html() + '</div>';*/
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';
			
			html += '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display(\'grid\');"><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		count = 0;
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				
				var page = '<?php echo $heading_title; ?>';
				
				if(page == 'Sale' || page == 'sale')
				{
					alert('discount_'+count);
					alert($('#discount_'+count).html());
					var ribbon = $('#discount_'+count).html();
					html += ribbon;
				}
				
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
				html += '<div class="gft_bx_text">Shipped in a Gift Box</div>';
				
			}
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
			count++;
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a onclick="display(\'list\');"><?php echo $text_list; ?></a> <b>/</b> <?php echo $text_grid; ?>');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

var strBreadcrumb = '<?php echo $strBreadcrumb; ?>';
$('.breadcrumb').html(strBreadcrumb);
//--></script> 
<?php echo $footer; ?>
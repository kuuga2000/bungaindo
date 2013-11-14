<div class="mid_section">
	<?php if(isset($advertises) AND count($advertises)>0)
	{ ?>
	<a href="<?php echo $advertises[0]['link']; ?>" ><div class="deal_month_box" style="background: url(<?php echo $advertises[0]['image']; ?>) no-repeat left top">
	       	  
	    </div></a>
   <?php }
   else {?>
   <div class="deal_month_box">
           	  <div class="dealPara">Limited time only Get special price don't miss it !
                	 <input onclick="javascript:alert('No offers currently')" type="button" value="" class="buy_btn" />
                </div>
          </div>
	<?php } ?>
	    <div class="featured-box">
	    	<ul>
            <?php //echo"<pre>"; print_r($products); ?>
			<?php foreach ($products as $product) { ?>
	            <li>
	        	    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" /></a>
	            	 <a href="<?php echo $product['href']; ?>"><h1 class="prName"><?php echo $product['name']; ?></h1></a>
	                <div class="prPrice"><?php echo $product['price']; ?></div>
	                <div class="giftText"><?php echo $product['shippingMethod']; ?></div>
	           		<input name="" onclick="addToCart('<?php echo $product['product_id']; ?>');" type="button" value="" class="buy_btn" />
	        	</li>
			 <?php } ?>
	        </ul>
	    	<div class="pink_fold"><span class="whtDot"></span> Shop Our Featured Collection <span class="whtDot"></span></div> 
	    </div>
</div>

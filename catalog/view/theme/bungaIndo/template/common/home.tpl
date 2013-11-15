<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">
 <!--Slider -->
        <div class="sliderbox">
        	<div class="slider-table"></div>
        
        	<div class="slider_Div">
       		  <div class="banRound">
			  <div style="height: 280px; ">
			  	<?php 
				$cnt = 0;
				foreach ($banners as $banner) { ?>
                	<div id="bannerText_<?php echo $cnt; ?>" class="proDetial displayNone">
                    	<h1 class="proTitle"><?php echo $banner['title']; ?></h1>
                       	Starting from <?php echo $banner['price']; ?>
                        <a href="<?php echo $banner['href']; ?>">SHOP NOW >></a>
                    </div>
				<?php $cnt++; } ?>
			  </div>									  
                   <div class="bannerForm">
				   	<form method="POST">
           	  		  <!--<input  type="text" name="location_name"/>-->
					   <select name="location_name" class="filed1">
                        	 <option value=""><?php echo $text_select; ?></option>
				              <?php foreach ($loacations as $loacation) { ?>
				              
				              <option value="<?php echo $loacation; ?>"><?php echo $loacation; ?></option>
				              
				              <?php } ?>
                     </select>
					  
             		 <select name="category_id" class="filed1">
                        	 <option value=""><?php echo $text_select_categories; ?></option>
				              <?php foreach ($categories as $category) { ?>
                              
				             
				              <option value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
				              <?php } ?>
                     </select>
                      <p><input name="available_date" placeholder="Choose Your Date" type="text" class="filed2 date" style="width: 113px !important; height: 12px; font-size:10px; margin-right: 2px; padding:3px 5px;" /></p>
                      <p><input type="checkbox" class="styled" id="2" name="2"> <label for="2">Flexible Date</label></p> 
                      <p><input name="search" type="submit" value="" class="submit_gray_btn" /></p>
					  </form>
          			</div>
                </div>
                <!--<div class="banImage_box"><img src="images/bannerimg.png" width="418" height="482" alt="" /></div>-->
				
				<section class="slider">
				  <div class="flexslider" style="width: <?php echo $width; ?>px; height: <?php echo $height; ?>px;">
					  <ul class="slides">
					   <?php $cnt = 0; foreach ($banners as $banner) { ?>
					    <li>
					      <a href="<?php echo $banner['href']; ?>"><img src="<?php echo $banner['product_image']; ?>" width="418" height="482" alt="" /></a>
						  
					    </li>
						<?php $cnt++; } ?>
					  </ul>
					</div>
				</section>
            </div>
        </div>
		 <?php $cnt = 0; foreach ($banners as $banner) { ?>
		 <input type="hidden" value="<?php echo $banner['baner_image']; ?>" id="baner_<?php echo $cnt; ?>"/>
		 <?php $cnt++; } ?>
<div class="clear"></div>
<div id="content">
<div class="container">
    	<div class="container_in">
<?php echo $content_top; ?>
<h1 style="display: none;"><?php echo $heading_title; ?></h1>
<?php echo $content_bottom; ?></div>
</div></div>
<?php echo $footer; ?>
<script type="text/javascript">
 $(window).load(function() {
  $('.flexslider').flexslider({
    animation: "fade",
	slideshowSpeed: 10000,           //Integer: Set the speed of the slideshow cycling, in milliseconds
	animationSpeed: 50,    
	controlNav: true,
	directionNav:false,
	randomize: false,
	pauseOnHover: true, 
	startAt: 0,   
	start:function(slider){
		$('#bannerText_0').removeClass('displayNone');
		var bgUrl = $('#baner_0').val();
		$('.sliderbox').css('background','url('+bgUrl+') no-repeat center top' );
	},
	after: function(slider) {
		currentSlide = slider.currentSlide
		$('.proDetial').addClass('displayNone');
		$('#bannerText_'+currentSlide).removeClass('displayNone');
		var bgUrl = $('#baner_'+currentSlide).val();
		$('.sliderbox').css('background','url('+bgUrl+') no-repeat center top' );
      }
  });
});

var dateToday = new Date();

$('.date').datepicker({
	  dateFormat: 'dd-mm-yy',
	  minDate: dateToday,
	  showOn: "both",
      buttonImage: "image/datepicker.png",
      buttonImageOnly: true});
</script>
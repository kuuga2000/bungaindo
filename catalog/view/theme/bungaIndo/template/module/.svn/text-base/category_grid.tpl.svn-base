<div class="category_box home-cb">
	<div class="home_ttl_fold">
	    	<span class="whtDot"></span> Shop Our Wide Range of Category <span class="whtDot"></span> 
	    </div>
	<ul>
	<?php foreach ($categories as $category) { 
	 if($category['customName'] != 'Sale' && $category['top'] == 1)
	 {
	  ?>
    	<li>
        	<a href="<?php echo $category['href']; ?>"><img src="<?php echo $category['image']; ?>" width="170" height="200" /></a>
            	<span class="full_width left"><span class="grnDot"></span> <?php echo $category['customName']; ?> <span class="grnDot"></span>
               </span>
          <!--  <input name="" type="button" value="view all" class="btn top12" />-->
			<a class="view_all_btn top12" href="<?php echo $category['href']; ?>"></a>
        </li>
      <?php } }  ?> 
    </ul>
</div>
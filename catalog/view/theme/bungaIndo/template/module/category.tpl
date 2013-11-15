<!--/*/*<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content">
    <ul class="box-category">
      <?php foreach ($categories as $category) { ?>
      <li>
        <?php if ($category['category_id'] == $category_id) { ?>
        <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
        <?php } else { ?>
        <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
        <?php } ?>
        <?php if ($category['children']) { ?>
        <ul>
          <?php foreach ($category['children'] as $child) { ?>
          <li>
            <?php if ($child['category_id'] == $child_id) { ?>
            <a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?></a>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
-->

<?php if(isset($category_name) && $category_name != 'Sale') { ?>
<div class="box" style="margin:0 0 30px 0 !important">
  <div class="box-heading">View <?php echo $category_name; ?> by </div>
  <div class="box-content">
    <ul class="box-category">
      <?php foreach ($categories as $category) { ?>
        <?php if ($category['category_id'] == $category_id) {  ?>
  		
			<li><a href="<?php echo $category['href']; ?>">All</a></li>
	        <?php if ($category['children']) { ?>
	       
	          <?php foreach ($category['children'] as $child) {?>
	          <li>
	            <?php if ($child['category_id'] == $child_id) {  ?>
	            <a href="<?php echo $child['href']; ?>" class="active"> <?php echo $child['name']; ?></a>
	            <?php } else { ?>
	            <a href="<?php echo $child['href']; ?>"> <?php echo $child['name']; ?></a>
	            <?php } ?>
	          </li>						
	          <?php } ?>
	    										
	        <?php } ?>
	  
      <?php } } ?>
    </ul>
  </div>
</div>
<?php } ?>
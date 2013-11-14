<?php
$location_name = '';
$category_id = '';
$available_date = '';
if(isset($this->request->get['location_name']))
{
	$location_name = $this->request->get['location_name'];
}
if(isset($this->request->get['category_id']))
{
	$category_id = $this->request->get['category_id'];
}

if(isset($this->request->get['available_date']))
{
	$available_date = $this->request->get['available_date'];	
}

?>
<div class="mid_section">
	<div class="adv-search">
	<div class="bform-top"> 
    Enter your city 
below to find 
out our delivery 
area coverage!
    </div>
  <div class="bannerForm " style="margin: 0px">
	<form method="POST" action="<?php echo $search_action ?>">
	   <select name="location_name" class="filed1">
	    	 <option value=""><?php echo $text_select; ?></option>
	          <?php foreach ($loacations as $loacation) { ?>
	          
	          <option <?php if($loacation == $location_name ) { ?> selected="selected" <?php } ?> value="<?php echo $loacation; ?>"><?php echo $loacation; ?></option>
	          
	          <?php } ?>
	 </select>
	
	<select name="category_id" class="filed1">
	    	 <option value=""><?php echo $text_select_categories; ?></option>
	          <?php foreach ($categories as $category) { ?>
	        
	          <option <?php if($category['category_id'] == $category_id ) { ?> selected="selected" <?php } ?> value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
	          <?php } ?>
              
              
              	 </select>
	  <p style="width: 166px "><input name="available_date" readonly="readonly" placeholder="Choose Your Date" type="text" class="filed2 date" style="font-size: 10px; margin-right: 2px; padding: 3px 5px; width: 126px !important;" value="<?php echo $available_date; ?>" /></p>
	  <p><input type="checkbox" class="styled" id="2" name="2"> <label for="2">Flexible Date</label></p>
	  <p><input name="search" type="submit" value="" class="submit_gray_btn" /></p>
	  </form>
	</div>
    </div>
</div>
<script type="text/javascript">
var dateToday = new Date();
$('.date').datepicker({
	  dateFormat: 'dd-mm-yy',
	   minDate: dateToday,
	  showOn: "both",
      buttonImage: "image/datepicker.png",
      buttonImageOnly: true});
</script>

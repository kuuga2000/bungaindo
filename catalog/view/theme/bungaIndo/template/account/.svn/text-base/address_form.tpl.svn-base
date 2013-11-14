<?php
$strBreadcrumb = '';
 foreach ($breadcrumbs as $breadcrumb)
 {
 	$strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
 }
?>


<?php echo $header; ?>

<div class="category_box">
<div class="home_ttl_fold"><span class="whtDot"></span> Customer Account <span class="whtDot"></span></div>
<div class="afflt_acc_bx">
<?php echo $column_left; ?><?php echo $column_right; ?>
<div class="afflt_rgt">

<div id="content"><?php echo $content_top; ?>

	<div class="aff_rgt_lft">
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p> <p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
    </div>
    <div class="aff_rgt_rgt">
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <!--  <h2><?php echo $text_edit_address; ?></h2>-->
      <table class="form">
        <tr>
          <td>Address Title</td>
		  <td style="width:26px; display:inline-block" align="center">:</td>
          <td><input type="text" name="address_title" value="<?php echo $address_title; ?>" />
            <?php if ($error_address_title) { ?>
            <span class="error"><?php echo $error_address_title; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td>First Name</td>
		  <td style="width:26px; display:inline-block" align="center">:</td>
          <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
            <?php if ($error_firstname) { ?>
            <span class="error"><?php echo $error_firstname; ?></span>
            <?php } ?></td>
        </tr>
      <tr>
          <td>Last Name</td>
		  <td style="width:26px; display:inline-block" align="center">:</td>
          <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
            <?php if ($error_lastname) { ?>
            <span class="error"><?php echo $error_lastname; ?></span>
            <?php } ?></td>
        </tr>
         <!-- <tr>
          <td><?php echo $entry_company; ?></td>
          <td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
        </tr>
        <?php if ($company_id_display) { ?>
        <tr>
          <td><?php echo $entry_company_id; ?></td>
          <td><input type="text" name="company_id" value="<?php echo $company_id; ?>" />
            <?php if ($error_company_id) { ?>
            <span class="error"><?php echo $error_company_id; ?></span>
            <?php } ?></td>
        </tr>
        <?php } ?>
        <?php if ($tax_id_display) { ?>
        <tr>
          <td><?php echo $entry_tax_id; ?></td>
          <td><input type="text" name="tax_id" value="<?php echo $tax_id; ?>" />
            <?php if ($error_tax_id) { ?>
            <span class="error"><?php echo $error_tax_id; ?></span>
            <?php } ?></td>
        </tr>
        <?php } ?>-->
        <tr>
          <td>Address</td>
		  <td style="width:26px; display:inline-block" align="center">:</td>
          <td><textarea name="address_1" value=""><?php echo $address_1; ?></textarea>
            <?php if ($error_address_1) { ?>
            <span class="error"><?php echo $error_address_1; ?></span>
            <?php } ?></td>
        </tr>
        <!--<tr>
          <td><?php echo $entry_address_2; ?></td>
          <td><input type="text" name="address_2" value="<?php echo $address_2; ?>" /></td>
        </tr>-->
        
        <tr>
          <td>Zip Code</td>
		  <td style="width:26px; display:inline-block" align="center">:</td>
          <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" />
            <?php if ($error_postcode) { ?>
            <span class="error"><?php echo $error_postcode; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td>Country</td>
		  <td style="width:26px; display:inline-block" align="center">:</td>
          <td><select name="country_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == 100 ) { ?>
              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
            <?php if ($error_country) { ?>
            <span class="error"><?php echo $error_country; ?></span>
            <?php } ?></td>
        </tr>
       <!-- <tr>
          <td>Province:</td>
          <td><select name="zone_id">
            </select>
            <?php if ($error_zone) { ?>
            <span class="error"><?php echo $error_zone; ?></span>
            <?php } ?></td>
        </tr>-->
         <tr>
         <td>Province</td>
         <td style="width:26px; display:inline-block" align="center">:</td>
          <td><select name="zone_id"  onchange="$('select[name=\'city\']').load('index.php?route=vendor/edit/city&zone_id=' + this.value);">
            </select>
            <?php if ($error_zone) { ?>
            <span class="error"><?php echo $error_zone; ?></span>
            <?php } ?></td>
        </tr>
       <!-- <tr>
          <td><?php echo $entry_city; ?></td>
          <td><input type="text" name="city" value="<?php echo $city; ?>" />
            <?php if ($error_city) { ?>
            <span class="error"><?php echo $error_city; ?></span>
            <?php } ?></td>
        </tr>-->
         <tr>
          <td>City</td>
          <td style="width:26px; display:inline-block" align="center">:</td>
          <td><div id="cityColumn"></div><?php if ($error_city) { ?>
            <span class="error"><?php echo $error_city; ?></span>
            <?php } ?></td>
        </tr>
         <tr><td>Telephone</td><td style="width:26px; display:inline-block" align="center">:</td><td><input type="text" name="telephone" value="<?php echo $telephone; ?>" />
           </td></tr>
         <tr> 
           <td>&nbsp;</td>
		   <td>&nbsp;</td>
           <td><!-- <div class="left"><a href="<?php echo $back; ?>" class="btn"><?php echo $button_back; ?></a></div>--> <input type="submit" value="" class="save_btn" /></td>
         </tr>
       <!-- <tr>
          <td><?php echo $entry_default; ?></td>
          <td><?php if ($default) { ?>
            <input type="radio" name="default" value="1" checked="checked" />
            <?php echo $text_yes; ?>
            <input type="radio" name="default" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="default" value="1" />
            <?php echo $text_yes; ?>
            <input type="radio" name="default" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?></td>
        </tr>-->
      </table>
  </form>
  <!--<div id="cityDropdown" class="displayNone">
 	 <select name="city"><option value="">--None--</option> </select>
   </div>-->
   <div id="cityText" class="displayNone">
   	 <input type="text" name="city" value="" />
   </div>
  </div>
  </div>
  </div>
  </div> 
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	var countryId = this.value
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
			if(countryId == 100)
			{
				$('#cityColumn').html('<select id="cityDropdown" name="city"><option value="">--None--</option> </select>');
$('#cityDropdown').load('index.php?route=vendor/edit/city&zone_id=<?php echo $zone_id; ?>&city_name=<?php echo $city; ?>');
			}
			else
			{	
				$('#cityColumn').html($('#cityText').html());
				$('input[name=\'city\']').val('<?php echo $city; ?>');
			}
			
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});
$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php echo $footer; ?>
<script type="text/javascript">
$(document).ready(function() {
	
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
});
</script>	
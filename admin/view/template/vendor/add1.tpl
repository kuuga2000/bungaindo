<?php
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#auther: Gaurav patil
#data: 1 June 2013
*/
?>
<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/user.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a href="javascript:void(0)" onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
	 <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
     	<table class="form">
          <tr>
            <td><span class="required">*</span> <?php echo $entry_first_name; ?></td>
            <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
              <?php if ($error_first_name) { ?>
              <span class="error"><?php echo $error_first_name; ?></span>
              <?php } ?></td>
          </tr>
		  <tr>
            <td><span class="required">*</span> <?php echo $entry_last_name; ?></td>
            <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
              <?php if ($error_last_name) { ?>
              <span class="error"><?php echo $error_last_name; ?></span>
              <?php } ?></td>
          </tr>
		  
		  <tr>
            <td><span class="required">*</span> <?php echo $entry_email; ?></td>
            <td><input type="text" name="email" value="<?php echo $email; ?>" />
              <?php if ($error_email) { ?>
              <span class="error"><?php echo $error_email; ?></span>
              <?php } ?></td>
          </tr>
		  <tr>
            <td><span class="required">*</span> <?php echo $entry_password; ?></td>
            <td><input type="text" name="password" value="" />
              <?php if ($error_password) { ?>
              <span class="error"><?php echo $error_password; ?></span>
              <?php } ?></td>
          </tr>
		  
		  <tr>
            <td><?php echo $entry_shop_name; ?></td>
            <td><input type="text" name="shopname" value="<?php echo $shopname; ?>" /></td>
          </tr>
		  
		  <tr>
            <td><?php echo $entry_address; ?></td>
            <td><input type="text" name="address" value="<?php echo $address; ?>" /></td>
          </tr>
			
			<tr>
              <td><span class="required">*</span> <?php echo $entry_country; ?></td>
              <td><select name="country_id">
                  <option value=""><?php echo $entry_select_country; ?></option>
                  <?php foreach ($countries as $country) { ?>
                  <?php if ($country['country_id'] == $country_id) { ?>
                  <option value="<?php echo $country['country_id']; ?>" selected="selected"> <?php echo $country['name']; ?> </option>
                  <?php } else { ?>
                  <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
                <?php if ($error_country) { ?>
                <span class="error"><?php echo $error_country; ?></span>
                <?php } ?></td>
            </tr>
            <tr>
              <td><span class="required">*</span> <?php echo $entry_zone; ?></td>
              <td><select name="zone_id"></select>
                <?php if ($error_zone) { ?>
                <span class="error"><?php echo $error_zone; ?></span>
                <?php } ?></td>
            </tr>
		  
		  <tr>
            <td><span class="required">*</span> <?php echo $entry_city; ?><br/> <font style="font-size: 9px">Please dont add spance bewteen <br/>city name and comma<br>Example: city1, city2, city3</font></td>
            <td><input type="text" name="city" value="<?php echo $city; ?>" />
              <?php if ($error_city) { ?>
              <span class="error"><?php echo $error_city; ?></span>
              <?php } ?></td>
          </tr>
		  
		  <tr>
            <td><span class="required">*</span> <?php echo $entry_zip_code; ?></td>
            <td><input type="text" name="zip_code" value="<?php echo $zip_code; ?>" />
              <?php if ($error_zip_code) { ?>
              <span class="error"><?php echo $error_zip_code; ?></span>
              <?php } ?></td>
          </tr>
		  
		  <tr>
            <td><?php echo $entry_mobile; ?></td>
            <td><input type="text" name="mobile_number" value="<?php echo $mobile_number; ?>" /></td>
          </tr>
		  
		  <tr>
            <td><?php echo $entry_telephone; ?></td>
            <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" /></td>
          </tr>
		  
		  <tr>
            <td><?php echo $entry_fax; ?></td>
            <td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
          </tr>
		  
		  <tr>
            <td><?php echo $entry_website; ?></td>
            <td><input type="text" name="website" value="<?php echo $website; ?>" /></td>
          </tr>
		  
		 </table>
	 </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>
<script type="text/javascript">
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=vendor/add/country&token=<?php echo $token; ?>&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'payment_country_id\']').after('<span class="wait">&nbsp;<img src="view/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $entry_select_select; ?></option>';
			
			if (json != '' && json['zone'] != '') {
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
</script>
<?php
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#author: Sheetal Godase
#data: 13 June 2013
*/
?>
<?php
$city = str_replace(' ','_',$city);
 ?>

<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<div id="content">
  <div class="category_box">
    <div class="home_ttl_fold"><span class="whtDot"></span> <?php echo $heading_title; ?> <span class="whtDot"></span></div>
    <div class="afflt_acc_bx">
      <div class="afflt_lft">
          <?php echo $column_left; ?>
      </div>
      <div class="afflt_rgt">
       <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      	<b class="edit-heading" style="padding-top:0px;">Personal Information:</b>
           
           
           <table cellpadding="0" cellspacing="0" border="0" width="100%" class="pi">
           <tr>
               <th><?php echo $entry_firstname; ?></th>
               <td align="center" valign="middle" class="dot">:</td>
               <td><label><?php echo $firstname; ?></label></td>
               <th><?php echo $entry_lastname; ?></th>
               <td align="center" valign="middle" class="dot">:</td>
               <td><label><?php echo $lastname; ?></label></td>
           </tr>
           
           <tr> 
              <th><?php echo $entry_email; ?></th>
              <td align="center" valign="middle" class="dot">:</td>
              <td width="142"><label style="width:125px; float:left; overflow:hidden;"><?php echo $email; ?></label></td>
              <th>&nbsp;</th>
               <td align="center" valign="middle" class="dot">&nbsp;</td>
              <td>&nbsp;</td>
           </tr>
           <tr>
                <th><?php echo $entry_password; ?></th>
				<td align="center" valign="middle" class="dot">:</td>
	            <td><input type="password" name="password" value="" /><?php if ($error_password) { ?>
	              <span class="error"><?php echo $error_password; ?></span>
	              <?php } ?>
			    </td>
                <td width="100"><?php echo $entry_confirm_password; ?></td>
				<td align="center" valign="middle" class="dot">:</td>
            	<td><input type="password" name="confirm_password" value="" /><?php if ($error_confirm_password) { ?>
              <span class="error"><?php echo $error_confirm_password; ?></span>
              <?php } ?>
              </td>
              
           </tr>
            <tr>
               <th><?php echo $entry_shop_name; ?></th>
               <td align="center" valign="middle" class="dot">:</td>
               <td><input type="text" name="shopname" value="<?php echo $shopname; ?>" /></td>
               <td><?php echo $entry_website; ?></td>
                <td align="center" valign="middle" class="dot">:</td>
               <td><input type="text" name="website" value="<?php echo $website; ?>" /></td>
               
           </tr>
        </table>
           <b class="edit-heading">Address:</b>
           
             <table cellpadding="0" cellspacing="0" border="0" width="100%" class="add">
           
           <tr>
             <th><?php echo $entry_address; ?></th>
               <td align="center" valign="middle" class="dot">:</td>
            <td><textarea name="address" style="height:40px;" ><?php echo $address; ?></textarea></td>
                
            <td colspan="6">&nbsp;</td>
            
           
           </tr>
           
           
           <tr>
           <th> <?php echo $entry_country; ?></th>
                <td align="center" valign="middle" class="dot">:</td>
          	<td><?php echo $countryName; ?><!--<select name="country_id" style="width:135px;">
              <option value=""><?php if ($error_country) { 
            echo $error_country; } else echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == 100) { ?>
              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
            <?php if ($error_country) { ?>
            <span class="error"><?php echo $error_country; ?></span>
            <?php } ?>--></td>
              <th> Province</th>
              <td align="center" valign="middle" class="dot">:</td>
              <td><?php echo $zoneName; ?><!--<select name="zone_id" onchange="$('select[name=\'city\']').load('index.php?route=account/login_register/city&zone_id=' + this.value);" style="width:135px;"></select>
                <?php if ($error_zone) { ?>
                <span class="error"><?php echo $error_zone; ?></span>
                <?php } ?>--></td>
                <th><?php echo $entry_city; ?></th>
                <td align="center" valign="middle" class="dot">:</td>
            <td><div id="cityColumn" style="word-wrap: break-word; width: 140px"><?php echo $city; ?></div><!--<input type="text" name="city" value="<?php echo $city; ?>" />-->
              <?php if ($error_city) { ?>
              <span class="error"><?php echo $error_city; ?></span>
              <?php } ?></td>
             
           </tr>
           <tr>
           
               <th> <?php echo $entry_zip_code; ?></th>
               <td align="center" valign="middle" class="dot">:</td>
            <td><input type="text" name="zip_code" value="<?php echo $zip_code; ?>" style="width:135px;" />
              <?php if ($error_zip_code) { ?>
              <span class="error"><?php echo $error_zip_code; ?></span>
              <?php } ?></td>
              <td colspan="6">&nbsp;</td>
           </tr>
             <tr>
             
             
               <th><?php echo $entry_mobile; ?></th>
               <td align="center" valign="middle" class="dot">:</td>
            <td><input type="text" name="mobile_number" value="<?php echo $mobile_number; ?>" style="width:135px;" /></td>
            
             <th><?php echo $entry_telephone; ?></th>
             <td align="center" valign="middle" class="dot">:</td>
            <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" style="width:135px;" /></td>
            
            <th><?php echo $entry_fax; ?></th>
             <td align="center" valign="middle" class="dot">:</td>
            <td><input type="text" name="fax" value="<?php echo $fax; ?>" style="width:135px;" /></td>
            </tr>
            <tr>
           <td colspan="9" style="margin-left:83px; display:inline; margin-top:5px;"><input type="submit" name="submit" value="" class="save_btn" /></td>
           
           
           </tr>
           </table>
           </form>
          
          
        </div>	
    </div>
  </div>
</div>
 <div id="cityDropdown" class="displayNone">
 	 <select name="city" id="cityDropdown" style="width:135px;"><option value="">-None-<option></select>
   </div>
   <div id="cityText" class="displayNone">
   	 <input type="text" name="city" value="" />
   </div>
<script>
/*$( document ).ready(function() {
$("#form :input").attr("disabled", true);
});*/

</script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	var countryId = this.value
	$.ajax({
		url: 'index.php?route=vendor/account/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
			if(countryId == 100)
			{
				$('#cityColumn').html($('#cityDropdown').html());
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
$( document ).ready(function() {

});

//--></script>
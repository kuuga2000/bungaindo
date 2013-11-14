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

<?php echo $header; ?>
<div id="content">
  <div class="category_box">
    <div class="home_ttl_fold"><span class="whtDot"></span> <?php echo $heading_title; ?> <span class="whtDot"></span></div>
    <div class="afflt_acc_bx">
	<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
      <div class="afflt_lft" >
          <?php echo $column_left; ?>
        
      </div>
      <div class="afflt_rgt" style="border-left:none !important; width: 698px; padding-left:0px;">
      <div class="aff_rgt_lft" style="border-left: solid 1px #e7eacb; padding-left:36px;">
      
      <h2>LORUM IPSUM</h2>
	  <ul><li>test</li><li>test1</li></ul>
     </div>
      <div class="aff_rgt_rgt">
      <!-- <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">-->
      	<h2>Personal Information:</h2>
           <table>
           <tr>
               <td width="145">  <?php echo $entry_firstname; ?></td>
               <td width="8">:</td>
            <td><label><?php echo $firstname; ?></label></td>
             </tr>
             <tr>
              <td>  <?php echo $entry_lastname; ?></td>
              <td width="8">:</td>
            <td><label><?php echo $lastname; ?></label></td>
           </tr>
           <tr>
              <td>  <?php echo $entry_email; ?></td>
              <td width="8">:</td>
            <td><label><?php echo $email; ?></label></td>
              
           </tr>
           <tr>
              <td>Password</td>
              <td width="8">:</td>
           	  <td><label>*******</label></td>
           </tr>
            <tr>
               <td><?php echo $entry_shop_name; ?></td>
               <td width="8">:</td>
            <td><label><?php echo $shopname; ?></label></td>               
           </tr>
           
           <tr>
              <td><?php echo $entry_address; ?></td>
              <td width="8">:</td>
            <td><label><?php echo $address; ?></label></td>               
           </tr>
           <tr>
                <td>  <?php echo $entry_country; ?></td>
                <td width="8">:</td>
          		<td><?php echo $countryName; ?></td>
           </tr>
           <tr>
             
              <td>Province</td>
              <td width="8">:</td>
              <td><?php echo $zoneName; ?></td>
           </tr>
           <tr>
                <td><?php echo $entry_city; ?></td>
                <td width="8">:</td>
            <td><label><?php echo $city; ?></label> </td>
           </tr>
		   
           <tr>
               <td colspan="1">  <?php echo $entry_zip_code; ?></td>
               <td width="8">:</td>
            	<td><label><?php echo $zip_code; ?></label> </td>
           </tr>
		   
             <tr>
               <td><?php echo $entry_mobile; ?></td>
               <td width="8">:</td>
            <td><label><?php echo $mobile_number; ?></label></td>
                
           </tr>
           <tr>
             <td><?php echo $entry_telephone; ?></td>
             <td width="8">:</td>
            <td><label><?php echo $telephone; ?></label></td>
            </tr>
            <tr>
             <td><?php echo $entry_fax; ?></td>
             <td width="8">:</td>
            <td><label><?php echo $fax; ?></label></td>
           </tr>
		   <tr>
              <td><?php echo $entry_website; ?></td>
              <td width="8">:</td>
            <td><label><?php echo $website; ?></label></td>
           </tr>
           <tr>
              <td>&nbsp;</td>
              <td width="8">&nbsp;</td>
            <td>
           <!-- <a href="javascript:void(0)" onclick="$('#form').submit();" class="button"><?php echo $button_edit; ?></a>-->
            <input type="submit" name="submit" onclick="window.location.href='<?php echo $action; ?>'" value="" class="edit_gray_btn top5"></td>
           </tr>
           
           </table>
         <!-- </form>-->
            
        </div>
          
        </div>	
    </div>
  </div>
</div>
<script>
/*$( document ).ready(function() {
$("#form :input").attr("disabled", true);
});*/

</script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=vendor/account/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
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
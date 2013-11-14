
<style>
.recaptcha{
	
width:200px !important;
	
}

</style>
<?php 
$strBreadcrumb = '';
 foreach ($breadcrumbs as $breadcrumb)
 {
 	$strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
 }
echo $header; 

?>

<?php  //echo $column_left; ?><?php // echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <!--<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php  echo $breadcrumb['separator']; ?><a href="<?php  //echo $breadcrumb['../common/account/href']; ?>"><?php  echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>-->
  <h1><?php //echo $heading_title; ?></h1>
  
  <?php if ($activated) { ?>
  <div class="success"><?php echo $activated; ?></div>
  <?php } ?>
  <div class="category_box login_bx">
<div class="home_ttl_fold"><span class="whtDot"></span> Shop Our Wide Range of Category <span class="whtDot"></span></div> 
   <!-- ************************************ LOGIN FORM STARTS*************************** --> 
    <div class="left">
     <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="content">
        <table class="form" width="100%" cellpadding="0" cellspacing="0">
        <?php if ($error_warning_login) { ?>
          <tr> 
          		<td colspan="3">
<div class="warning"><?php echo $error_warning_login; ?></div>

          </td>
          </tr>
          <?php } ?>
          <?php if ($success) { ?>
          <tr><td colspan="3" > 
	<div class="success"><?php echo $success; ?></div>
	</td></tr>
    <?php } ?>
    
    	<tr colspan="2">
        	<td colspan="3" style="padding:0px;">
        	  <h2><?php echo $text_i_am_returning_customer; ?></h2>
      	  </td>
        	</tr>
         <tr>
         	<td width="50" style="padding-top:2px;"><?php echo $entry_email; ?></td>
         	<td width="20" align="center" style="padding-top:2px;">:</td>
         <td style="padding-top:2px;"> <input type="text" name="email_login" value="<?php echo $email_login; ?>" /></td>
         </tr>
         <tr>
            	<td style="padding-top:2px;"><?php echo $entry_password; ?></td>
            	<td align="center" style="padding-top:2px;">:</td>
            	
                <td style="padding-top:2px;">
              
                <input type="password" name="password_login" value="<?php echo $password_login; ?>" /></td>
         </tr>
       
          <tr>
          	<td>&nbsp;</td>
          	<td>&nbsp;</td>
            <td>
            <input type="hidden" name="login" value="SIGN IN" />
            <!--<input  name="submit" type="submit" value="" class="sign_in_btn"  onclick="<?php echo $action; ?>"/>-->
            <button class="sign_in_btn" onclick="<?php echo $action; ?>"></button></td>
                
            </tr>
              <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
            	<td><a class="font10" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></td>
          </tr>
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
          </table>
        </div>
      </form>
    </div>
     <!-- ************************************ LOGIN FORM ENDS*************************** --> 
     <!-- ************************************ REGISTRATION FORM STARTS *************************** --> 
    <div class="right">
     <!-- <h2><?php echo $text_new_customer; ?></h2>
      <div class="content">
        <p><b><?php echo $text_register; ?></b></p>
        <p><?php echo $text_register_account; ?></p>
        <a href="<?php echo $register; ?>" class="button"><?php echo $button_continue; ?></a></div>-->
      <!--  <h1><?php echo $heading_title; ?></h1>-->
        <!--<p><?php echo $text_account_already; ?></p>-->
        <form action="<?php echo $action_reg; ?>" method="post" enctype="multipart/form-data">
   
   
	
    <div class="content register_div" >
    <h2>New Customer? Please register first</h2>
     <h3><?php echo $text_your_details; ?></h3>
      <table class="form" width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td><?php echo $entry_firstname; ?></td>
          <td width="20" align="center">:</td>
          <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $error_firstname; ?>" />
            <!--<?php if ($error_firstname) { ?>
            <span class="error"><?php echo $error_firstname; ?></span>
            <?php } ?>--></td>
        </tr>
        <tr>
          <td>  <?php echo $entry_lastname; ?></td>
          <td width="20" align="center">:</td>
          <td><input type="text" name="lastname"  value="<?php echo $lastname; ?>" placeholder="<?php echo $error_lastname; ?>"/>
           </td>
        </tr>
        <tr>
          <td>  <?php echo $entry_email; ?></td>
          <td width="20" align="center">:</td>
          <td><input type="text" name="email"  value="<?php if($error_email=='')echo $email; ?>" placeholder="<?php echo $error_email; ?>"  />
           </td>
        </tr>
        <tr>
          <td>  <?php echo $entry_password; ?></td>
          <td width="20" align="center">:</td>
           <td><input type="password" name="password"  value="<?php //echo $password; ?>"  placeholder="<?php echo $error_password; ?>" /></td>
         
          <!-- <?php if ($error_password) { ?>
           <td><input type="text" name="password" id="error_password"   value="<?php echo $error_password; ?>" /></td>
           <?php }  else { ?>
            <td><input type="password" name="password" value="<?php echo $password; ?>" /></td>
           
           <?php } ?>-->
          
        </tr>
        <tr>
          <td>  <?php echo $entry_confirm; ?></td>
          <td width="20" align="center">:</td>
          <td><input type="password" name="confirm"   value="<?php //echo $confirm; ?>"  placeholder="<?php echo $error_confirm; ?>"/>
          
       	   </td>
        </tr>
      </table>
	  
    </div>
    <div class="content register_div">
     <h3><?php echo $text_your_address; ?></h3>
      <table class="form" width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td>  <?php echo $entry_address_1; ?></td>
          <td width="20" align="center">:</td>
          <td><input type="text" name="address_title"  value="<?php echo $address_title; ?>"  placeholder="<?php echo $error_address_title; ?>" />
            </td>
        </tr>
        <tr>
          <td> <?php echo $entry_address_2; ?></td>
          <td width="20" align="center">:</td>
          <td><textarea name="address_1" placeholder="<?php echo $error_address_1; ?>" ><?php echo $address_1; ?></textarea>
		  </td>
        </tr>
        <tr>
          <td>  <?php echo $entry_country; ?></td>
          <td width="20" align="center">:</td>
          <td><select name="country_id">
              <option value=""><?php if ($error_country) { 
            echo $error_country; } else echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == $country_id) { ?>
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
		
        <tr>
          <td>  <?php echo $entry_zone; ?></td>
          <td width="20" align="center">:</td>
          <td><select name="zone_id"  onchange="$('select[name=\'city\']').load('index.php?route=account/login_register/city&zone_id=' + this.value);">
            <option value=""><?php if ($error_zone!='') { 
            echo $error_zone; } else echo $text_select; ?></option>
            </select>
            <?php if ($error_zone) { ?>
            <span class="error"><?php echo $error_zone; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td>  <?php echo $entry_city; ?></td>
          <td width="20" align="center">:</td>
          <td><div id="cityColumn"></div><?php if ($error_city) { ?>
            <span class="error"><?php echo $error_city; ?></span>
            <?php } ?></td>
        </tr>
        <tr>
          <td><!--<span id="postcode-required" class="required">*</span> --><?php echo $entry_postcode; ?></td>
          <td width="20" align="center">:</td>
          <td><input type="text" name="postcode" value="<?php if($error_postcode=='') echo $postcode; ?>"  placeholder="<?php echo $error_postcode; ?>"/>
           </td>
        </tr>
         <tr>
          <td>  <?php echo $entry_telephone; ?></td>
          <td width="20" align="center">:</td>
          <td><input type="text" name="telephone" value="<?php if($error_telephone=='') echo $telephone; ?>"  placeholder="<?php echo $error_telephone; ?>"/>
            </td>
        </tr>
       <!-- <tr>
          <td><?php echo $entry_fax; ?></td>
          <td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
        </tr>
        -->
        
        <!--  ####################CAPTCHA CODE STARTS#################################### -->
        <tr>

        

        	<td colspan="3"><!--<span class="required">*</span>--> <?php echo recaptcha_get_html($public_key); ?> </td>

        </tr>
		<tr>
        <td colspan="3"><?php if ($error_recaptcha) { ?>
            <span class="error"><?php echo $error_recaptcha; ?></span>
            <?php } ?></td></tr>
      <!--   ####################CAPTCHA CODE ENDS#################################### -->
        <tr>
         	  <td>&nbsp;</td>
         	  <td width="20" align="center">&nbsp;</td>
       		
               <td>
            <input type="hidden" name="registration" value="Create Account" />
            
            <!--<input type="submit" name="submit" value="" class="create_acc_btn" />-->
            <button class="create_acc_btn" onclick="<?php echo $action_reg; ?>"></button></td>
         </tr>
        
      </table>
          </div>
  </form>
  <!--<div id="cityDropdown" class="displayNone">
 	 <select name="city"> <option value=""><?php if ($error_city) { 
            echo $error_city; } else echo $text_select; ?></option> </select>
   </div>-->
   <div id="cityText" class="displayNone">
   	 <input type="text" name="city" value="" />
   </div>
     <!-- ************************************ REGISTRATION FORM ENDS *************************** --> 
  </div>
  <?php echo $content_bottom; ?></div>
  </div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<script type="text/javascript"><!--
/*$('input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('input[name=\'customer_group_id\']:checked').trigger('change');*/
//--></script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	var countryId = this.value
	var city = '<?php echo $city; ?>';
	city = city.replace(' ','_');
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
				//alert(countryId);
				//$('#cityColumn').html($('#cityDropdown').html());
			//alert($('#cityDropdown').html())
				$('#cityColumn').html('<select id="cityDropdown" name="city"><option value="">--None--</option> </select>');
$('#cityDropdown').load("index.php?route=vendor/edit/city&zone_id=<?php echo $zone_id; ?>&city_name="+city);
			}
			else
			{	
				//$('#cityColumn').html($('#cityText').html());
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
<script type="text/javascript"><!--
$(document).ready(function() {
	$('input[placeholder],textarea[placeholder]').placeholder();
	//$('input[placeholder],textarea[placeholder]').addClass('error');
	
	/*$('input[placeholder],textarea[placeholder]').click(function(){
		$(this).val('');
		$(this).removeClass('error');
	})*/
	
	
	
	$('.colorbox').colorbox({
		width: 640,
		height: 480
	});
	
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
	
	var isError = '<?php echo $isError; ?>';
	if(isError == 1)
	{
		
	
		
		$('.register_div input[type=\'text\']').each(function(){
			if($(this).attr("placeholder")== '*You must fill in this form' || $(this).attr("placeholder")== '*Warning: Email Exists!')
			{
				//$(this).val('You must fill in this form');
				$(this).addClass('error');
			}
			
		})	
		
		$('.register_div textarea').each(function(){
			
			if($(this).attr("placeholder")== '*You must fill in this form' || $(this).attr("placeholder")== '*Warning: Email Exists!')
			{
				//$(this).val('You must fill in this form');
				$(this).addClass('error');
			}
			
		})
		$('.register_div input[type=\'password\']').each(function(){
			
			if($(this).attr("placeholder")== '*You must fill in this form' || $(this).attr("placeholder")== '*Password not matched')
			{
				//$(this).val('You must fill in this form');
				$(this).addClass('error');
			}
			
		})	
		
		
		/*$("select").each(function() {
			var check=this.options[this.selectedIndex].text;
			if(check== '*You must fill in this form')
			$(this).addClass('error');
    //alert(this.options[this.selectedIndex].value);
});*/
			
	}
	$('input[type=\'text\'],textarea,input[type=\'password\']').focus(function(){
		
		//$(this).attr("placeholder");
		//$(this).val('');
		$(this).removeClass('error');
	})
});
//--></script>

<script>
/*$("#recaptcha_table").removeClass("recaptcha_theme_red");

//$("#recaptcha_image").css("width","");
//$("#recaptcha_image").css("width","250px");*/
$("#recaptcha_table").css("width","");
//$("#recaptcha_area").addClass("recaptcha");
$("#recaptcha_area").css("width","");

</script>
<?php echo $footer; ?>
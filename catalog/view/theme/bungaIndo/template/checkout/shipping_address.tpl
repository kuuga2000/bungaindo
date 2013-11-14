<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

<div id="content"><?php echo $content_top; ?>


<div class="cart-tab" style="margin-top:88px;">
    <ul>
        <li class="light"><i></i><span>Cart</span></li>
        <li class="active"><i></i><span class="sec-tab">Shipping Address</span></li>
        <li><i></i><span class="third-tab">Payment</span></li>
        <li><i></i><span>Success</span></li>
    </ul>
</div>
<?php if(isset($isError) && $isError == 1) { ?>
<div class="warning">Please check all tabs for error</div>
<?php } ?>

<!-- ADDING TABS-->



<?php if(sizeof($cart_products) >=2 )
{?>
<div id="tabs" class="htabs">
<?php 
$productCount = 1;
foreach($cart_products as $cart_product)
	{ 
		if($cart_product['upselling']=='0'){ ?>
		<a style="display: inline;" href="#tab-<?php echo $cart_product['key'] ?>">Gift <?php echo $productCount; ?></a>
		<?php	} //if
	$productCount++;
	} //foreach ?>
    </div>
<?php } ?>



<!-- END OF TABS-->

  <form id="shippingAddressFrm" action="<?php echo $action; ?>" method="POST" enctype="multipart/form-data">
  <?php foreach($cart_products as $cart_product)
	{
	if($cart_product['upselling']=='0')
	{
	 ?>
	 <input type="hidden" name="<?php echo $cart_product['key'] ?>[productId]" value="<?php echo $cart_product['key']; ?>"/>
	 <div id="tab-<?php echo $cart_product['key']; ?>"> 
	  <div class="ship_add_lft">
	<?php if ($addresses) { ?>
		<input type="radio" name="<?php echo $cart_product['key']; ?>[shipping_address]" value="existing" id="shipping_address_existing_<?php echo $cart_product['key']; ?>" checked="checked" class="shipping-address-existing" />
		<label for="shipping_address_existing_<?php echo $cart_product['key']; ?>"><?php echo $text_address_existing; ?></label>
		<div id="shipping_existing_<?php echo $cart_product['key'] ?>" class="shipping-existing">
		  <select name="<?php echo $cart_product['key'] ?>[address_id]" style="width: 100%; margin-bottom: 15px;">
		    <?php foreach ($addresses as $address) { ?>
		    <?php if ($address['address_id'] == $values[$cart_product['key']]['address_id']) { ?>
		    <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
		    <?php } else { ?>
		    <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
		    <?php } ?>
		    <?php } ?>
		  </select>
		  <?php  if(isset($error[$cart_product['key']]['shipping_address'])){ ?>
		  	 <span class="error"><?php echo $error[$cart_product['key']]['shipping_address']; ?></span>
		  <?php } ?>
		</div>
		<?php }	?>
	<p>
	  <input type="radio" name="<?php echo $cart_product['key'] ?>[shipping_address]" value="new" id="shipping_address_new_<?php echo $cart_product['key'] ?>" class="shipping-address-new" />
	  <label for="shipping_address_new_<?php echo $cart_product['key'] ?>"><?php echo $text_address_new; ?></label>
	</p>					
	<div id="shipping_new_<?php echo $cart_product['key'] ?>" class="shipping-new" style="display: <?php echo ($addresses ? 'none' : 'block'); ?>; margin: 0 0 10px 0;">
    <h1>Shipping address</h1>
        <p class="ordr_lst_black">Personal Information</p>
 	 <table class="form">
		  <tr>
		      <td width="113"><span class="ship_form_pad"><?php echo $entry_address_title; ?></span></td>
              <td width="35" align="center"><span class="ship_form_pad">:</span></td>
		      <td width="170"><input type="text" name="<?php echo $cart_product['key'] ?>[address_title]" value="" class="large-field" /></td>
		    </tr>
            <tr>
		      <td><span class="ship_form_pad">Recipient's Location</span></td>
             <td width="35" align="center"><span class="ship_form_pad">:</span></td>
		      <td>
            <select name="<?php echo $cart_product['key'] ?>[recipient_location]">
                <option value="Residence">Residence</option>
                <option value="Business">Business</option>
                <option value="Funeral home">Funeral home</option>
                <option value="Hospital">Hospital</option>
                <option value="Apartment">Apartment</option>
                <option value="School">School</option>
                <option value="Church">Church</option>
            </select>
              </td>
		    </tr>
		    <tr>
		      <td><span class="ship_form_pad">Recipient's First name</span></td>
             <td width="35" align="center">:</td>
		      <td><input type="text" name="<?php echo $cart_product['key'] ?>[firstname]" value="<?php echo $values[$cart_product['key']]['firstname']; ?>" class="large-field" />
		      <?php if ($error[$cart_product['key']]['error_firstname']) { ?>
		            <span class="error"><?php echo $error[$cart_product['key']]['error_firstname']; ?></span>
		            <?php } ?></td>
		    </tr>
		    <tr>
		      <td><span class="ship_form_pad">Recipient's Last name</span></td>
             <td width="35" align="center"><span class="ship_form_pad">:</span></td>
		      <td><input type="text" name="<?php echo $cart_product['key'] ?>[lastname]" value="<?php echo $values[$cart_product['key']]['lastname']; ?>" class="large-field" />  <?php if ($error[$cart_product['key']]['error_lastname']) { ?>
		            <span class="error"><?php echo $error[$cart_product['key']]['error_lastname'] ?></span>
		            <?php } ?></td>
		     
		    </tr>
		    <tr>
		      <td colspan="3">
              <div class="skin skin-minimal">
				 <input type="checkbox" name="" id="minimal-checkbox-1" checked="checked"/>
				</div>We will save this address to your address book
              </td>
	        </tr>
		    <tr>
		      <td>Address</td>
             <td width="35" align="center">:</td> 
		      <td>
              <textarea name="<?php echo $cart_product['key'] ?>[address_1]" cols="" rows=""></textarea>
              <!--<input type="text" name="<?php echo $cart_product['key'] ?>[address_1]" value="<?php echo $values[$cart_product['key']]['address_1']; ?>" class="large-field" />-->
		       <?php if ($error[$cart_product['key']]['error_address_1']) { ?>
		            <span class="error"><?php echo $error[$cart_product['key']]['error_address_1']; ?></span>
		            <?php } ?></td>
		    </tr>
			 <tr>
		      <td><span class="ship_form_pad"><?php echo $entry_country; ?></span></td>
		     <td width="35" align="center"><span class="ship_form_pad">:</span></td>
		      <td><select name="<?php echo $cart_product['key'] ?>[country_id]" class="large-field">
		          <option value=""> <?php echo $text_select;  ?></option>
		          <?php foreach ($countries as $country) { ?>
		          <?php if ($country['country_id'] == $values[$cart_product['key']]['country_id']) { ?>
		          <option selected="selected" value="<?php echo $country['country_id']; ?>" ><?php echo $country['name']; ?></option>
		          <?php } else { ?>
		          <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
		          <?php } ?>
		          <?php } ?>
		        </select><?php if ($error[$cart_product['key']]['error_country']) 
		        { ?> <span class="error"><?php echo $error[$cart_product['key']]['error_country']; ?></span> <?php  } ?> </td>
		    </tr>
		    <tr>
		      <td><span class="ship_form_pad">Province</span></td>
             <td width="35" align="center"><span class="ship_form_pad">:</span></td>
		      <td><select name="<?php echo $cart_product['key'] ?>[zone_id]" onchange="$('select[name=\'<?php echo $cart_product['key'] ?>[city]\']').load('index.php?route=checkout/shipping_address/city&zone_id=' + this.value);" class="large-field">
		        </select><?php if ($error[$cart_product['key']]['error_zone']) { ?>
		            <span class="error"><?php echo $error[$cart_product['key']]['error_zone']; ?></span>
		            <?php } ?></td>
		    </tr>
		    <tr>
		      <td><span class="ship_form_pad"><?php echo $entry_city; ?></span></td>
             <td width="35" align="center"><span class="ship_form_pad">:</span></td>
		      <td><div id="cityColumn_<?php echo $cart_product['key'] ?>"></div>
			  
		      <?php if ($error[$cart_product['key']]['error_city']) { ?>
		            <span class="error"><?php echo $error[$cart_product['key']]['error_city']; ?></span>
		            <?php } ?></td>
		    </tr>
		    <tr>
		      <td><span id="shipping-postcode-required"></span><span class="ship_form_pad">Zip Code</span></td>
             <td width="35" align="center"><span class="ship_form_pad">:</span></td>
		      <td><input type="text" name="<?php echo $cart_product['key'] ?>[postcode]" value="<?php //echo $postcode; ?>" class="large-field" /></td>
		    </tr>
            <tr>
		      <td><span class="ship_form_pad">Telephone</span></td>
             <td width="35" align="center"><span class="ship_form_pad">:</span></td>
		      <td><input name="<?php echo $cart_product['key'] ?>[telephone]" type="text" /></td>
	        </tr>
  	</table>
	</div>																		
	<br />
	<div class="shipping-new">
	<table>
		 <tr>
		      <td style="width: 112px"><span class="ship_form_pad">Choose delivery date</span></td>
             <td width="35" align="center"><span class="ship_form_pad">:</span></td>
		     <td valign="top"><input type="text" name="<?php echo $cart_product['key'] ?>[delivery_date]" value="<?php echo date('d-m-Y',strtotime($this->session->data['delivery_date'][$cart_product['key']])); ?>" size="12" readonly="readonly" id="delivery_date_<?php echo $cart_product['key'] ?>" class="date" style="width:114px !important;" /> 
		     <!--  <img src="catalog/view/theme/bungaIndo/images/datepicker.png" width="26" height="20" align="absmiddle" style="margin:-4px 0 0 0;" />-->
<?php if ($error[$cart_product['key']]['error_date_available']) { ?>
		            <span class="error"><?php echo $error[$cart_product['key']]['error_date_available']; ?></span>
		            <?php } ?></td>
		    </tr>			<tr>				<td colspan="3"></td>			</tr>			<tr>				<td style="width: 112px"><span class="ship_form_pad">Order time</span></td>				<td width="35" align="center"><span class="ship_form_pad">:</span></td>				<td>					<input style="width:10px;" type="radio" name="<?php echo $cart_product['key'] ?>[time]" value="09:00-17:00"> 09:00-17:00 <br>					<input style="width:10px;" type="radio" name="<?php echo $cart_product['key'] ?>[time]" value="17:00-22:00"> 17:00-22:00				</td>			</tr>
	</table>
	</div>
  </div>																																											
		<div class="ship_add_rgt">
<!-- addditional products------->
	   <?php if ($products) { ?>
	  <div id="tab-related" class="tab-content" style="margin-bottom: 42px;"> <div class="checkout-heading"><span>Additional</span></div>
	    <div class="box-product" style="margin-top: 14px;">
	      <?php foreach ($products as $product) { ?>
	      <div>
	        <?php if ($product['thumb']) { ?>
	        <div class="image"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></div>
	        <?php } ?>
	                 
            <div class="skin skin-minimal">
            <input  type="checkbox" value="" name="<?php echo $cart_product['key'] ?>[upsellingcheck][<?php echo $product['category_id'] ?>]"  class="checkbox" id="upsell_<?php echo $cart_product['key'] ?>_<?php echo $product['category_id'] ?>" />&nbsp;<?php echo $product['name']; ?>
</div>
	      
		  <select id="select_<?php echo $cart_product['key'] ?>_<?php echo $product['category_id'] ?>" name="<?php echo $cart_product['key'] ?>[upselling][<?php echo $product['category_id'] ?>]"  onchange="javascript:checkbox_upsell('<?php echo $cart_product['key'] ?>','<?php echo $product['category_id'] ?>')">
		<!--  <option value="">Select product</option>-->
          	<?php foreach($product['product_upsell'] as $p_u)
			{ ?>
				<option value="<?php echo $p_u['product_id']; ?>" ><?php echo $p_u['name'].' IDR '.number_format($p_u['price'],0,',','.'); ?></option>
			<?php } ?>
		  </select>
          
	       <!-- <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><?php echo $button_cart; ?></a>--></div>
	      <?php } ?>
	    </div>
	  </div>
	  <?php } 
	  else { ?>
	  <div id="tab-related" class="tab-content"> <div class="checkout-heading"><span>Upselling products</span></div>
	    <div class="box-product">
	    No Upselling Products Available!
	    </div>
	    </div>
	 <?php } ?> 
	 <!-- addditional products------->
	 <!-- card message -->
     	<div class="card_msg">
	  <div class="checkout-heading"><span><?php echo $text_comments ?></span></div>
      <div class="card_msg_lft">
      
      <div style="float:left; width:100%;">
      <div class="skin skin-minimal">
	  <input type="radio" name="<?php echo $cart_product['key'] ?>[comment_message]" value="1" checked="checked"  id="comment_yes"  /></div>
	  
      <label style="padding-left:4px;">Yes, off course</label></div>
      
	   <div style="float:left; width:100%;"><div class="skin skin-minimal">
       
       <input type="radio" name="<?php echo $cart_product['key'] ?>[comment_message]" value="0" id="comment_no"  /></div>
	    <label style="padding-left:4px;">No, thanks</label></div>
        </div>
        <div class="card_msg_rgt">Max Character <label name="limit" id="limit_<?php echo $cart_product['key'] ?>">200</label></div>
        </div>
	  <!-- card message -->
      
      <div class="comment_bx"> 
      <div class="comment_bx_lft" id="comment_div">
	 <textarea id="comment_<?php echo $cart_product['key'] ?>" onkeyup="validate_count(<?php echo $cart_product['key'] ?>)" name="<?php echo $cart_product['key'] ?>[comment]" rows="" maxlength="200"><?php //echo $comment; ?></textarea></div>	
    </div>
	
	</div>																									</div>	
	<?php } } ?>	
</form>
 <div class="comment_bx_rgt">
    <input type="button" name="submit" onclick="$('#shippingAddressFrm').submit()" value="" class="next_btn" />
    <!--<input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-address" class="button" />-->
    </div>
    </div>
<?php foreach($cart_products as $cart_product)
	{
	if($cart_product['upselling']=='0')
	{
	 ?>
		<div id="cityDropdown_<?php echo $cart_product['key'] ?>" class="displayNone">
		 	 <select  name="<?php echo $cart_product['key'] ?>[city]"> </select>
		   </div>
		   <div id="cityText_<?php echo $cart_product['key'] ?>" class="displayNone">
		   	<input type="text" name="<?php echo $cart_product['key'] ?>[city]" value="<?php echo $values[$cart_product['key']]['city'] ?>" class="large-field" />
		   </div>	
		
	<?php } } ?>
	
</div>


<?php echo $footer; ?>

<script>
function getMinDate(specialStartDate)
{
	if(specialStartDate != '')
	{
		
		startArr = specialStartDate.split('-')
		
		minDate = new Date(startArr[0],startArr[1],startArr[2]);
		
		currentDate = new Date();
		if(currentDate.getFullYear() >= startArr[0] && (currentDate.getMonth()+1) >= startArr[1] &&  currentDate.getDate() > startArr[2]  )
		{
			minDate = new Date();
		}
	}
	else
	{
		minDate = new Date();		
	}
	return minDate;
}

function getMaxDate(specailEndDate)
{
	maxDate = '';
	if(specailEndDate != '')
	{
		endArr = specailEndDate.split('-');
		
		maxDate = new Date(endArr[0],endArr[1]-1,endArr[2]);
	}
	return maxDate
}

$(document).ready(function(){

	  $("#comment_yes").click(function(){
           //  $("#comment_div").show(1000);
			 $("#comment_yes").attr('checked', true);
			 $("#comment_no").attr('checked', false);
			//$(this).checked = false; 
          });

          $("#comment_no").click(function(){
            // $("#comment_div").hide(1000);
			 $("#comment_no").attr('checked', true);
			  $("#comment_yes").attr('checked', false);
			// $(this).checked = false; 
          });
	$('#tabs a').tabs();
  });
/*$("input[name$='comment_message']").click(function() {
        var test = $(this).val();
		if(test='yes')  $('#comment_div').show();
        else $('#comment_div').hide();
       
    }); */
	/*var dateToday = new Date();
$('.date').datepicker({
      dateFormat: 'dd-mm-yy',
	  minDate: dateToday,
	  showOn: "both",
      buttonImage: "image/datepicker.png",
      buttonImageOnly: true});*/
</script>
<script type="text/javascript"><!--
/*$('#shipping-address-new').click(function(){
alert(this.value)
	if (this.value == 'new') {
		$('#shipping-existing').hide();
		//$('#shipping-existing').show();
		$('#shipping-new').show();
	} else {
		$('#shipping-existing').show();
		//$('#shipping-new').show();
		$('#shipping-new').hide();
	}
});
$('#shipping-address-existing').click(function(){
	
	if (this.value == 'existing') {
		$('#shipping-existing').show();
		//$('#shipping-existing').show();
		$('#shipping-new').hide();
	} else {
		$('#shipping-existing').hide();
		//$('#shipping-new').show();
		$('#shipping-new').show();
	}
});*/
//--></script> 
<script type="text/javascript"><!--
/*$('#shipping-address select[name=\'country_id\']').bind('change', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#shipping-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#shipping-postcode-required').show();
			} else {
				$('#shipping-postcode-required').hide();
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
			
			$('#shipping-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});*/
//$('#shipping-address select[name=\'country_id\']').trigger('change');
//--></script>
<script type="text/javascript">
function showRegions(countryId, productId, zone_id, cityname)
{
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + countryId,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\''+productId+'[country_id]\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
			//var productId = "<?php echo $cart_product['key']; ?>";
			//alert(productId)
			if(countryId == 100)
			{
				$('#cityColumn_'+productId).html($('#cityDropdown_'+productId).html());
				$('select[name=\''+productId+'[city]\']').load('index.php?route=checkout/shipping_address/city&zone_id=' + zone_id+'&city_name='+cityname);
			}
			else
			{	
				$('#cityColumn_'+productId).html($('#cityText_'+productId).html());
			//	$('#cityText_'+productId).val('<?php echo $city; ?>');
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
	    			
					if (json['zone'][i]['zone_id'] == zone_id) {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			//alert('<?php echo $productId; ?>')
			$('select[name=\''+productId+'[zone_id]\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
}

	
<?php foreach($cart_products as $cart_product)
{ 
	if($cart_product['upselling']=='0')
	{
		?>
	specialStartDate = "<?php echo $cart_product['startDate'] ?>";
specailEndDate = "<?php echo $cart_product['endDate'] ?>";
minDate = getMinDate(specialStartDate)
maxDate = getMaxDate(specailEndDate);
	$('#delivery_date_<?php echo $cart_product['key'] ?>').datepicker({
      dateFormat: 'dd-mm-yy',
	  minDate: minDate,
	  maxDate:maxDate,
	  showOn: "both",
      buttonImage: "image/datepicker.png",
      buttonImageOnly: true});
	
		
	$('select[name=\'<?php echo $cart_product['key'] ?>[country_id]\']').bind('change', function() {
		var countryId = this.value
		showRegions(countryId,<?php echo $cart_product['key'] ?>);
     }																																							);
	//$('select[name=\'<?php echo $cart_product['key'] ?>[country_id]\']').trigger('change');
	showRegions('<?php echo $values[$cart_product['key']]['country_id'] ?>','<?php echo $cart_product['key']; ?>','<?php echo $values[$cart_product['key']]['zone_id']; ?>','<?php echo $values[$cart_product['key']]['city']; ?>');
	$('#shipping_address_new_<?php echo $cart_product['key'] ?>').click(function(){

	if (this.value == 'new') {
		$('#shipping_existing_<?php echo $cart_product['key'] ?>').hide();
		//$('#shipping-existing').show();
		$('#shipping_new_<?php echo $cart_product['key'] ?>').show();
	} else {
		$('#shipping_existing_<?php echo $cart_product['key'] ?>').show();
		//$('#shipping-new').show();
		$('#shipping_new_<?php echo $cart_product['key'] ?>').hide();
	}
});
$('#shipping_address_existing_<?php echo $cart_product['key'] ?>').click(function(){
	
	if (this.value == 'existing') {
		$('#shipping_existing_<?php echo $cart_product['key'] ?>').show();
		//$('#shipping-existing').show();
		$('#shipping_new_<?php echo $cart_product['key'] ?>').hide();
	} else {
		$('#shipping_existing_<?php echo $cart_product['key'] ?>').hide();
		//$('#shipping-new').show();
		$('#shipping_new_<?php echo $cart_product['key'] ?>').show();
	}
});

<?php if($values[$cart_product['key']]['showForm'] == 1) { ?>
$('#shipping_address_new_<?php echo $cart_product['key'] ?>').trigger('click');
<?php } ?>

<?php } } ?>

//--></script>


<!-- Script by hscripts.com -->

<script>
var count = "200";
function validate_count(id)
{
	
	var tex=$('#comment_'+id).val();
	
	var len = tex.length;
if(len > count){
        tex = tex.substring(0,count);
        $('#comment_'+id).val =tex;
        return false;
}


$('#limit_'+id).text(count-len);
//document.myform.limit.value = count-len;
	
}
function checkbox_upsell(key,cat_id)
{
	/*product_id = $('#select_'+key+'_'+cat_id).val();
	$('#upsell_'+key+'_'+cat_id).val(product_id);
	$('#upsell_'+key+'_'+cat_id).attr('checked','checked');*/
}

</script>
<!-- Script by hscripts.com -->



<!--<script type="text/javascript" src="view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> -->
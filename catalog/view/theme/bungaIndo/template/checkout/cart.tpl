<?php echo $header; 
$strBreadcrumb = '';
		foreach ($breadcrumbs as $breadcrumb) {
         $strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
		}
?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
   <div class="cart-tab" style="margin-top:88px;">
  	<ul>
    	<li class="active"><i></i><span>Cart</span></li>
        <li><i></i><span class="sec-tab">Shipping Address</span></li>
        <li class="light"><i></i><span class="third-tab">Payment</span></li>
        <li class="light"><i></i><span>Success</span></li>
    </ul>
  </div>
<?php //print_r($delivery_date_pass); ?>  
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" onsubmit="return checkDeliverydate()">
    <div class="cart-info" id="cart-info">
      <table>
        <thead>
          <tr>
          <td>&nbsp;</td>
            <td class="">Your item</td>
            <td class="">&nbsp;</td>
            <td class="">Delivery</td>
             <td class=""><?php echo $column_delivery_date ?></td>
            <td class=""><?php echo $column_quantity; ?></td>
            <td class=""><?php echo $column_price; ?></td>
            <!--<td class="total"><?php echo $column_total; ?></td>-->
          </tr>
        </thead>
        <tbody>
          <?php foreach ($products as $product) { ?>
          <tr>
          <td><a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/bungaIndo/images/remove_cart.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
            <td class="image" width="126">
            
            <?php if ($product['thumb']) { ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
              <?php } ?></td>
            <td class="name" width="157">
            <div style="padding-top:5px;"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
              <?php if (!$product['stock']) { ?>
              <span class="stock">***</span>
              <?php } ?>
              <div>
                <?php foreach ($product['option'] as $option) { ?>
                - <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                <?php } ?>
              </div>
              <?php if ($product['reward']) { ?>
              <small><?php echo $product['reward']; ?></small>
              <?php } ?>
              </div>
              </td>
            <td class="model" width="186">
            	<div style="padding-top:5px;">
				<div class="skin skin-minimal">
				 <input type="checkbox" name="hideSender[<?php echo $product['key']; ?>]" <?php if(isset($this->session->data['hideSender'][$product['key']]) && $this->session->data['hideSender'][$product['key']] == 1) { ?> checked="checked" <?php } ?> id="minimal-checkbox-1"/>
				</div>Hide sender
                </div>
           </td>
         <?php  $key_date=$product['key'];    
       ?>
         
         <?php if(array_key_exists($key_date, $delivery_date_pass) ) //if($delivery_date_pass[$key_date]!='')
         {	$ddate= $delivery_date_pass[$key_date]; 
          // $ddate= date('d-m-Y',strtotime($delivery_date_pass[$key_date])); 
          } 
         else $ddate= '-';?>
              <td class="model" width="300"><input type="text" name="delivery_date[<?php echo $product['key']; ?>]" value="<?php echo $ddate;?>" size="12" class="date" id="delivery_date_<?php echo $product['key']; ?>" readonly="readonly" style="width: 140px !important" /> <!--<input type="image" src="catalog/view/theme/default/image/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />--><?php if (isset($error[$product['key']])) { ?>
            <span class="error"><?php  echo $error[$product['key']]; ?></span>
            <?php  } ?></td>
            <td class="quantity" width="130">
			<!--<input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />-->
			<select name="quantity[<?php echo $product['key']; ?>]" onchange="javascript:validate_quantity(<?php echo $product['key']; ?>,this)" id="quantity_<?php echo $product['key']; ?>">
			<?php for($count =1 ; $count < 6; $count++) { ?>
			<option <?php if($count == $product['quantity']) { ?> selected="selected" <?php } ?> value="<?php echo $count; ?>"><?php echo $count; ?></option>
			<?php } ?>
				
			</select>
              &nbsp;
             <!-- <input type="image" src="catalog/view/theme/default/image/update.png" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
              &nbsp;<a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a>--></td>
           <!-- <td class="price ordr_lst_black font14"><?php echo $product['price']; ?></td>-->
           <input type="hidden" id="price_<?php echo $product['key']; ?>" value="<?php echo $product['price']; ?>" name="price[<?php echo $product['key']; ?>]"/> 
            <td class="" id="price-<?php echo $product['key']; ?>" ><div id="pricediv-<?php echo $product['key']; ?>" class="ordr_lst_black font14" style="padding-top:5px; width: 80px; text-align: left;"><?php echo $product['total']; ?></div></td>
          </tr>
          <?php } ?>
          <?php foreach ($vouchers as $vouchers) { ?>
          <tr>
            <td class="image"></td>
            <td class="name"><?php echo $vouchers['description']; ?></td>
            <td class="model"></td>
            <td class="quantity"><input type="text" name="" value="1" size="1" disabled="disabled" />
              &nbsp;<a href="<?php echo $vouchers['remove']; ?>"><img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
            <td class="price"><?php echo $vouchers['amount']; ?></td>
            <td class="total"><?php echo $vouchers['amount']; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  <div class="buttons">
  <div class="left"><a href="<?php echo $continue; ?>" class="contnue_shp_btn">&nbsp;</a></div> 
    <div class="right">
    <input type="submit" name="submit" value="" class="next_btn" />
   <!-- <a href="<?php echo $checkout; ?>" class="button"><?php echo $button_checkout; ?></a>-->
    </div>
         </div>
     </form>
  </div> 
  <?php echo $content_bottom; ?></div>
<script type="text/javascript">
var dateToday = new Date();
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

 <?php foreach ($products as $product) { ?>
 specialStartDate = "<?php echo $product['startDate'] ?>";
specailEndDate = "<?php echo $product['endDate'] ?>";
minDate = getMinDate(specialStartDate)
maxDate = getMaxDate(specailEndDate);
 $("#delivery_date_<?php echo $product['key'] ?>").datepicker({
	//startDate : '-',
      dateFormat: 'dd-mm-yy',
	  minDate: minDate,
	  maxDate:maxDate,
	  showOn: "both",
      buttonImage: "image/datepicker.png",
      buttonImageOnly: true});
 <?php } ?>
function checkDeliverydate()
{
	var deliveryNotSelected = 0;
	$('.date').each(function(){
		if(this.value == '' || this.value == '-')
		{
			deliveryNotSelected = 1;
		}
	})
	if(deliveryNotSelected == 1)
	{
		alert('Please select delivery date for all products.');
		return false;
	}
	return true;
	
}
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
</script>
<?php if ($shipping_status) { ?>
<script type="text/javascript">
$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
</script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
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
<script type="text/javascript">
 
//$('.date').datepicker({ minDate: dateToday,dateFormat: 'yy-mm-dd'});
/*$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});*/

</script>
<script>
function validate_quantity(id,val) 
{

	var qty = val.value;
		//var price=$('#price_'+id).val();

//var qty=$('quantity[id]').this.value;
//alert(id+" "+qty);
//alert('index.php?route=checkout/cart/quantity_validate&id=' +id+ '&quantity=' +qty );
$.ajax({
	url: 'index.php?route=checkout/cart/quantity_validate',
		type: 'post',
		data: '&id=' +id+ '&quantity=' +qty ,
		dataType: 'json',	
		beforeSend: function() {
		   $('#quantity_'+id).after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		  },
		 complete: function() {
   			$('.wait').remove()
		},
		success:function(json){
			
			//alert(json['cart_total']);
			
			$('#cart-total').html(json['cart_total']),
			$('#pricediv-'+id).html(json['total_price'])
			
			},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});

}
</script>
<?php } ?>
<?php echo $footer; ?>

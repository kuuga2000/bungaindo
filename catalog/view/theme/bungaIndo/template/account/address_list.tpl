<?php
$strBreadcrumb = '';
 foreach ($breadcrumbs as $breadcrumb)
 {
 	$strBreadcrumb .= $breadcrumb['separator'].'<a href="'.$breadcrumb['href'].'">'.$breadcrumb['text'].'</a>';
 }
?>
<?php echo $header; ?>

 <!--<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />-->
<!--<script src="http://code.jquery.com/jquery-1.9.1.js"></script>-->
<script src="catalog/view/javascript/jquery/jquery-ui.js"></script>

<!--<link rel="stylesheet" href="/resources/demos/style.css" />-->
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div class="category_box">
<div class="home_ttl_fold"><span class="whtDot"></span> Customer Account <span class="whtDot"></span></div>
<div class="afflt_acc_bx">
<?php echo $column_left; ?><?php echo $column_right; ?>
<div class="afflt_rgt" style="border-left:none !important; width: 698px; padding-left:0px;">
<div id="content">
	<div class="aff_rgt_lft" style="border-left: solid 1px #e7eacb; padding-left:36px;">
    <h2>Information</h2>
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p> <p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
    </div>
 
	<div class="aff_rgt_rgt">
	<?php echo $content_top; ?>
    
	
    <?php if (isset($this->request->get['address_id']))  { ?>
	<div id="accordion1">
    <h3><?php echo $address_title; ?></h3> 
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" style="height: auto">
      <table width="100%" class="form addr_list" cellpadding="0" cellspacing="0">
      <tr>
        <td style="width:50px; display:inline-block;"><table width="100%" class="form addr_list" cellpadding="0" cellspacing="0">
          <tr>
            <td>Title</td>
            <td width="20" style="width:26px; display:inline-block" align="center">:</td>
            <td><input type="text" name="address_title" value="<?php echo $address_title; ?>" />
              <?php if ($error_address_title) { ?>
              <span class="error"><?php echo $error_address_title; ?></span>
              <?php } ?></td>
          </tr>
          <tr></tr>
          <tr>
            <td>First Name</td>
            <td width="20" align="center">:</td>
            <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
              <?php if ($error_firstname) { ?>
              <span class="error"><?php echo $error_firstname; ?></span>
              <?php } ?></td>
          </tr>
          <tr></tr>
          <tr>
            <td>Last Name</td>
            <td width="20" align="center">:</td>
            <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
              <?php if ($error_lastname) { ?>
              <span class="error"><?php echo $error_lastname; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td>Address</td>
            <td align="center">:</td>
            <td><textarea name="address_1" ><?php echo $address_1; ?></textarea>
              <?php if ($error_address_1) { ?>
              <span class="error"><?php echo $error_address_1; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td>Country</td>
            <td align="center">:</td>
            <td><select name="country_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id']==$country_id ) { ?>
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
      <td style="width:50px; display:inline-block;">Province</td>
      <td align="center">:</td> 
      <td><select name="zone_id"></select>
            <?php if ($error_zone) { ?>
            <span class="error"><?php echo $error_zone; ?></span>
            <?php } ?></td></tr>
            
            
    <tr>-->
          <tr>
            <td>Province</td>
            <td width="20" align="center">:</td>
            <td><select name="zone_id"  onchange="$('select[name=\'city\']').load('index.php?route=vendor/edit/city&zone_id=' + this.value);">
            </select>
              <?php if ($error_zone) { ?>
              <span class="error"><?php echo $error_zone; ?></span>
              <?php } ?></td>
          </tr>
          <!--  <tr> <td style="width:50px; display:inline-block;">City</td>
      <td align="center">:</td> 
      <td><input type="text" name="city" value="<?php echo $city; ?>" />
            <?php if ($error_city) { ?>
            <span class="error"><?php echo $error_city; ?></span>
            <?php } ?></td></tr>-->
          <tr>
            <td><?php echo $entry_city; ?></td>
            <td width="20" align="center">:</td>
            <td><div id="cityColumn"></div>
              <?php if ($error_city) { ?>
              <span class="error"><?php echo $error_city; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td style="width:50px; display:inline-block;">Zip Code</td>
            <td align="center">:</td>
            <td><input type="text" name="postcode" value="<?php echo $postcode; ?>" />
              <?php if ($error_postcode) { ?>
              <span class="error"><?php echo $error_postcode; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td>Telephone</td>
            <td align="center">:</td>
            <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" /></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td align="center">&nbsp;</td>
            <td ><input type="submit" value="" class="save_btn" /></td>
          </tr>
        </table></td></tr>
      </table>
      <!-- <div id="cityDropdown" class="displayNone">
 	 <select name="city"><option value="">--None--</option> </select>
   </div>-->
   
    </form>
  
    </div>
    <?php } //else {  ?>
	<div id="accordion2">
    <?php if(isset($this->request->get['address_id'])) $add_id=$this->request->get['address_id'];
    else  $add_id='';?>
    <?php foreach ($addresses as $result) { 
    if($result['address_id']!=$add_id) {?>
    <h3><?php if($result['address_title']!='') { echo $result['address_title']; } else { echo "No Title"; } ?></h3>
    <table width="100%" cellpadding="0" cellspacing="0">
    <!--<tr><td>Title:</td><td><?php if($result['address_title']!='') { echo $result['address_title']; } else { echo "No Title"; } ?></td></tr>-->
   
     <tr><td width="60">First Name</td>
      <td width="24" align="center">:</td>
      <td><?php echo $result['firstname']; ?></td></tr>
    <tr>
      <tr><td width="60">Last Name</td>
      <td width="24" align="center">:</td>
      <td><?php echo $result['lastname']; ?></td></tr>
    <tr>
    <tr><td width="60">Address</td>
      <td width="24" align="center">:</td>
      <td><?php echo $result['address1']; ?></td></tr>
    <tr>
      <td>Country</td>
      <td align="center">:</td>
      <td><?php echo $result['country']; ?></td></tr>
    <tr>
      <td>Province</td>
      <td align="center">:</td>
      <td><?php echo $result['zone']; ?></td></tr>
    <tr>
      <td>City</td>
      <td align="center">:</td>
      <td><?php echo $result['city']; ?></td></tr>
    <tr>
      <td>Zip Code</td>
      <td align="center">:</td>
      <td><?php echo $result['postcode']; ?></td></tr>
    <tr>
      <td>Telephone</td>
      <td align="center">:</td>
      <td><?php echo $result['telephone']; ?></td></tr>
    <tr><td>&nbsp;</td>
      <td align="center">&nbsp;</td>
      <td ><a href="<?php echo $result['update']; ?>" class="edit_gray_btn">&nbsp;</a></td></tr>
    <!--<tr><td>&nbsp;</td><td ><a href="<?php echo $result['delete']; ?>" class="button"><?php echo $button_delete; ?></a></td></tr>-->
    </table>
     <?php } //if ?>
    <?php } //foreach ?>
    
    </div>
    <div class="full_width"> 
   <!-- <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>-->
    <br/><div class="right"><a href="<?php echo $insert; ?>" class="add_new_btn">&nbsp;</a></div>
  </div>
  <?php //} //else ?>
  </div>
  </div>
  </div>
  </div>
    <div id="cityText"  style="display: none">
   	 <input type="text" name="city" value="" />
   </div>
<?php echo $content_bottom; ?></div>

<?php echo $footer; ?>
<script type="text/javascript">
$(document).ready(function() {
	
	$('.breadcrumb').html('<?php echo $strBreadcrumb; ?>');
});
</script>	

 <script>
$(function() {
$( "#accordion1" ).accordion({
/*active: false, collapsible: true*/
});
$( "#accordion2" ).accordion({
active: false, collapsible: true
});
});

</script>
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
$('#cityDropdown').load("index.php?route=vendor/edit/city&zone_id=<?php echo $zone_id; ?>&city_name=<?php echo str_replace(' ','_',$city); ?>");
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
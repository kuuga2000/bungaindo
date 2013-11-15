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
  
   <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/user.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a href="<?php echo $addvendor; ?>" class="button"><?php echo $button_add; ?></a><a href="javascript:void(0)" onclick="$('#vendorsForm').submit()" class="button"><?php echo $button_delete; ?></a></div>
    </div>
    <div class="content">
	  <form name="vendorsForm" id="vendorsForm" method="POST" action="<?php echo $deleteFormAction; ?>">	
     	<table class="list">
          <thead>
            <tr>
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
              <td class="left"><?php echo $column_name; ?></td>
              <td class="left"><?php echo $column_email; ?></td>
              <td class="right"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
		<?php foreach($vendors as $vendor) { ?>
			<tr>
			<td style="text-align: center;"><input type="checkbox" name="selected[]" value="<?php echo $vendor['vendor_id']; ?>" /></td>
				<td class="left"><?php echo $vendor['firstname'].' '.$vendor['lastname']; ?></td>
				<td class="left"><?php echo $vendor['email']; ?></td>
				<td class="right"><a href="<?php echo $editFormAction.'&vendor_id='.$vendor['vendor_id']; ?>">Edit</a></td>
			</tr>
		<?php } ?>
		</tbody>
		</table>
	  </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>
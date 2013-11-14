<?php
/*
#############################################################################
# eLuminous Technologies - Copyright (coffee) http://eluminoustechnologies.com
# This code is written by eLuminous Technologies, Its a sole property of
# eLuminous Technologies and cant be used / modified without license.
# Any changes/ alterations, illegal uses, unlawful distribution, copying is strictly
# prohibhited
#############################################################################
#author: Gaurav Patil
#data: 17 june 2013
*/
?>
<div class="afflt_lft">
<h2><?php echo $text_my_account; ?></h2>
<?php  $current= "http://".$_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"]; 



?>



<ul>
<?php if($view == $current || $edit == $current)
{  ?>
<li><a class="active" href="<?php echo $view; ?>"><?php echo $text_view; ?></a></li>
<?php }
else
{ ?>
<li><a href="<?php echo $view; ?>"><?php echo $text_view; ?></a></li>
<?php } ?>
 
 
<?php if($order == $current || (isset($this->request->get['order_id'])) )
{  ?>
<li><a class="active" href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
<?php }
else
{ ?>
<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
<?php } ?>  

<?php if($address == $current || (isset($this->request->get['address_id'])) || (isset($this->request->get['address'])))
{  ?>
<li><a class="active" href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
<?php }
else
{ ?>
<li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
<?php } ?>  
  
  
  

<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>

  
 
  
  <!--<li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>-->
</ul>
</div> 
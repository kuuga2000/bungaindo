<h2><?php echo $text_my_account; ?></h2>
<?php  $current= "http://".$_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"]; 
?>

<ul>

<?php if($view == $current || $edit == $current)
{  ?>
<li><a class="active" href="<?php echo $view; ?>"><?php echo $text_profile; ?></a></li>
<?php }
else
{ ?>
<li><a href="<?php echo $view; ?>"><?php echo $text_profile; ?></a></li>
<?php } ?>

<?php if($current == $orderlist || (isset($this->request->get['frm']) && ($this->request->get['frm']=='orderlist') ) )
{  ?>
<li><a class="active" href="<?php echo $orderlist; ?>"><?php echo $text_orderlist; ?></a></li>
<?php }
else 
{  ?>
 <li><a href="<?php echo $orderlist; ?>"><?php echo $text_orderlist; ?></a></li>
<?php } ?>

<?php if($current == $orderpending || (isset($this->request->get['frm']) && ($this->request->get['frm']=='pending') ))
{  ?>
<li><a class="active" href="<?php echo $orderpending; ?>"><?php echo $text_orderpending; ?></a></li>
<?php }
else
{ ?>
 <li><a href="<?php echo $orderpending; ?>"><?php echo $text_orderpending; ?></a></li>
<?php } ?>

<?php if($current == $ordershipped  || (isset($this->request->get['frm']) && ($this->request->get['frm']=='shipping') ))
{  ?>
<li><a class="active" href="<?php echo $ordershipped; ?>"><?php echo $text_ordershipped; ?></a></li>
<?php }
else
{ ?>
 <li><a href="<?php echo $ordershipped; ?>"><?php echo $text_ordershipped; ?></a></li>
<?php } ?>
    
<?php if($current == $salesdashboard )
{  ?>
<li><a class="active" href="<?php echo $salesdashboard; ?>"><?php echo $text_salesdashboard; ?></a></li>
<?php }
else
{ ?>
 <li><a href="<?php echo $salesdashboard; ?>"><?php echo $text_salesdashboard; ?></a></li>
<?php } ?>  
    
 
    
    <li><a href="<?php echo $signout; ?>"><?php echo $text_signout; ?></a></li>
</ul>

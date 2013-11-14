<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <div class="sitemap-info">
    <ul>
      <?php foreach ($categories as $category_1) { ?>
      <?php if($category_1['cat_id']!=63 && $category_1['cat_id']!=64 ) 
      {?>
      <li ><a href="<?php echo $category_1['href']; ?>"><span><?php echo $category_1['name']; ?></span></a>
        <?php if ($category_1['children']) { ?>
        <ul>
          <?php foreach ($category_1['children'] as $category_2) { ?>
          <li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
            <?php if ($category_2['children']) { ?>
            <ul>
              <?php foreach ($category_2['children'] as $category_3) { ?>
              <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
              <?php } //3 ?>
            </ul>
            <?php } ?>
          </li>
          <?php } //2 ?>
        </ul>
        <?php } ?>
      </li>
      <?php } ?>
      <?php } //1 ?>
    </ul>
    
    <ul>
    <?php foreach ($categories as $category_11) { ?>
      <?php if($category_11['cat_id']==63 || $category_11['cat_id']==64 ) 
      {?>
      <li ><a href="<?php echo $category_11['href']; ?>"><span><?php echo $category_11['name']; ?></span></a>
        <?php if ($category_11['children']) { ?>
        <ul>
          <?php foreach ($category_11['children'] as $category_22) { ?>
          <li><a href="<?php echo $category_22['href']; ?>"><?php echo $category_22['name']; ?></a>
            <?php if ($category_22['children']) { ?>
            <ul>
              <?php foreach ($category_22['children'] as $category_33) { ?>
              <li><a href="<?php echo $category_33['href']; ?>"><?php echo $category_33['name']; ?></a></li>
              <?php } //3 ?>
            </ul>
            <?php } ?>
          </li>
          <?php } //2 ?>
          
        </ul>
        <?php } ?>
        
      </li>
      <?php } ?>
     
      <?php } //1 ?>
      <li ><span><?php echo $text_information; ?></span>
        <ul>
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>
      </li>
      <li><span>Customer Service</span></li>
      <li><a href="<?php echo $policy; ?>">Order & Customer Policy</a></li>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
    </ul>
    <ul>
      <li>
      <li><a href="<?php echo $affiliate; ?>"><span>Affliate Program</span></a>
        <ul>
          <li><a href="<?php echo $becomeaffiliate; ?>">Become an  Affliate</a></li>
        </ul>
      </li>
      <li><span>Stay Connected</span>
        <ul>
          <li><a href="#">Facebook</a></li>
          <li><a href="#">Twitter</a></li>
          <li><a href="#">Instagram</a></li>
        </ul>
      </li>
      <li><span>My Account</span>
        <ul>
          <li><a href="<?php echo $account; ?>">Profile</a></li>
          <li><a href="<?php echo $history; ?>">Track Order</a></li>
          <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
        </ul>
      </li>
      <li><span>My Affiliate Account</span>
        <ul>
          <li><a href="<?php echo $aff_profile; ?>">Profile</a></li>
          <li><a href="<?php echo $orderlist; ?>">Order List</a></li>
          <li><a href="<?php echo $orderpending; ?>">Order Pending</a></li>
          <li><a href="<?php echo $ordershipped; ?>">Order Shipped</a></li>
        </ul>
      </li>
      <li><a href="<?php echo $cart; ?>"><span><?php echo $text_cart; ?></span></a></li>
    </ul>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
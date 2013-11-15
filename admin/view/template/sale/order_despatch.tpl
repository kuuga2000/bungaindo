<!DOCTYPE html>

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/delivery_note.css" />
</head>
<body>
<?php if (empty($orders)) echo 'Please select order or orders. Thank you.'; ?>
<?php foreach ($orders as $order) { ?>
<div style="page-break-after: always;">
   <!-- <img src=<?php echo $order['logo']; ?> />
  <h1><?php echo $title; ?></h1>
  <table class="store">
    <tr>
      <td><?php echo $order['store_name']; ?><br />
        <?php echo $order['store_address']; ?><br />
        <?php echo $text_telephone; ?> <?php echo $order['store_telephone']; ?><br />
        <?php if ($order['store_fax']) { ?>
        <?php echo $text_fax; ?> <?php echo $order['store_fax']; ?><br />
        <?php } ?>
        <?php echo $order['store_email']; ?><br />
        <?php echo $order['store_url']; ?></td>
      <td align="right" valign="top"><table>
          <tr>
            <td><b><?php echo $text_date_added; ?></b></td>
            <td><?php echo $order['date_added']; ?></td>
          </tr>
          <?php if ($order['invoice_no']) { ?>
          <tr>
            <td><b><?php echo $text_invoice_no; ?></b></td>
            <td><?php echo $order['invoice_no']; ?></td>
          </tr>
          <?php } ?>
          <tr>
            <td><b><?php echo $text_order_id; ?></b></td>
            <td><?php echo $order['order_id']; ?></td>
          </tr>
          <tr>
            <td><b><?php echo $text_payment_method; ?></b></td>
            <td><?php echo $order['payment_method']; ?></td>
          </tr>
          <?php if ($order['shipping_method']) { ?>
          <tr>
            <td><b><?php echo $text_shipping_method; ?></b></td>
            <td><?php echo $order['shipping_method']; ?></td>
          </tr>             
          <?php } ?>
               <tr>
            <td><b><?php echo $text_customer_comment; ?> </b></td>
            <td><?php echo $order['comment']; ?></td>
          </tr>
        </table></td>
    </tr>
  </table>
  <table class="address">
    <tr class="heading">
      <td width="50%"><b><?php echo $text_to; ?></b></td>
      <td width="50%"><b><?php echo $text_ship_to; ?></b></td>
    </tr>
    <tr>
      <td><?php echo $order['payment_address']; ?><br/>
        <?php echo $order['email']; ?><br/>
        <?php echo $order['telephone']; ?></td>
      <td><?php echo $order['shipping_address']; ?></td>
    </tr>
  </table>
  <table class="product">
    <tr class="heading">
      <td><b><?php echo $column_product; ?></b></td>
      
      <td align="right"><b><?php echo $column_quantity; ?></b></td>
      
    </tr>
    <?php foreach ($order['product'] as $product) { ?>
    <tr>
      <td><?php echo $product['name']; ?>
        <?php foreach ($product['option'] as $option) { ?>
        <br />
        &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
        <?php } ?>
       </td>
       <td align="right"><?php echo $product['quantity']; ?></td>
    </tr>
   <?php } ?> 
  </table>-->
  						<!---CUSTOMISED----->
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="delevery_tbl">
      <tr>
        <td width="16%"><img src=<?php echo $order['logo']; ?> /></td>
        <td>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>
                	<table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td class="green_bordr_btm" width="71%">&nbsp;</td>
                        <td class="delivery_ttl" align="right">SURAT JALAN</td>
                      </tr>
                    </table>
                </td>
              </tr>
              <tr>
                <td>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td valign="top" class="green_bordr_btm" width="55%">Kepada</td>
                        <table><tr><td><?php echo $order['shipping_address']; ?></td></tr></table>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td width="40%">Tanggal</td>
                                  <td class="green_bordr_btm"><?php echo $order['date_added']; ?></td>
                                </tr>
                               
                                                         <?php if ($order['invoice_no']) { ?>
                                  <tr>
                                   <td>No Surat Jalan</td>
                                    <td class="green_bordr_btm"><?php echo $order['invoice_no']; ?></td>
                                   
                                  </tr>
                                  <?php } ?>
                                 
                               
                                <tr>
                                  <td>No PO</td>
                                  <td class="green_bordr_btm"><?php echo $order['order_id']; ?></td>
                                </tr>
                                <tr>
                                    <td>Nama Pengirim</td>
                                    <td class="green_bordr_btm"><?php echo $order['name']; ?></td>
                                </tr>
                            </table>

                        </td>
                      </tr>
                    </table>
                </td>
              </tr>
            </table>
        </td>
      </tr>
    </table>
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td>&nbsp;</td>
      </tr>
    </table>

    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="delevery_tbl">
      <tr>
        <!--<td class="green_bordr_tp">NO</td>-->
        <td class="green_bordr_tp">KODE BARANG</td>
        <td class="green_bordr_tp">NAMA BARANG</td>
        <td class="green_bordr_tp">JUMLAH BARANG</td>
        <td class="green_bordr_tp">KETERANGAN</td>
      </tr>
    
        <!--<td class="green_bordr_tp">NO</td>-->
        <?php foreach ($order['product'] as $product) { ?>
          <tr>
        <td class="green_bordr_tp"><?php echo $product['id']; ?></td>
        <td class="green_bordr_tp"><?php echo $product['name']; ?></td>
        
        <td class="green_bordr_tp"><?php echo $product['quantity']; ?></td>
        
        <td class="green_bordr_tp">-</td>
         </tr>
        
        <?php } ?>
     
    </table>

  <!--<table class="address">
    <tr class="heading">
      <td><b><?php echo $column_comment; ?></b></td>
    </tr>
    <?php if ($histories[$order['order_id']]) {
     foreach ($histories[$order['order_id']] as $history) {      
      }
      } else {
          $history['comment'] = '';
      }      
   ?>
    <tr>
       <td class="left"><?php echo $history['comment']; ?></td>
    </tr>
  </table>-->
 </div>
 <?php } ?>
</body>
</html>
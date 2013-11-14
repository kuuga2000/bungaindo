<style>
td {
background:#FFFFFF none repeat scroll 0 0;
color:#333333;
direction:ltr;
font-family:"lucida grande",tahoma,verdana,arial,sans-serif;
font-size:12px;
margin:0;
padding:0;
unicode-bidi:embed;
}
.header td{background:#f4f4f4;font-weight:bold;}
</style>
<body>
<h2>Merchant</h2>

<b>TRANSACTION NO: 11223355</b>
<br/><br/>
<div style="width:950px">
<table width="100%" cellspacing="2" cellpadding="3" border="0">
			<tbody><tr align="center" class="header">
				<td width="10%"><span class="header">Product ID</span></td>
				<td width="30%"><span class="header">Product Name</span></td>
				<td width="15%"><span class="header">Shipping</span></td>
				<td width="15%"><span class="header">Ppn</span></td>
				<td width="15%"><span class="header">Price</span></td>
				<td width="25%"><span class="header">Sub Total</span></td>
				</tr>
						<tr>
				<td width="10%">9871</td>
				<td width="30%">Laptop baru</td>
				<td width="15%" nowrap="nowrap" align="right">Rp. 20.000</td>
				<td width="15%" nowrap="nowrap" align="right">Rp. 10.000</td>
				<td width="15%" nowrap="nowrap" align="right">Rp. 7.000.000</td>
				<td width="25%" nowrap="nowrap" align="right">Rp. 7.030.000</td>
			</tr>
						<tr>
				<td width="10%">9872</td>
				<td width="30%">Komputer baru</td>
				<td width="15%" nowrap="nowrap" align="right">Rp. 30.000</td>
				<td width="15%" nowrap="nowrap" align="right">Rp. 20.000</td>
				<td width="15%" nowrap="nowrap" align="right">Rp. 13.000.000</td>
				<td width="25%" nowrap="nowrap" align="right">Rp. 13.050.000</td>
			</tr>
						<tr bgcolor="#eeeeee">
			<td colspan="4"></td>
			<td width="10%" align="right"><strong>Total</strong></td>
			<td width="30%" align="right"><strong>Rp. 20.080.000</strong></td>
			</tr>
</tbody></table>
<p align="right"><input type="button" value="Pay with KasPay" id="payit" name="payit" onclick="location.href='http://202.169.62.25/pay/48943060/11223355'"/></p>
<!-- location.href='http://192.168.2.11/wsdlkaspay/pay/11358647/<?=strtoupper(uniqid());?>
     location.href='http://112.78.131.3/wsdlkaspay/pay/94521038/7641287374918
94521038/7641287374918 -->
</div>
</body>
<?$dateline  = mktime(0, 0, 0, date("m")  , date("d") - 6, date("Y")); echo $dateline;?>

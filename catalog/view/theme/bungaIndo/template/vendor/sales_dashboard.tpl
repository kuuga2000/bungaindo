<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<div id="content">
  <div class="category_box">
    <div class="home_ttl_fold"><span class="whtDot"></span> Affiliate Account <span class="whtDot"></span></div>
    <div class="afflt_acc_bx">
      <div class="afflt_lft">
          <?php echo $column_left; ?>
      </div>
       <div class="afflt_rgt">
        <div class="dashboard-heading"><b>Total Sale</b></div>
      <div class="statistic">
        <div class="range"><?php echo $entry_range; ?>
          <select id="range" onchange="getSalesChart(this.value)">
           
            <option value="week"><?php echo $text_week; ?></option>
            <option value="month"><?php echo $text_month; ?></option>
            <option value="year"><?php echo $text_year; ?></option>
          </select>
        </div>
       
        <div class="dashboard-content" style="padding:25px !important;">
          <div id="report" style="width: 480px; height: 267px; margin: auto;"></div>
        </div>
      </div>
      
      <!-- TOP MEMBER STARTS-->
        <div class="dashboard-heading"><b>Top Member</b></div>
      <div class="statistic">
        <div class="range"><?php echo $entry_range; ?>
          <select id="topMemberRange" onchange="getTopMember(this.value)">
         
            <option value="week"><?php echo $text_week; ?></option>
            <option value="month"><?php echo $text_month; ?></option>
            <option value="year"><?php echo $text_year; ?></option>
          </select>
        </div>
      
      
        <div class="dashboard-content"  style="padding:25px !important;">
          <div id="topMember" name="topMember" style="width: 480px; height: 350px; margin: auto;"></div>
        </div>
      </div>
      
      <!-- TOP MEMBER ENDS -->
      
      <!-- PIE CHART TO SHOW TOP 10 SELLING PRODUCTS STARTS-->
       <div class="dashboard-heading"><b>Top Selling Products</b></div>
      <div class="statistic">
        <div class="range"><?php echo $entry_range; ?>
          <select id="range_top_product" onchange="getTopProductPieChart(this.value)">
          
            <option value="week"><?php echo $text_week; ?></option>
            <option value="month"><?php echo $text_month; ?></option>
            <option value="year"><?php echo $text_year; ?></option>
          </select>
        </div>
      
        <div class="dashboard-content" style="padding:25px !important;">
          <div id="chart1" name="chart1" style="width: 480px; height: 350px; margin: auto;"></div>
        </div>
      </div>
      
        <!-- PIE CHART TO SHOW TOP 10 SELLING PRODUCTS ENDS -->
        
        
        
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
	//---- function to accept an order using ajax call
	function acceptOrder(order_id)
	{
		$('#order_id').val(order_id);
		$('#acceptOrderFrm').submit();		
	}
	
	//---- function to process an order using ajax call
	function processOrder(order_id)
	{
		$('#order_id').val(order_id);
		$('#processOrderFrm').submit();		
	}
	
	//---- function to shipped an order using ajax call
	function shippOrder(order_id)
	{
		$('#order_id').val(order_id);
		$('#shippOrderFrm').submit();		
	}
	
</script>

<script type="text/javascript" src="admin/view/javascript/jquery/flot/jquery.flot.js"></script>
<script type="text/javascript" src="admin/view/javascript/jquery/jqplot/jquery.jqplot.min.js"></script> 
<script type="text/javascript" src="admin/view/javascript/jquery/jqplot/plugins/jqplot.pieRenderer.min.js"></script>
<script type="text/javascript" src="admin/view/javascript/jquery/jqplot/plugins/jqplot.donutRenderer.min.js"></script>

jquery.jqplot.min

<link rel="stylesheet" type="text/css" href="admin/view/javascript/jquery/jqplot/jquery.jqplot.min.css" />

 
<script type="text/javascript"><!--
function getSalesChart(range) {
	$.ajax({
		type: 'get',
		url: 'index.php?route=vendor/sales_dashboard/saleChart&range=' + range,
		dataType: 'json',
		beforeSend: function() {
			$('#range').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		async: false,
		success: function(json) { 
		$('.wait').remove();
			var option = {	
				shadowSize: 0,
				lines: { 
					show: true,
					fill: true,
					lineWidth: 1
				},
				grid: {
					backgroundColor: '#FFFFFF'
				},	
				xaxis: {
            		ticks: json.xaxis
				}
			}

			$.plot($('#report'), [json.order, json.customer], option);
		}
	});
}

getSalesChart($('#range').val());
//--></script> 


    <!-- PIE CHART TO SHOW TOP 10 SELLING PRODUCTS STARTS-->
<script type="text/javascript"><!--
function getTopProductPieChart(range) {
	//alert(range);
$("#chart1").html('');
	$.ajax({
		type: 'get',
		url: 'index.php?route=vendor/sales_dashboard/topProductsPieChart&range=' + range,
		dataType: 'json',
		beforeSend: function() {
			$('#range_top_product').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		async: false,
		success: function(response) { 
		$('.wait').remove();
			 //alert(response);
			
			if(response.product== "error")
			{
				  $('#chart1').html("No Data Available");
				
			
			}
			 else
			  {
				
				  var plot1 = jQuery.jqplot ('chart1', [response.product],			 
			// var plot1 = jQuery.jqplot ('chart1', [data],			
				{
				  seriesDefaults: {
					// Make this a pie chart.
					renderer: jQuery.jqplot.PieRenderer,
					rendererOptions: {
					  // Put data labels on the pie slices.
					  // By default, labels show the percentage of the slice.
					  showDataLabels: true
					}
				  },
				  legend: { show:true, location: 'e' }
				}
			  ); 
				  
			  }

			//$.plot($('#report'), [json.order, json.customer], option);
		}
	});
}

getTopProductPieChart($('#range_top_product').val());
//--></script> 
    <!-- PIE CHART TO SHOW TOP 10 SELLING PRODUCTS ENDS-->
    
    
    
    
    <!-- TOP CUSTOMER STARTS--->
    <script type="text/javascript"><!--
function getTopMember(range) {
	//alert(range);
$("#topMember").html('');
	$.ajax({
		type: 'get',
		url: 'index.php?route=vendor/sales_dashboard/topMember&range=' + range,
		dataType: 'json',
		beforeSend: function() {
			$('#topMemberRange').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		
		async: false,
		success: function(response) { 
		$('.wait').remove();
			//alert(response.topcustomer);
			if(response.topcustomer == "error")
			{
				//alert(response.topcustomer);
				// var plot1 = jQuery.jqplot ('topMember', [response.topcustomer],
				 $('#topMember').html("No Data Available");
			}
			else
		    {
				var plot2 = jQuery.jqplot ('topMember', [response.topcustomer],
		    	{
      seriesDefaults: {
        // Make this a pie chart.
        renderer: jQuery.jqplot.PieRenderer,
        rendererOptions: {
          // Put data labels on the pie slices.
          // By default, labels show the percentage of the slice.
          showDataLabels: true
        }
      },
      legend: { show:true, location: 'e' }
    }
  				);
			}
			//$.plot($('#report'), [json.order, json.customer], option);
		}
	});

}

getTopMember($('#topMemberRange').val());
//--></script> 
    <!-- TOP CUSTOMER ENDS -->
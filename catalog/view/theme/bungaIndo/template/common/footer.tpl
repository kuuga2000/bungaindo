</div>

</div>





<div class="footer">

<div style="position: absolute;height: 50px;width: 200px;right: 37px;top: -25px;">
<!--PASTE YOUR SCRIPT CODE FROM HERE--------------->
<!--PASTE ON THIS--->
<!--PASTE YOUR SCRIPT CODE TILL HERE--------------->


<!-- DELETE THIS FROM HERE THIS IS OUR OLD CHAT FOR OLD DOMAIN-->
<!-- LiveZilla Chat Button Link Code (ALWAYS PLACE IN BODY ELEMENT) --><a name="livezilla_chat_button" href="javascript:void(window.open('http://demopi.com/bungaindo/livezilla/chat.php?acid=2dc03','','width=590,height=760,left=0,top=0,resizable=yes,menubar=no,location=no,status=yes,scrollbars=yes'))" class="lz_cbl"><img src="http://dev.eluminousdev.com/bungaIndo/livezilla/image.php?acid=8b865&amp;id=3&amp;type=inlay" width="235" height="26" style="border:0px;" alt="LiveZilla Live Chat Software"></a><!-- http://www.LiveZilla.net Chat Button Link Code --><!-- LiveZilla Tracking Code (ALWAYS PLACE IN BODY ELEMENT) --><div id="livezilla_tracking" style="display:none"></div><script type="text/javascript">

var script = document.createElement("script");script.async=true;script.type="text/javascript";var src = "http://demopi.com/bungaindo/livezilla/server.php?acid=b2ee2&request=track&output=jcrpt&nse="+Math.random();setTimeout("script.src=src;document.getElementById('livezilla_tracking').appendChild(script)",1);</script><noscript><img src="http://demopi.com/bungaindo/livezilla/server.php?acid=b2ee2&amp;request=track&amp;output=nojcrpt" width="0" height="0" style="visibility:hidden;" alt=""></noscript><!-- http://www.LiveZilla.net Tracking Code -->
<!-- DELETE THIS TILL HERE-->
</div>



	<div class="container">

    	<div class="container_in">

        <div class="futLogo"></div>

        	<div class="ftr_area">

                <ul>

                    <li><span>Company</span></li>

					 <?php if ($informations) { 

					   foreach ($informations as $information) { 

					 ?>

					  <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>

                    <?php } } ?>

                    	<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>

                </ul>        

            </div>

            <div class="ftr_area">

                <ul>

                    <li><span>Shop Bunga Indo</span></li>

					<?php if($categories) {

					foreach($categories as $categorie)

					{

					  if($categorie['name'] != 'Sale' )

						{

					?>

					<li><a href="<?php echo $categorie['href']; ?>"><?php echo $categorie['name']; ?></a></li>

					<?php } } } ?>

                </ul>

            </div>

            <div class="ftr_area">

            	<ul>

                    <li><span>Customer Service</span></li>

                    <li><a href="<?php echo $policy; ?>">Order & Customer Policy</a></li>

                    <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>

                    <!--<li><a href="javascript:void(0)"><span>Affliate Program</span></a></li>-->

                 	<li><span>Affliate Program</span></li>

                    <li><a href="<?php echo $becomeaffiliate; ?>">Become an  Affliate</a></li>

                </ul>

            </div>

            <div class="ftr_area">

            	<ul>

                    <li><span>Newsletter</span></li>

                    <li>For  updates, special offers,  and news</li>

                    <li><div id="subscription_form">

							<input name="newsletterEmail" id="newsletterEmail" type="text" placeholder="Enter your email address" />

							<input type="button" name="subscribenews" id="subscribenews" value="Go" class="btn"/>

						</div>

						<div id="subscription_result" class="displayNone" style="margin-top:20px;"></div>

					</li>

                </ul>

            </div>

            <div class="ftr_area margin_none">

            	<ul>

                    <li><span>Stay Connected</span></li>

                    <li>Join  at our special media</li>

                    <li>

                    <a href="<?php echo $fb; ?>" class="fb" target="_blank">&nbsp;</a>

                    <a href="<?php echo $twitter; ?>" class="tweet" target="_blank">&nbsp;</a>

                    <a href="<?php echo $instagram; ?>" class="pintr" target="_blank">&nbsp;</a>

                    </li>

                </ul>

            </div>

        </div>

    </div>

</div>

<script type="text/javascript">

	$('#subscribenews').click(function(){

		$('#subscription_result').html('Processing...');

		$('#subscription_form').addClass('displayNone');

		$('#subscription_result').removeClass('displayNone');

		$.ajax({

		url: 'index.php?route=common/footer/newsettersubscribe',

		data:{'email':$('#newsletterEmail').val()},

		dataType: 'json',

		success: function(json) {

			if(json['success'])

			{

				$('#subscription_result').html('Thanks! you have been added :-)');

			}

			else

			{

				

				$('#subscription_result').html(json['error']);

				

				setTimeout(function(){set_form()},3000);

				

				

				function set_form()

				{

					

					$('#newsletterEmail').val('');

						$('#subscription_form').removeClass('displayNone');

						$('#subscription_result').addClass('displayNone');

					

				}

				

				

				//$('#subscription_result').html(json['error']);

			}

		},

		error: function(xhr, ajaxOptions, thrownError) {

			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);

			$('#subscription_result').html('Error! Please try again.');

		}

	});	

		

	})

</script>


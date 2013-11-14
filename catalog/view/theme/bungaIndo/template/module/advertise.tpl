<div id="advertise<?php echo $module; ?>" class="advertise">
  <?php foreach ($advertises as $advertise) { ?>
  <?php if ($advertise['link']!='') { ?>
  <a href="<?php echo $advertise['link'];?>" ><div><img src="<?php echo $advertise['image']; ?>" alt="<?php echo $advertise['title']; ?>" title="<?php echo $advertise['title']; ?>" /></div></a>
  <?php } else { ?>
  <div><img src="<?php echo $advertise['image']; ?>" alt="<?php echo $advertise['title']; ?>" title="<?php echo $advertise['title']; ?>" /></div>
  <?php } ?>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('#advertise<?php echo $module; ?> div:first-child').css('display', 'block');
});

var advertise = function() {
	$('#advertise<?php echo $module; ?>').cycle({
		before: function(current, next) {
			$(next).parent().height($(next).outerHeight());
		}
	});
}

setTimeout(advertise, 2000);
//--></script>
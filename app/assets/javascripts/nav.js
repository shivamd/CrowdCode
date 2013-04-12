$(document).ready(function() {
	$(' li.dropdown').mouseenter( function(){
      $(this).addClass('open');
   }).mouseleave(function(){
   	$(this).removeClass('open');
   })
});
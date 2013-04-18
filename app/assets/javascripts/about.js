$(document).ready(function(){
	$('div.people').mouseenter(function(){
		$(this).children('div.info').show();
	}).mouseleave(function(){
		$(this).children('div.info').hide();
	});
});
$(document).ready(function(){
	$('form.new_comment').on('ajax:success',function(){
		$('section#comment-list ul li').last().effect("highlight", {}, 3000);
		$('body').animate({
			scrollTop: $('section#comment-list ul li').last().offset().top + 'px'
		}, 'slow');
	});

});

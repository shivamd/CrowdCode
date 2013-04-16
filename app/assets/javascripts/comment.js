$(document).ready(function(){
	$('form.new_comment').on('ajax:success',function(){
		$('section#comment-list ul li').last().effect("highlight", {}, 3000);
		$('body').animate({
			scrollTop: $('section#comment-list ul li').last().offset().top + 'px'
		}, 'slow');
	});

	$('form.new_comment').on('ajax:error', function(event, data){
		window.location = data.responseText;
	});

	$('ul').on('click', 'small .reply', function(e){
		e.preventDefault();
		$(this).parents().siblings('div').toggle();
		$('body').animate({
			scrollTop: $(this).parent().siblings('div.nested-comment').offset().top + 'px'
		}, 'slow');
	});

	$('ul').on('click', '.btn-danger', function(e){
		console.log("this works")
		$(this).siblings('form').children('textarea').val("").parents('div.nested-comment').hide();
	})

	$('ul').on('ajax:success', 'form.nested-comment', function(){
		console.log("hey");
		$(this).parents('#comment-list ul li').find('#nested-comments li').last().effect("highlight", {}, 3000);
	});

});

$(document).ready(function(){
	$('body').on('click', 'div.tutorial-box .star .ss-icon', function(){
		$(this).parent().removeClass('star').addClass('star-yellow');
		$.post('/bookmarks', { id: $(this).closest('div.tutorial-box').attr('id') } )
		.fail(function(data) {
			window.location = data.responseText;
		});
	});

	$('body').on('click', 'div.tutorial-box .star-yellow .ss-icon', function(){
		$(this).parent().removeClass('star-yellow').addClass('star');
		$.ajax({
			url: "/bookmarks/"+ $(this).closest('div.tutorial-box').attr('id')+"",
			type: "delete",
			data: $(this).closest('div.tutorial-box').attr('id')
		})
	});
});
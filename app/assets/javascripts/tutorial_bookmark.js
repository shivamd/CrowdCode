$(document).ready(function(){
	$('div.tutorial-show').on('click', '.star .ss-icon', function(){
		$(this).parent().removeClass('star').addClass('star-yellow');
		$.post('/bookmarks', { id: $(this).closest('div.tutorial-show').attr('id') } );
	});

	$('div.tutorial-show').on('click', '.star-yellow .ss-icon', function(){
		$(this).parent().removeClass('star-yellow').addClass('star');
		$.ajax({
			url: "/bookmarks/"+ $(this).closest('div.tutorial-show').attr('id')+"",
			type: "delete",
			data: $(this).closest('div.tutorial-show').attr('id')
		})
		.done(function(){
		});
	})
});
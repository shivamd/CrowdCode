$(document).ready(function(){
	var isLoadingData;
	$(window).scroll(function(){
		var url = $('.pagination .next_page').attr('href');
		if (url && $(window).scrollTop() > (($(document).height() - $(window).height() - 50) && !isLoadingData) ) {
			isLoadingData = true;
			$('.pagination').html('<img src="ajax	-loader.gif" />');
			$.getScript(url);
			isLoadingData = false;
		}
	});
});

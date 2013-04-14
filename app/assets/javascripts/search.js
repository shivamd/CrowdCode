$(document).ready(function(){
	$('#search').click(function(e){
		e.preventDefault();
		$('.search-form').toggle();
	})
	$('#search_reset').on('click', function(){
		$('#q_title_cont').val("");
		$('#q_tags_content_cont').val("");
	})
});
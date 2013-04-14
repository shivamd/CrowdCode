$(document).ready(function(){
	$('#search').click(function(e){
		e.preventDefault();
		$('.search-form').toggle();
	})
	$('#search_reset').on('click', function(){
		$('#q_title_cont').val("");
		$('#q_tags_content_cont').val("");
	})

	$('form#tutorial_search input').keyup(function(){
		$.get($("#tutorial_search").attr("action"), $("#tutorial_search").serialize(), null, "script");
	});
});
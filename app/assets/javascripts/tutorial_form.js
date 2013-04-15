$(document).ready(function(){
  $('.tutorial_url').hide();
	// $('div.tutorial_content').hide();
	$('.add-link-radio').click(function(){
		$('div.ckeditor').hide();
    $('div.tutorial_url').show();
	});

  $('.create-tutorial-radio').click(function(){
    $('div.tutorial_url').hide();
    $('div.ckeditor').show();
  });

});
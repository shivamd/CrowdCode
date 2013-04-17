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

  if ($('div.tutorial-form ul li').first().text() == "*Url is invalid") {
    $('input#tut_type_add_link').attr('checked', 'checked')
    $('.tutorial_url').css("display","block");
    $('form .ckeditor').hide();
  }

});
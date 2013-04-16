$(document).ready(function(){
 $('.tutorial-text .add-this').hide();
 // $('.tutorial-box').mouseenter(showShareButtons)
 $('body').on('mouseleave', '.tutorial-box', hideShareButtons);

 $('body').on('mouseenter', '.tutorial-box', showShareButtons);

});

function hideShareButtons() {
 $(this).children('.tutorial-content').children('.tutorial-text').children('.add-this').slideUp();
};

function showShareButtons() {
 	 $(this).children('.tutorial-content').children('.tutorial-text').children('.add-this').slideDown();
};


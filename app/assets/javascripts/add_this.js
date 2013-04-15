$(document).ready(function(){
 $('.tutorial-text .add-this').hide();
 $('.tutorial-box').mouseenter(showShareButtons)
 $('.tutorial-box').mouseleave(hideShareButtons)

});

function hideShareButtons() {
  $(this).children('.tutorial-content').children('.tutorial-text').children('.add-this').slideUp();
};

function showShareButtons() {
  $(this).children('.tutorial-content').children('.tutorial-text').children('.add-this').slideDown();
};


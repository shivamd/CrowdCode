$(document).ready(function(){
 $('.tutorial .add-this').hide();
 $('.tutorial_box').mouseenter(showShareButtons)
 $('.tutorial_box').mouseleave(hideShareButtons)

});

function hideShareButtons() {
  $(this).children('.tutorial').children('.add-this').slideUp();
};

function showShareButtons() {
  $(this).children('.tutorial').children('.add-this').slideDown();
};


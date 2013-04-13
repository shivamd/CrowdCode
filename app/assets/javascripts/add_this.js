$(document).ready(function(){
 $('.add-this').hide();
 $('.tutorial_box').mouseenter(showShareButtons)
 $('.tutorial_box').mouseleave(hideShareButtons)

});

function hideShareButtons() {
  $(this).children('.tutorial').children('.add-this').hide('explode', {}, 100);
};

function showShareButtons() {
  $(this).children('.tutorial').children('.add-this').show('explode', {}, 100);
};


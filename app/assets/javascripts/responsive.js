$(document).ready(function(){
  var $categories = $('.menu-categories')
  var $shareLinks = $('.menu-categories')

  $('#list-menu').on('click', showCategories);
  $('.last-box').on('click', showShareLinks);
});

function showCategories(e) {
   e.preventDefault();
  $shareLinks.hide();
  $categories.slideToggle();
};

function showShareLinks(e) {
  e.preventDefault();
  $categories.hide();
  $shareLinks.slideToggle();
});

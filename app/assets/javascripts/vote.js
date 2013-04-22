var Vote = {

  init: function(){
    $('body').on('ajax:success', '.votes form.button_to', this.updateForm);
    $('body').on('ajax:error', '.votes form.button_to', this.redirect);
  },

  updateForm: function(event, data){
    $(this).parents('.votes').children('span').text(data.vote_count);
    $(this).parents('.vote-btns').html(data.template);
  },

  redirect: function(event, data){
  	window.location = data.responseText;
  }
}

$(document).ready(function(){
  Vote.init();
})

var Vote = {

  init: function(){
    $('.votes').on('ajax:success', 'form.button_to', this.updateForm);
    $('.votes').on('ajax:error', 'form.button_to', this.redirect);
  },

  updateForm: function(event, data){
    // debugger
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

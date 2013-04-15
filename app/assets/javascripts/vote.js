var Vote = {

  init: function(){
    $('.votes').on('ajax:success', 'form.button_to', this.updateForm);
  },

  updateForm: function(event, data){
    // debugger
    $(this).parents('.votes').children('span').text(data.vote_count);
    $(this).parents('.vote-btns').html(data.template);
  },
}

$(document).ready(function(){
  Vote.init();
})

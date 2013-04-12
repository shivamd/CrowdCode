var Vote = {

  init: function(){
    $('.votes').on('ajax:success', 'li.create form.button_to', this.replaceForm);
    $('.votes').on('ajax:success', 'li.update form.button_to', this.changeForm);
  },
  replaceForm: function(event, data){
    $(this).closest('div.create_votes').html(data);
  },
  changeForm: function(event, data){
    $(this).closest('div.update_votes').html(data);
  }
}

$(document).ready(function(){
  Vote.init();
})

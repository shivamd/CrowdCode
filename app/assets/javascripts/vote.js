var Vote = {

  init: function(){
    $('li.create form.button_to').on('ajax:success', this.replaceForm);
    $('li.update form.button_to').on('ajax:success', this.changeForm);
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

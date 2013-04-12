var Vote = {

  init: function(){
    $('.votes').on('ajax:success', 'form.button_to', this.replaceForm);
    $('.votes').on('ajax:success', 'form.button_to', this.changeForm);
  },
  replaceForm: function(event, data){
    
    $(this).closest('div.create_votes').html(data);
    // find the count div and update the html text with data.vote_count.
    $('#points').text(data.vote_count);
  },
  changeForm: function(event, data){

    $(this).closest('div').html(data.template);

    $(this).siblings('.points').text(data.vote_count);
    
  },
}

$(document).ready(function(){
  Vote.init();
})

var Vote = {

  init: function(){
    $('.votes').on('ajax:success', 'form.button_to', this.updateForm);
  },
  // replaceForm: function(event, data){
    
  //   $(this).closest('div.create_votes').html(data);
  //   // find the count div and update the html text with data.vote_count.
  //   $('#points').text(data.vote_count);
  // },
  updateForm: function(event, data){
    debugger
    // select the other form. (look for sibling of mine that is a form)
    // add class hidden on myself
    // remove class hidden from my sibling
    // find the sibling span .points and replace the html with data.vote_count
    $(this).closest('div').html(data.template);
    $(this).siblings('.points').text(data.vote_count);
    // $(this).siblings('.points').on('ajax:success', this.siblings('.points').text(data.vote_count));
    
    // $('.points').on('ajax:success', console.log('got') )
    // $('.points').$(this).siblings('.points').text(data.vote_count);
    
  },
}

$(document).ready(function(){
  Vote.init();
})

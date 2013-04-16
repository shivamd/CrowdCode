$(document).ready(function(){
  $.get('/graphs', function(data){
    var data = data.slice(0,5);
    console.log(data);
    
    $.plot($('#placeholder'),
      
      );
  })
})

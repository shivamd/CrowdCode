$(document).ready(function(){
  $.get('/graphs', function(data){
    console.log(data);
    var data = data;
    $.plot($('#placeholder'),
      console.log(data[0].title)
      [[1,0]]
      );
  })
})

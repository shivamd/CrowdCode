$(document).ready(function(){
  $.get('/graphs', function(data){
    console.log(data[0]);
    $.plot('#placeholder'), [{
      data: data
    }
    ]
  })
})

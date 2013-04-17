$(document).ready(function(){
  hljs.initHighlightingOnLoad();
  // This allows highlight.js to work properly
  $('pre').each(function(x,y){
    var code_block_text = $(y).text();
    // if (code_block_text == undefined){
    //   var code_block_text = $(y).html();
    // }; 
    var language = $(y).attr("data-language");
    $(y).html("<code class="+ language +">"+ code_block_text +"</code>");
  });
  
  //This accounts for highlight.js when 
});


$(document).ready(function(){
  // Loads highlight.js
  hljs.initHighlightingOnLoad();

  // This allows highlight.js to work properly
  $('pre').each(function(x,y){
    var code_block_text = $(y).text();
    var language = $(y).attr("data-language");
    $(y).html("<code class=" + language + ">" + code_block_text + "</code>");
  });
});


$(document).ready(function(){
  hljs.initHighlightingOnLoad();
  // This allows highlight.js to work properly
  var code_block_text = $("pre[data-language]").text();
  var language = $("pre[data-language]").attr("data-language");
  $("pre[data-language]").html("<code class="+ language +">"+ code_block_text +"</code>");

  //This accounts for highlight.js when 
});


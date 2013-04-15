$(document).ready(function() {
   if ($('textarea.ckeditor').length > 0) {       
     var data = $('textarea.ckeditor');
     $.each(data, function(i) {
       CKEDITOR.replace(data[i].id);
     });     
   }  
});

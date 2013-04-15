// This file used to edit the WYSIWYG

CKEDITOR.editorConfig = function( config ) {
  config.toolbarGroups = [
      { name: 'document',    groups: [ 'mode' ] },
      { name: 'editing',     groups: [ 'spellchecker' ] },
      { name: 'basicstyles', groups: [ 'basicstyles' ] },
      { name: 'others' },
      { name: 'styles' },
      '/',
      { name: 'paragraph',   groups: [ 'list' ] },
      { name: 'links' },
      { name: 'insert' },
  ];

  // Hides plugins by name
  config.removePlugins = 'newpage,print,save,font, smiley, iframe,pagebreak';
}

// Default settings for toolbarGroups.
// config.toolbarGroups = [
//     { name: 'document',    groups: [ 'mode', 'document', 'doctools' ] },
//     { name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
//     { name: 'editing',     groups: [ 'find', 'selection', 'spellchecker' ] },
//     { name: 'forms' },
//     '/',
//     { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
//     { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align' ] },
//     { name: 'links' },
//     { name: 'insert' },
//     '/',
//     { name: 'styles' },
//     { name: 'colors' },
//     { name: 'tools' },
//     { name: 'others' },
//     { name: 'about' }
// ];
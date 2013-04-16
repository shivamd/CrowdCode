// This file used to edit the WYSIWYG

CKEDITOR.editorConfig = function( config ) {
  config.toolbarGroups = [
      { name: 'document',    groups: [ 'mode' ] },
      { name: 'editing',     groups: [ 'spellchecker' ] },
      { name: 'basicstyles', groups: [ 'basicstyles' ] },
      { name: 'styles' },
      '/',
      { name: 'paragraph',   groups: [ 'list' ] },
      { name: 'links' },
      { name: 'insert' },
      { name: 'pbckcode' }
  ];

  // Hides plugins by name
  config.removePlugins = 'newpage,print,save,font, smiley, iframe,pagebreak';

  config.extraPlugins = 'pbckcode';

  //configures PBCKcode editor plugin
  config.pbckcode  = {
  	// 'cls'         : 'prettyprint linenums', // the class(es) added to the pre tag, useful if you use a syntax highlighter (here it is Google Prettify)
  	'modes'       : [ 
  	['PHP'  			, 'php'], 
  	['Ruby' 			, 'ruby'],
  	["Python"  		, "python"],
  	["JavaScript" , "javascript"],
    ['HTML' 			, 'html'], 
    ['CSS'  			, 'css'],
    ["Java"         , "java"]], // all the languages you want to deal with in the plugin
    'defaultMode' : 'ruby', 
  	'theme' : "monokai", // the theme of the code editor
  	'highlightjs' : true // turn highlitjs format on/off. default: false 
	};
}

//** Themes for pbckcode: **//

// **Bright** : "chrome", "clouds", "crimson_editor", "dawn", "dreamweaver", "eclipse", "github", "solarized_light", "textmate", "tomorrow".

// **Dark** : "clouds_midnight", "cobalt", "idle_fingers", "kr_theme", "merbivore", "merbivore_soft", "mono_industrial", "monokai", "pastel_on_dark", "solarized_dark",  "tomorrow_night", "tomorrow_night_blue", "tomorrow_night_bright", "tomorrow_night_eighties", "twilight", "vibrant_ink".


//** Modes for pbckcode **//

// 'modes' : [
//   ["C/C++"        , "c_pp"],
//   ["C9Search"     , "c9search"],
//   ["Clojure"      , "clojure"],
//   ["CoffeeScript" , "coffee"],
//   ["ColdFusion"   , "coldfusion"],
//   ["C#"           , "csharp"],
//   ["CSS"          , "css"],
//   ["Diff"         , "diff"],
//   ["Glsl"         , "glsl"],
//   ["Go"           , "golang"],
//   ["Groovy"       , "groovy"],
//   ["haXe"         , "haxe"],
//   ["HTML"         , "html"],
//   ["Jade"         , "jade"],
//   ["Java"         , "java"],
//   ["JavaScript"   , "javascript"],
//   ["JSON"         , "json"],
//   ["JSP"          , "jsp"],
//   ["JSX"          , "jsx"],
//   ["LaTeX"        , "latex"],
//   ["LESS"         , "less"],
//   ["Liquid"       , "liquid"],
//   ["Lua"          , "lua"],
//   ["LuaPage"      , "luapage"],
//   ["Markdown"     , "markdown"],
//   ["OCaml"        , "ocaml"],
//   ["Perl"         , "perl"],
//   ["pgSQL"        , "pgsql"],
//   ["PHP"          , "php"],
//   ["Powershell"   , "powershel1"],
//   ["Python"       , "python"],
//   ["R"            , "ruby"],
//   ["OpenSCAD"     , "scad"],
//   ["Scala"        , "scala"],
//   ["SCSS/Sass"    , "scss"],
//   ["SH"           , "sh"],
//   ["SQL"          , "sql"],
//   ["SVG"          , "svg"],
//   ["Tcl"          , "tcl"],
//   ["Text"         , "text"],
//   ["Textile"      , "textile"],
//   ["XML"          , "xml"],
//   ["XQuery"       , "xq"],
//   ["YAML"         , "yaml"]
// ];


//** Default Ckeditor settings for toolbarGroups. **//

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
(function(){var e={exec:function(e){e.openDialog("embed");return}};CKEDITOR.plugins.add("embed",{lang:["en","el","ru","uk"],requires:["dialog"],init:function(t){var n="embed";t.addCommand(n,e),t.ui.addButton("Embed",{label:t.lang.embed.button,command:n,icon:this.path+"images/embed.png"}),CKEDITOR.dialog.add(n,CKEDITOR.getUrl(this.path+"dialogs/embed.js"))}})})();
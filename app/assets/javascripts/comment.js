var CommentForm = {
	init: function() {
		this.addListeners();
	},

	addListeners: function(){
		$('ul').on('click', 'small .reply', this.showNestedBox);
		$('ul').on('click', '.btn-danger', this.hideNestedBox);
		$('ul').on('ajax:success', 'form.nested-comment', this.highlightNestedBox);
	},

	showNestedBox: function(e){
		e.preventDefault();
		$(this).parents().siblings('div').toggle();
		$('body').animate({
			scrollTop: $(this).parent().siblings('div.nested-comment').offset().top + 'px'
		}, 'slow');
	},

	hideNestedBox: function(){
		$(this).siblings('form').children('textarea').val("").parents('div.nested-comment').hide();
	},

	highlightNestedBox: function(){
		$(this).parents('#comment-list ul li').find('#nested-comments li').last().effect("highlight", {}, 3000);
	}	
}

$(document).ready(function(){
	CommentForm.init()
});




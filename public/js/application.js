$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

	function hideShow(buttonID, showItem){
		$(showItem).hide();
		$(buttonID).on('click', function(){
	    	$(showItem).slideToggle("slow", function(){	    		
	    	});
	    })
	}
	hideShow($('#login'),$('#login-div'))
	hideShow($('#new-user'),$('#signup-div'))

	pinItEventListener();

	$('.doll-block').hover(function(){
		$(this).children('.story_text').slideToggle();
	}, function(){
		$(this).children('.story_text').slideToggle();
	});

});

function pinItEventListener(){
	$('.doll-block').on('click','.pin-it' ,function(event){
		event.preventDefault;

		$(this).parent().children('.message').fadeIn();
		$(this).parent().children('.message').fadeOut(1000);
		var dollId = $(this).parent().attr('id');
		var url = '/doll/' + dollId + '/pin';
		
		$.ajax({
        type: 'PUT',
        url: url,
        })
		.done(function(response){
			var doll = $.parseJSON(response);
			$('#' + doll.id+ " h1").text(doll.pins);
		});
	});
}



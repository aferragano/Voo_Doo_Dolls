$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
	$('#login-div').hide();
	$('#signup-div').hide();


	function hideShow(buttonID, showItem){
		$(buttonID).on('click', function(){
	    	$(showItem).show();
	    })
	}
	hideShow($('#login'),$('#login-div'))
	hideShow($('#new-user'),$('#signup-div'))

});

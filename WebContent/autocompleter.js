$(document).ready(function() {
     $(function() {
    	 $("#search").autocomplete({     
    	      source : function(request, response) {
    	           $.ajax({
    	                url : "SearchController",
    	                type : "GET",
    	                data : {
    	                       term : request.term
    	                },
    	                dataType : "json",
    	                success : function(data) {
    	                      response(data);
    	                }
    	         });
    	      },
    	      select: function( event, ui ) {
    	         alert( ui.item.value );
    	         // Your code
    	         return false;
    	      }
    	});
      });
   });

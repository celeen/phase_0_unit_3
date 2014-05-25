$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})

 
//RELEASE 1:
  

 
 
//RELEASE 2: 
$('h1').css({'color': 'blue', 'border': '5px solid red', 'visibility': 'inherit'})
$('div.mascot').html('<h1>Coyotes 2014</h1><br><img src="dbc_logo.jpg">');
$('img')
	.mouseover(function(e) {
	e.preventDefault()
	$(this).attr('src', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMNI6hx7H9u_zVcGF-l8ekBJuJZNgDYr3HyPQttsJkWNNKlVlq');
	})
	.mouseout(function(e) {
		$(this).attr('src', 'dbc_logo.jpg');
	})


 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
 
 
//RELEASE 4 : Experiment on your own
 
 
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.

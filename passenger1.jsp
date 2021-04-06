
<%@ page import="java.sql.*,databaseconnection.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>About</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style5.css" type="text/css" media="all">

<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
<style type="text/css">

.sidebarmenu ul{
margin: 0;
padding: 0;
list-style-type: none;
font: bold 13px Verdana;
width: 180px; /* Main Menu Item widths */
border-bottom: 1px solid #ccc;
}
 
.sidebarmenu ul li{
position: relative;
}

/* Top level menu links style */
.sidebarmenu ul li a{
display: block;
overflow: auto; /*force hasLayout in IE7 */
color: white;
text-decoration: none;
padding: 6px;
border-bottom: 1px solid #778;
border-right: 1px solid #778;
}

.sidebarmenu ul li a:link, .sidebarmenu ul li a:visited, .sidebarmenu ul li a:active{
background-color: #012D58; /*background of tabs (default state)*/
}

.sidebarmenu ul li a:visited{
color: white;
}

.sidebarmenu ul li a:hover{
background-color: black;
}

/*Sub level menu items */
.sidebarmenu ul li ul{
position: absolute;
width: 170px; /*Sub Menu Items width */
top: 0;
visibility: hidden;
}

.sidebarmenu a.subfolderstyle{
background: url(right.gif) no-repeat 97% 50%;
}

 
/* Holly Hack for IE \*/
* html .sidebarmenu ul li { float: left; height: 1%; }
* html .sidebarmenu ul li a { height: 1%; }
/* End */

</style>

<script type="text/javascript">

//Nested Side Bar Menu (Mar 20th, 09)
//By Dynamic Drive: http://www.dynamicdrive.com/style/

var menuids=["sidebarmenu1"] //Enter id(s) of each Side Bar Menu's main UL, separated by commas

function initsidebarmenu(){
for (var i=0; i<menuids.length; i++){
  var ultags=document.getElementById(menuids[i]).getElementsByTagName("ul")
    for (var t=0; t<ultags.length; t++){
    ultags[t].parentNode.getElementsByTagName("a")[0].className+=" subfolderstyle"
  if (ultags[t].parentNode.parentNode.id==menuids[i]) //if this is a first level submenu
   ultags[t].style.left=ultags[t].parentNode.offsetWidth+"px" //dynamically position first level submenus to be width of main menu item
  else //else if this is a sub level submenu (ul)
    ultags[t].style.left=ultags[t-1].getElementsByTagName("a")[0].offsetWidth+"px" //position menu to the right of menu item that activated it
    ultags[t].parentNode.onmouseover=function(){
    this.getElementsByTagName("ul")[0].style.display="block"
    }
    ultags[t].parentNode.onmouseout=function(){
    this.getElementsByTagName("ul")[0].style.display="none"
    }
    }
  for (var t=ultags.length-1; t>-1; t--){ //loop through all sub menus again, and use "display:none" to hide menus (to prevent possible page scrollbars
  ultags[t].style.visibility="visible"
  ultags[t].style.display="none"
  }
  }
}

if (window.addEventListener)
window.addEventListener("load", initsidebarmenu, false)
else if (window.attachEvent)
window.attachEvent("onload", initsidebarmenu)

</script>

<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>  
<script type="text/javascript" src="js/Cabin_400.font.js"></script>
<script type="text/javascript" src="js/tabs.js"></script> 
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js" type="text/javascript"></script>
		<script src="js/jquery.validationEngine-en.js" type="text/javascript"></script>
		<script src='js/jquery.validationEngine.js'type="text/javascript"></script>
		<!-- AJAX SUCCESS TEST FONCTION	
			<script>function callSuccessFunction(){alert("success executed")}
					function callFailFunction(){alert("fail executed")}
			</script>
		-->
		
		<script>	
		$(document).ready(function() {
			// SUCCESS AJAX CALL, replace "success: false," by:     success : function() { callSuccessFunction() }, 
			
			$("#formID").validationEngine()
			
			
			//$.validationEngine.loadValidation("#date")
			//alert($("#formID").validationEngine({returnIsValid:true}))
			//$.validationEngine.buildPrompt("#date","This is an example","error")	 		 // Exterior prompt build example								 // input prompt close example
			//$.validationEngine.closePrompt(".formError",true) 							// CLOSE ALL OPEN PROMPTS
		});
		
		// JUST AN EXAMPLE OF VALIDATIN CUSTOM FUNCTIONS : funcCall[validate2fields]
		function validate2fields(){
			if($("#firstname").val() =="" || $("#lastname").val() == ""){
				return true;
			}else{
				return false;
			}
		}
	</script>

</head>
<body id="page1">
<div class="main">

<!--header -->
	<header>
		<div class="wrapper">
			<h1><a href="index.html" id="logo">Air lines</a></h1>
			
    <span id="slogan"><font color="#660000">AIRLINE RESERVATION SYSTEM</font></span> 
    <nav id="top_nav"> 
    <ul>
					
      <li><a href="index.html" class="nav1"><font color="#660000">Home</font></a></li>
					
      <li><a href="#" class="nav2"><font color="#660000">Sitemap</font></a></li>
					
      <li><a href="Contacts.html" class="nav3"><font color="#660000">Contact</font></a></li>
				</ul>
			</nav>
		</div>
		<nav>
			<ul id="menu">
				
    <li id="menu_active"><a href="index.html"><span><span><font color="#FF0000">ABOUT</font></span></span></a></li>
				
    <li><a href="Offers.html"><span><span><font color="#FF0000">OFFERS</font></span></span></a></li>
				
   
				
    <li><a href="Services.html"><span><span><font color="#FF0000">SERVICES</font></span></span></a></li>
				
    <li><a href="Safety.html"><span><span><font color="#FF0000">SAFETY</font></span></span></a></li>
				
    <li class="end"><a href="Contacts.html"><span><span><font color="#FF0000">CONTACTS</font></span></span></a></li>
			</ul>
		</nav>
	</header><div class="ic">More <a href="http://www.templatemonster.com/">Website Templates</a> at TemplateMonster.com!</div>
<!-- / header -->
<!--content -->

	<div class="wrapper pad1">
			<article class="col1">
				<div class="box1">
							
    <h2 class="top"><font color="#FF0000">Available Flights</font></h2>
							<div class="pad">
						
									
										
 <p><strong><font size="3">AirIndia &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;  <img src="images/6.jpg"></font></strong></p>
									
		 
		  <p><font size="3"><strong>Indian &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/10.jpg"></strong></font></p>
		  
		   <p><font size="3"><strong>Deccan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/11.gif"></strong></font></p>							
				
				<p><font size="3"><strong>KingFisher &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img src="images/2.gif"></strong></font></p>
				
			<p><font size="3"><strong>Spicejet &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/3.gif"></strong></font></p>				
			
			<p><font size="3"><strong>JetLite&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/4.jpg"></strong></font></p>				
			
			<p><font size="3"><strong>Indigo &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/5.jpg"></strong></font></p>
										
				 <p><font size="3"><strong>JetAirways &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <img src="images/8.jpg"></strong></font></p>			
								</div>
						</div>
					</article>
				
							<article class="cols pad_left1">
								<figure><img src="images/page1_img2.jpg" alt="" class="pad_bot2"></figure>
								<br><br><p class="pad_bot1"><strong>Airline reservation systems are used to track 
								and maintain records of flight schedules, passenger reservations and seat 
								assignments, aircraft loading, flight inventory, ticket purchases and fare 
								
								tariffs.
</strong></p>
								<br><br>
								<p> <strong>The modern airline reservation system also serves customer needs 
								from the beginning to the end of each customer's reserved flight, therefore
								 laying out management tasks for each flight.</strong></p>

														</article>
															<article class="cols pad_left1">
								<br>
								<h3>Airline Reservation</h3>
	<div class="sidebarmenu">
<ul id="sidebarmenu1">

        <li><a href="#">Air Ticket Booking</a> 
          <ul>
            <li><a href="checkflight.jsp">DomesticFlight Booking</a></li>
            <li><a href="checkinterflight.jsp">IntenationalFlight Booking</a></li>
          </ul>
        </li>
<br><br><br>

<li><a href="#">Air Ticket Cancellation</a>  <ul>
          <li><a href="ticketcancel.jsp">DomesticFlight Cancellation</a></li>
          <li><a href="ticketcancel1.jsp">IntenationalFlight Cancellation</a></li>
 
  </li>
</ul>
</li>

</ul>
</div>

		<br><br>						
   
<img src="images/flight.jpg" height="150" width="300">
<br><br><br>
<img src="images/check1.jpg" height="150" width="300">

</strong></p>
														</article>
						</div>
						
					</article>
				</div>
			</section>
			<!--content end-->
			<!--footer -->
			
		</div>
		</div>
<script type="text/javascript"> Cufon.now(); </script>
<script>
	$(document).ready(function() {
		tabs.init();
	});
	jQuery(document).ready(function($) {
		$('#form_1, #form_2, #form_3').jqTransform({imgPath:'jqtransformplugin/img/'});	
	});
	$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'fade', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft' 
		slices:15,
		animSpeed:500,
		pauseTime:6000,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false, //Next & Prev
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		controlNavThumbsFromRel:false, //Use image rel for thumbs
		controlNavThumbsSearch: '.jpg', //Replace this with...
		controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
		keyboardNav:true, //Use left & right arrows
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:1, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
	});
</script>
</body>
</html>
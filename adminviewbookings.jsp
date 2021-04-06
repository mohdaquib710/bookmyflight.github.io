
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
								<p class="pad_bot1"><strong>Airline reservation systems are used to track 
								and maintain records of flight schedules, passenger reservations and seat 
								assignments, aircraft loading, flight inventory, ticket purchases and fare 
								
								tariffs. The modern airline reservation system also serves customer needs 
								from the beginning to the end of each customer's reserved flight, therefore
								 laying out management tasks for each flight.

</strong></p>
														</article>
															<article class="cols pad_left1">
								<br><br><br>
								<h3>BOOKING STATUS</h3>
								
   <a href="viewonewaystatus.jsp"> <p><strong><font color="#660000">View OneWay Domestic Booking History</font></strong></p>
								
    </a>
								
     <a href="viewroundtripstatus.jsp"><p><strong><font color="#660000">View Roundtrip Domestic Booking History</font></strong></p>
								
    </a>
								
    <a href="viewmulticitystatus.jsp"> <p><strong><font color="#660000">View Multicity Domestic Booking History</font></strong></p>
								
    </a>
								
    <a href="viewoneinterstatus.jsp"> <p><strong><font color="#660000">View OneWay International Booking History</font></strong></p></a>
								
    <a href="viewroundinterstatus.jsp"> <p><strong><font color="#660000">View RoundTrip International Booking History</font></strong></p></a>
								
    <a href="viewmulticityinterstatus.jsp"><p><strong><font color="#660000">View Multicity International Booking History</font></strong></p></a>
<img src="images/flight.jpg" height="150" width="300">
</strong></p>
														</article>
						</div>
						
					</article>
				</div>
			</section>
			<!--content end-->
	
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
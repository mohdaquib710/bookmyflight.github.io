<!DOCTYPE html>
<%@ page import="java.sql.*,databaseconnection.*"%>

<html lang="en">
<head>
  <title>Airline Reservation System</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style2.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style9.css" type="text/css" media="all">
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
			
	<style type="text/css">
	#font
	{
	font-family:verdana;
	font-size:12px;
	font-color:green;
	padding:3px 3px 3px 3px;
	}
	</style>

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
				
    <li><a href="checkflight.jsp"><span><span><font color="#FF0000">CHECK DOMESTIC FLIGHT</font></span></span></a></li>
				
  <li><a href="checkinterflight.jsp"><span><span><font color="#FF0000">CHECK INTERNATIONAL FLIGHT</font></span></span></a></li>
   
    
			</ul>
		</nav>
	</header><div class="ic">More <a href="http://www.templatemonster.com/">Website Templates</a> at TemplateMonster.com!</div>
<!-- / header -->
<!--content -->

	<section id="content">

		<div class="for_banners">
			<article class="col1">
	<img src="images/img11.jpg">
		 				
    <div class="tabs" > <img src="images/nnn.bmp" align="right"> 
      <h5 align="center"><font color="#660000">Welcome To PAYSEAL </font></h5>
      <h4 align="center"><font color="#660000">Secure Payment GateWay </font></h4>
      <h4 align=""><font color="#000000">Dear Customer,</font></h4>
      <p ><font color="#000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PAYSEAL 
        will secure your payment </font></p>
      <div class="content"> 
        <div class="tab-content" id="OneWay"> 
          <form id="formID" action="multicityinterpayinsert.jsp" method="post" onsubmit="return valid();">
            <div> 
              <div class="row"><img src="images/cvvcardback.gif" align="right" height="100" width="150"><br>
                <br>
                <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;CardType </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="type" class="validate[required]" id="type"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select CardType</option>
                <option value="Visa-Credit/Debit">Visa-Credit/Debit</option>
                <option value="MasterCard">MasterCard</option>
                <option value="Maestro">Maestro</option></select>
                </div>
              <br>
              <br>
              <div class="row"> <span class="left">&nbsp;&nbsp;&nbsp;&nbsp;Card 
                Number</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input  id="card"   class="validate[required]" type="text" name="card" style="border:1px solid #3399FF" />
                (Please enter your card number without any space) </div>
              <br>
              <br>
              <div class="row"> <span class="left">&nbsp;&nbsp;&nbsp;&nbsp;ExpiryDate</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input   class="validate[required,custom[date]] text-input" type="text" name="date"  id="date" style="font-family:verdana; border:1px solid #3399FF"/>
                (Please enter expiry date provided on your card) </div>
              <br>
              <br>
              <div class="row"> <span class="left">&nbsp;&nbsp;&nbsp;CVV2/CVC2 
                Number</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input value="" id="number"   class="validate[required]" type="text" name="number" style="border:1px solid #3399FF" />
                (CVV2/CVC2 is the three digit security code printed on the back 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;of card) </div>
              <br>
              <br>
              <div class="row"> <span class="left">&nbsp;&nbsp;&nbsp;&nbsp;Name 
                on Card </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input value="" id="name"   class="validate[required]" type="text" name="name" style="border:1px solid #3399FF" />
                (Please enter your name specified on the card) </div>
              <br>
              <br>
              <div class="row"> <span class="left">&nbsp;&nbsp;&nbsp;&nbsp;Purchase 
                Amount </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input value="<%=session.getAttribute("price")%>" id="amount"    class="validate[required]" type="text" name="amount" style="border:1px solid #3399FF" />
              </div>
              <br>
              <br>
              <div class="wrapper"> <span class="right relative" > 
                <input name="submit" type="submit" class="button1" value="Pay"/>
                <a href="checkinterflight.jsp"> 
                <input type="button" name="cancel" class="button1" value="Cancel" />
                </a> </span> </div>
            </div>
          </form>
        </div>
        After pressing Pay, to ensure a successful transaction, DO NOT close your 
        browser. </div>
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
<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>
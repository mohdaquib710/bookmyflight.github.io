<!DOCTYPE html>
<html lang="en">
<head>
  <title>Airline Reservation System</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style5.css" type="text/css" media="all">
<link rel="stylesheet" href="css/validationEngine.jquery.css" type="text/css" media="screen" title="no title" charset="utf-8" />
<script src="scripts/DateTimePicker.js" type="text/javascript"></script>

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
	<script>	
		$(document).ready(function() {
			// SUCCESS AJAX CALL, replace "success: false," by:     success : function() { callSuccessFunction() }, 
			
			$("#form").validationEngine()
			
			
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
	<script>	
		$(document).ready(function() {
			// SUCCESS AJAX CALL, replace "success: false," by:     success : function() { callSuccessFunction() }, 
			
			$("#form1").validationEngine()
			
			
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
			<br><br><br><br><br><br>
		 <h3 align="center"><font color="#660000">Check International Flights Available</font></h3>				
    <div class="tabs" > 
      <ul class="nav">
        <li class="selected"><a href="#OneWay">OneWay</a></li>
        <li> <a href="#RoundTrip">RoundTrip</a></li>
        <li> <a href="#MultiCity"> MultiCity</a></li>
      </ul>
      <div class="content" style="border:5px solid #66CCCC"> 
        <div class="tab-content" id="OneWay"> 
          <form id="formID" action="viewinteroneway.jsp" method="post" onsubmit="return valid();">
            <div> <br>
              <br>
              <div class="row"> <span class="left">&nbsp;&nbsp;&nbsp;&nbsp;Starting 
                From</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="start" class="validate[required]" id="start"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Departure City</option>
                <option value="Bangalore">Bangalore</option>
                <option value="Chennai">Chennai</option>
                <option value="NewDelhi">NewDelhi</option>
                <option value="Goa">Goa</option>
                <option value="Mumbai">Mumbai</option></select>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <select name="arrival" class="validate[required]" id="arrival" style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Arrival City</option>
                <option value="Malaysia">Malaysia</option>
                <option value="Singapore">Singapore</option>
                <option value="NewYork">NewYork</option>
                <option value="Switzerland">Switzerland</option>
                <option value="Mexico">Mexico</option></select>
                </div>
              <br>
              <br>
              <div class="row"> <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Depart</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input value="Select Depart Date" name="depar" id="Text2"   class="validate[required]" type="text"  style="border:1px solid #3399FF" />
                <img src="images/cal.gif" style="cursor: pointer;" onclick="javascript:NewCssCal ('Text2','ddMMyyyy')" /> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Return&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="ret" disabled="true"  id="ret" style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Choose Return Date</option>
                <option value="15/09/2011">15/09/2011</option>
                <option value="16/09/2011">16/09/2011</option></select>
                </div>
              <br>
              <br>
              <div class="row"> <br>
                <br>
                <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Adult</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="adult" class="validate[required]" id="adult"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Adult</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="6">6</option></select>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Children(2-11)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="child" class="validate[required]" id="child"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select children</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option></select>
                &nbsp;&nbsp; Infants(0-2)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="infants" class="validate[required]" id="infants"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select infant</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option></select>
                <br>
                <br>
                <br>
                &nbsp;&nbsp;&nbsp; Class</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="class" class="validate[required]" id="class"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">&nbsp;&nbsp;Select Class&nbsp;&nbsp;</option>
                <option value="Economy">Economy</option>
                <option value="Business">Business</option>
                <option value="Firstclass">Firstclass</option>
                <option value="PremiumEconomy">PremiumEconomy</option></select> </select> 
              </div>
              <div class="wrapper"> <span class="right relative" > 
                <input name="submit" type="submit" class="button1" value="FindFlights"/>
                </span> </div>
            </div>
          </form>
        </div>
        <div class="tab-content" id="RoundTrip"> 
          <form id="form" action="viewinterround.jsp" method="post" onsubmit="return valid();">
            <div> <br>
              <br>
              <div class="row"> <span class="left">&nbsp;&nbsp;&nbsp;&nbsp;Starting 
                From</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="start" class="validate[required]" id="start"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Departure City</option>
                <option value="Bangalore">Bangalore</option>
                <option value="Chennai">Chennai</option>
                <option value="NewDelhi">NewDelhi</option>
                <option value="Goa">Goa</option>
                <option value="Mumbai">Mumbai</option></select>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <select name="arrival" class="validate[required]" id="arrival" style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Arrival City</option>
                <option value="Malaysia">Malaysia</option>
                <option value="Singapore">Singapore</option>
                <option value="NewYork">NewYork</option>
                <option value="Switzerland">Switzerland</option>
                <option value="Mexico">Mexico</option></select>
                </div>
              <br>
              <br>
              <div class="row"> <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Depart</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input value="Select Depart Date" name="depar" id="Text4"   class="validate[required]" type="text"  style="border:1px solid #3399FF" />
                <img src="images/cal.gif" style="cursor: pointer;" onclick="javascript:NewCssCal ('Text4','ddMMyyyy')" /> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Return&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input value="Choose Return Date" name="ret" id="Text5"   class="validate[required]" type="text"  style="border:1px solid #3399FF" />
                <img src="images/cal.gif" style="cursor: pointer;" onclick="javascript:NewCssCal ('Text5','ddMMyyyy')" /> 
              </div>
              <div class="row"> <br>
                <br>
                <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Adult</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="adult" class="validate[required]" id="adult"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Adult</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="6">6</option></select>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Children(2-11)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="child" class="validate[required]" id="child"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select children</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option></select>
                &nbsp;&nbsp; Infants(0-2)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="infants" class="validate[required]" id="infants"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select infant</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option></select>
                <br>
                <br>
                <br>
                &nbsp;&nbsp;&nbsp; Class</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="class" class="validate[required]" id="class"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">&nbsp;&nbsp;Select Class&nbsp;&nbsp;</option>
                <option value="Economy">Economy</option>
                <option value="Business">Business</option>
                <option value="Firstclass">Firstclass</option>
                <option value="PremiumEconomy">PremiumEconomy</option></select> </select> 
              </div>
              <div class="wrapper"> <span class="right relative" > 
                <input name="submit" type="submit" class="button1" value="FindFlights" />
                </span> </div>
            </div>
          </form>
        </div>
        <div class="tab-content" id="MultiCity"> 
          <form id="form1" action="viewintermulticity.jsp" method="post" onsubmit="return valid();">
            <div> <br>
              <br>
              <div class="row"> <span class="left">&nbsp;&nbsp;&nbsp;&nbsp;Starting 
                From</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="start" class="validate[required]" id="start"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Departure City</option>
                <option value="Bangalore">Bangalore</option>
                <option value="Chennai">Chennai</option>
                <option value="NewDelhi">NewDelhi</option>
                <option value="Goa">Goa</option>
                <option value="Mumbai">Mumbai</option></select>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                <select name="arrival" class="validate[required]" id="arrival" style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Arrival City</option>
                <option value="Malaysia">Malaysia</option>
                <option value="Singapore">Singapore</option>
                <option value="NewYork">NewYork</option>
                <option value="Switzerland">Switzerland</option>
                <option value="Mexico">Mexico</option></select>
                <br>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="start1" class="validate[required]" id="start1"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Departure City</option>
                <option value="Bangalore">Bangalore</option>
                <option value="Chennai">Chennai</option>
                <option value="NewDelhi">NewDelhi</option>
                <option value="Goa">Goa</option>
                <option value="Mumbai">Mumbai</option></select>
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp; 
                <select name="arrival1" class="validate[required]" id="arrival1"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Arrival City</option>
                <option value="Malaysia">Malaysia</option>
                <option value="Singapore">Singapore</option>
                <option value="NewYork">NewYork</option>
                <option value="Switzerland">Switzerland</option>
                <option value="Mexico">Mexico</option></select>
                </div>
              <br>
              <br>
              <div class="row"> <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Depart</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input value="Select Depart Date" name="depar" id="Text6"   class="validate[required]" type="text"  style="border:1px solid #3399FF" />
                <img src="images/cal.gif" style="cursor: pointer;" onclick="javascript:NewCssCal ('Text6','ddMMyyyy')" /> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Return&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="ret" disabled="true"  id="ret" style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Choose Return Date</option>
                <option value="15/09/2011">15/09/2011</option>
                <option value="16/09/2011">16/09/2011</option></select>
                <br>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <input value="Choose Depart Date" name="date" id="Text7"   class="validate[required]" type="text"  style="border:1px solid #3399FF" />
                <img src="images/cal.gif" style="cursor: pointer;" onclick="javascript:NewCssCal ('Text7','ddMMyyyy')" /> 
              </div>
              <div class="row"> <br>
                <br>
                <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Adult</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="adult" class="validate[required]" id="adult"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Adult</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="6">6</option></select>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Children(2-11)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="child" class="validate[required]" id="child"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select children</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option></select>
                &nbsp;&nbsp; Infants(0-2)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="infants" class="validate[required]" id="infants"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select infant</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option></select>
                <br>
                <br>
                <br>
                &nbsp;&nbsp;&nbsp; Class</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="class" class="validate[required]" id="class"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">&nbsp;&nbsp;Select Class&nbsp;&nbsp;</option>
                <option value="Economy">Economy</option>
                <option value="Business">Business</option>
                <option value="Firstclass">Firstclass</option>
                <option value="PremiumEconomy">PremiumEconomy</option></select> </select> 
              </div>
              <div class="wrapper"> <span class="right relative" > 
                <input name="submit" type="submit" class="button1" value="FindFlights" />
                </span> </div>
            </div>
          </form>
        </div>
      </div>
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
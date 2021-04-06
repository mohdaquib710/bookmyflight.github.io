
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
				
    <li><a href="checkflight.jsp"><span><span><font color="#FF0000">CHECK DOMESTIC FLIGHT</font></span></span></a></li>
				
   
				
    <li><a href="checkinterflight.jsp"><span><span><font color="#FF0000">CHECK INTERNATIONAL FLIGHT</font></span></span></a></li>
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
					<article class="col2">
					<br><br>
						
    <h3 align="center"><font color="#660000">Book Your Domestic Flights For RoundTrip</font></h3>
						
    <div class="content" style="border:5px solid #66CCCC"> 
        <div class="tab-content" id="OneWay"> 
          <form id="formID" action="bookroundtripinsert.jsp" method="post" onsubmit="return valid();">

 
						 <% 
               String id=request.getQueryString();
			System.out.println(id);
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
			
         try      
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    String sql="select * from roundtrip where id='"+id+"'";
 	    rs=st.executeQuery(sql);

	    while(rs.next())
	     {
		%>
		
<div> 
			<div class="row"><br>
                <br>
                <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Passenger Name</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 <input value="" name="passname" id="passname"   class="validate[required]" type="text"  style="border:1px solid #3399FF" />
               
				&nbsp;&nbsp;FlightName</span>&nbsp;&nbsp;&nbsp;
                <input name="name" id="name" value="<%=rs.getString(2)%>" type="text"  style="border:1px solid #3399FF" />
                </div>
              <div class="row"><br>
                <br>
                <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;FlightId</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 <input name="flightid" id="flightid"   value="<%=rs.getString(3)%>" type="text"  style="border:1px solid #3399FF" />
               
				&nbsp;&nbsp;Class</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="class" id="class"   value="<%=rs.getString(4)%>" type="text"  style="border:1px solid #3399FF" />
                </div>
              
              
           <div class="row"><br>
                <br>
                <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Starting From</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 <input name="start" id="start" value="<%=rs.getString(5)%>" type="text"  style="border:1px solid #3399FF" />
               
				&nbsp;&nbsp;To</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="arrival" id="arrival"   value="<%=rs.getString(6)%>" type="text"  style="border:1px solid #3399FF" />
                </div>
              
              <div class="row"><br>
			   <p align="right">(Travellers upto 9per Booking)</p>
              
                <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Departure Date</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 <input name="depar" id="depar"   value="<%=rs.getString(7)%>" type="text"  style="border:1px solid #3399FF" />
                
				&nbsp;&nbsp;ReturnDate</span>&nbsp;&nbsp;&nbsp;&nbsp;
                <input name="ret" id="ret"   value="<%=rs.getString(8)%>" type="text"  style="border:1px solid #3399FF" />
                
                
                </div>
				
				 <div class="row"><br>
                <br>
                <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Adult(12+)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <select name="adult" class="validate[required]" id="adult"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Adult</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value=">6">>6</option></select>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Children(2-11)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <select name="child" class="validate[required]" id="child"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Children</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
				<option value="4">4</option></select>
                </div>
				 <div class="row"><br>
                <br>
                <span class="left" >&nbsp;&nbsp;&nbsp;&nbsp;Infants(0-2)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
               <select name="infant" class="validate[required]" id="infant"  style="font-family:verdana; border:1px solid #3399FF";/>
                <option value="">Select Infant</option>
                <option value="0">0</option>
                <option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option></select>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TotalFare</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input name="price" id="price"   value="<%=rs.getString(9)%>" type="text"  style="border:1px solid #3399FF" />
                </div>
              <br>
              <br>
              <div class="wrapper"> <span class="right relative" > 
                <input name="submit" type="submit" class="button1" value="MakePayment"/>
                <input name="reset2" type="reset" class="button1" value="Clear" />
                </span> </div>
            </div>
         



	   
 	<%
	    }
   
	}catch(SQLException e1)	{ System.out.println("Database error"+e1.getMessage()); }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
	   
	</form>
			
	  </div>
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


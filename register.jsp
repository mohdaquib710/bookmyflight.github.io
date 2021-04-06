<!DOCTYPE html>
<html lang="en">
<head>
  <title>Airline Reservation System</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style2.css" type="text/css" media="all">
<link rel="stylesheet" href="css/template.css" type="text/css" media="all">

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

<body id="page6">
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

	<section id="content">
	
		<div class="wrapper pad1">
		


<div>
      <p><font color="#660000" size="7"><strong><font color="#FF0000">REGISTRATION</font></strong></font></p> 
      <p><font color="#660000">Please note that the Registration Form must be completed 
        accurately in accordance with your passport details.</font></p>
		 <form id="formID" class="formular" method="post" action="registerinsert.jsp">
			<fieldset>
				<legend>THE PERSONAL DATA</legend>
				
				<label>
					<span>First Name (optional)</span>
					<input value=""  class="validate[optional,custom[onlyLetter],length[0,100]] text-input" type="text" name="firstname" id="firstname" style="border:1px solid #3399FF" />
				</label><br>
				<label>
					<span>Last Name : </span>
					<input value=""  class="validate[required,custom[onlyLetter],length[0,100],funcCall[validate2fields]] text-input" type="text" id="lastname" name="lastname" style="border:1px solid #3399FF" />
				</label><br>
				<div>
					<span>Gender</span>
				<select name="gender" class="validate[required]"  id="gender" style="font-family:verdana; border:1px solid #3399FF";/>
					<option value="">Choose a Gender</option>
					<option value="Male">Male</option>
					<option value="Female">Female</option>
				
				</select>
					
				</div><br>
				
				<label>
					<span>Date OF Birth(format YYYY-MM-DD)</span>
					<input value="1988-12-10"  class="validate[required,custom[date]] text-input" type="text" name="date"  id="date" style="font-family:verdana; border:1px solid #3399FF"/>
				</label>
				<br>
				<label>
					<span>Country</span>
				<select name="country" class="validate[required]"  id="country" style="font-family:verdana; border:1px solid #3399FF";/>
					<option value="">Choose a Country</option>
					<option value="America">America</option>
					<option value="Australia">Australia</option>
					<option value="Belgium">Belgium</option>
					<option value="China">China</option>
					<option value="India">India</option>
					<option value="Germany">Germany</option>
					<option value="Japan">Japan</option>
					<option value="Korea">Korea</option>
					<option value="Myanmar">Myanmar</option>
					<option value="Newzland">Newzland</option>
					<option value="Russia">Russia</option>
					<option value="Others">Others</option>
				</select>
				</label>
				<br>
				
				<label>
					<span>Telephone</span>
					<input value="" style="border:1px solid #3399FF"  class="validate[required,custom[telephone]] text-input" type="text" name="telephone"  id="telephone" />
				</label><br>
				<label>
					<span>Address </span>

					<textarea value="" style="border:1px solid #3399FF" class="validate[required,length[6,300]] text-input" name="address" id="address" /> </textarea>
				</label>
			</fieldset>
			
			<fieldset>
				<legend>THE LOGIN DATA</legend>
				<label>
					<span>Create EmailID </span>
					<input value="" style="border:1px solid #3399FF"  class="validate[required,custom[email]] text-input" type="text" name="email" id="email"  />
				</label>
				<label>
					<span>Password : </span>
					<input value=""  style="border:1px solid #3399FF" class="validate[required,length[6,11]] text-input" type="password" name="password"  id="password" />
				</label>
				<label>
					<span>Confirm password : </span>
					<input value="" style="border:1px solid #3399FF"  class="validate[required,confirm[password]] text-input" type="password" name="password2"  id="password2" />
				</label>
			</fieldset>
			<fieldset>
				<legend>PASSPORT DATA</legend>
				<label>
					<span>Citzenship</span>
					<input value="" style="border:1px solid #3399FF"  class="validate[required] text-input" type="text" name="citzenship" id="citzenship" />
				</label><br>
				<label>
					<span>No Of The Document </span>
					<input value="" style="border:1px solid #3399FF"  class="validate[required] text-input" type="text" id="document" name="document"  />
				</label><br>
				<label>
					<span>Validity Period </span>
					<input value="" style="border:1px solid #3399FF" class="validate[required] text-input" type="text" id="validity" name="validity"  />
				</label><br>

			</fieldset>
			<fieldset>
				<legend>CONDITIONS</legend>
				<div class="infos">Checking this box indicates that you accept terms of use. If you do not accept these terms, do not use this website : </div>
				<label>
					<span class="checkbox">I accept terms of use : </span>
					<input class="validate[required] checkbox" style="border:1px solid #3399FF" type="checkbox"  id="agree"  name="agree"/>
				</label>
			</fieldset>
<input class="button1" type="submit" value="Registration!" style="font-family:verdana;font-size:12px;color:red;border:1px solid green;"/>
<hr/>
</form>

</div>
		

   
				</div>
			</section>
			<!--content end-->
			<!--footer -->
		
			</div>
		</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>
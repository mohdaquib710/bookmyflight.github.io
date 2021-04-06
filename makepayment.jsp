<!DOCTYPE html>
<%@ page import="java.sql.*,databaseconnection.*"%>

<html lang="en">
<head>
  <title>Airline Reservation System</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style2.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style8.css" type="text/css" media="all">
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
		 				
    <div class="tabs" > 
      <div class="tab-content" id="OneWay"> 
        <table>
          <td width="600" height="35" bgcolor="#66CCFF"><font color="#666600" size="7"><strong>Make 
            Your Payment</strong></font></td>
        </table>
        <br>
        <table  width="600" height="" style="border:1px solid #660000;" bgcolor="#FFCC99">
          <td width="600" height="30" bgcolor="#66CCFF"><font color="#660000" size="7"><strong>Your 
            Total Billing Amount</strong> </font> 
          <td> <br> <br> 
          <tr> 
            <td width="600" height="40"><font size="7">Your Total Invoice Amount 
              :<%=session.getAttribute("price")%></font> 
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
	    String sql="select price from oneway1 where id='"+id+"'";
 	    rs=st.executeQuery(sql);

	    while(rs.next())
	     {
		%>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
          </tr>
          <%
	    }
   
	}catch(SQLException e1)	{ System.out.println("Database error"+e1.getMessage()); }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
        </table>
        <br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <a href="onewaypay.jsp"><img src="images/pay1.jpg"></a> </div>
    </div>
    </div>	
					</article>
			
				</div>
	
			</section>
			<!--content end-->
			
		</div>
		</div>

</body>
</html>
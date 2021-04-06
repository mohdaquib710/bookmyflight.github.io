<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>Airline Reservation System</title>
    </head>
    <body>
	<form>
	<% 
         String email=request.getParameter("email");
	String password=request.getParameter("password");		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from reg where email='"+email+"' AND password='"+password+"'";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		session.setAttribute("email",email);
		 %>
		<jsp:forward page="passenger1.jsp"/>
	    	<%
	             		    
	    }
	  out.println("Oop's! you are not Authenticated Person");
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
             </form>
       </body> 	
</html>
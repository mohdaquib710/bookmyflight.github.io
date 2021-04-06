
<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>JSP</title>
    </head>
    <body>
	<form>
	<% 
      String name=request.getParameter("name");
	  session.setAttribute("name",name);
	String number=request.getParameter("number");		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from roundtripinterpay where name='"+name+"' AND number='"+number+"'";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
	    if(rs.next())
	     {
		session.setAttribute("name",name);
		 %>	
		<jsp:forward page="viewroundtripintercancel.jsp"/>
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



<%@ page import="java.sql.*,databaseconnection.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"

   "http://www.w3.org/TR/html4/loose.dtd">



<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Airline Reservation System</title>

    </head>

    <body bgcolor="f0ffff">

        <% 

try

        {

   HttpSession ses=request.getSession();

 

      String name= (String) session.getAttribute("name");
	 
			System.out.println(name);
			
Connection con=databasecon.getconnection();

Statement st=con.createStatement();


String sql1="delete from oneway1 where passname='"+name+"'";
st.executeUpdate(sql1);
String sql2="delete from onewaypay where name='"+name+"'";
st.executeUpdate(sql2);

%><jsp:forward page="cancelsucc.jsp"/><%

st.close();



con.close();

}

catch(Exception e)

        {

out.println(e);

}

%>



    </body>

</html>





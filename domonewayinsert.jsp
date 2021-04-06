<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
        try
                {
				
        String a=request.getParameter("name");
        String b=request.getParameter("flightid");		
        String c=request.getParameter("class");   
	  
	   String d=request.getParameter("start");
	   String e=request.getParameter("arrival");
	   String f=request.getParameter("depar");
	    String g=request.getParameter("price");

Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into oneway(name,flightid,class,start,arrival,depar,price) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')";
		
         int x=st.executeUpdate(sql);
		if(x!=0){
		
		response.sendRedirect("adminflightform.jsp?message=Successfully Registered");
		}
				else{
			response.sendRedirect("adminflightform.jsp?message=fail");
		}
       
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>
       
  </center>
  </td>
    </tr>
  </table>


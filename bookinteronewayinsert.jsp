<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
        try
                {
				
        String a=request.getParameter("passname");
		
		  String b=request.getParameter("name");
		String c=request.getParameter("flightid");		
        String d=request.getParameter("class");   
	  
	   String e=request.getParameter("start");
	   String f=request.getParameter("arrival");
	   String g=request.getParameter("depar");
	   String h=request.getParameter("adult");
	   String i=request.getParameter("child");
	   String j=request.getParameter("infant");
 String k=request.getParameter("price");
  session.setAttribute("price",k);
 

	    


	  
       Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into interone1(passname,name,flightid,class,start,arrival,depar,adult,child,infant,price) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"')";
		
         int x=st.executeUpdate(sql);
		if(x!=0){
		
		response.sendRedirect("makepayone1.jsp?message=Successfully Booked ");
		}
				else{
			response.sendRedirect("makepayone1.jsp?message=fail");
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


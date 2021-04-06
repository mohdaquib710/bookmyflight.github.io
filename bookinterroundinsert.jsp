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
	   String h=request.getParameter("ret");
	   String i=request.getParameter("adult");
	   String j=request.getParameter("child");
	   String k=request.getParameter("infant");
         String l=request.getParameter("price");
	     session.setAttribute("price",l);


	  
       Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into interround1(passname,name,flightid,class,start,arrival,depar,ret,adult,child,infant,price) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"')";
		
         int x=st.executeUpdate(sql);
		if(x!=0){
		
		response.sendRedirect("makepayround1.jsp?message=Successfully Booked ");
		}
				else{
			response.sendRedirect("makepayround1.jsp?message=fail");
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


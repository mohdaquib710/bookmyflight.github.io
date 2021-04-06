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
	   String f=request.getParameter("start1");
	   String g=request.getParameter("arrival1");
	   String h=request.getParameter("depar");
			   String i=request.getParameter("date");
			    String j=request.getParameter("price");			   

	    


	  
       Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into intermulti(name,flightid,class,start,arrival,start1,arrival1,depar,date,price) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"')";
		
         int x=st.executeUpdate(sql);
		if(x!=0){
		
		response.sendRedirect("adminflightform2.jsp?message=Successfully Values Inserted");
		}
				else{
			response.sendRedirect("adminflightform2.jsp?message=fail");
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


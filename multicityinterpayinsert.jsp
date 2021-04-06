<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
        try
                {
				
        String a=request.getParameter("type");
        String b=request.getParameter("card");		
        String c=request.getParameter("date");   
	  
	   String d=request.getParameter("number");
	   String e=request.getParameter("name");
	   String f=request.getParameter("amount");
				   

	    


	  
       Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into multicityinterpay(type,card,date,number,name,amount) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')";
		
         int x=st.executeUpdate(sql);
		if(x!=0){
		
		response.sendRedirect("multicityinterpaysucc.jsp?message=Successfully Values Inserted");
		}
				else{
			response.sendRedirect("multicityinterpaysucc.jsp?message=fail");
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


<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
        try
                {
				
        String a=request.getParameter("firstname");
        String b=request.getParameter("lastname");		
        String c=request.getParameter("gender");   
	  
	   String d=request.getParameter("date");
	   String e=request.getParameter("country");
	   String f=request.getParameter("telephone");
	   String g=request.getParameter("address");
	   String h=request.getParameter("email");
	     String i=request.getParameter("password");
		   String j=request.getParameter("password2");
		     String k=request.getParameter("citzenship");
			   String l=request.getParameter("document");
			      String m=request.getParameter("validity");
	    


	  
       Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into reg(firstname,lastname,gender,date,country,telephone,address,email,password,password2,citzenship,document,validity) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"')";
		
         int x=st.executeUpdate(sql);
		if(x!=0){
		
		response.sendRedirect("regsucc.jsp?message=Successfully Registered");
		}
				else{
			response.sendRedirect("regsucc.jsp?message=fail");
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


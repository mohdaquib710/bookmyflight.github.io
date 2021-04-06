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
	      String g=request.getParameter("start1");
	   String h=request.getParameter("arrival1");
	   String i=request.getParameter("depar");
	   String j=request.getParameter("date");
	   String k=request.getParameter("adult");
	   String l=request.getParameter("child");
	   String m=request.getParameter("infant");
	    String n=request.getParameter("price");
		 session.setAttribute("price",n);

	    


	  
       Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
        String sql="insert into multicity1(passname,name,flightid,class,start,arrival,start1,arrival1,depar,date,adult,child,infant,price) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"')";
		
         int x=st.executeUpdate(sql);
		if(x!=0){
		
		response.sendRedirect("makepaymulti.jsp?message=Successfully Booked ");
		}
				else{
			response.sendRedirect("makepaymulti.jsp?message=fail");
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


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style1 {
	color: #0000FF;
	font-weight: bold;
	font-size: 18px;
}
.style2 {
	font-size: 36px;
	color: #0000FF;
	font-family: "Courier New", Courier, monospace;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<form name="form1" method="post" action="request.jsp">
  <p align="center" class="style2">General Key !!! </p>
  <p align="center" class="style2"><img src="GKey.jpg" width="240" height="122"></p>
  <table width="501" border="0" align="center">
    <tr>
      <td><span class="style1">Enter Your Password to Get General Key:-</span></td>
      <td><label>
        <input type="password" name="t1">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        <input type="submit" name="Submit" value="Submit">
      </label></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>


<%


	try 
{
	
		
		
		
		String uname=(String)application.getAttribute("uname");
	
		String field= request.getParameter("t1");	
		
		if(field.equalsIgnoreCase(""))
		{
			
		}
		else
		{
		 Statement stmt=connection.createStatement();
		    String strQuery = "select sk1 from user where uname='"+uname+"' and password='"+field+"' ";
		    ResultSet rs = stmt.executeQuery(strQuery);
		    if(rs.next()==true){
		    	
		    	String sk =rs.getString(1);
		    	 out.println("Your Secret Key is->"+sk);
		    }
		    else
		    {
		    
		    
		    out.println("Secret Key Mismatch....");
			  %><p><a href="request.jsp">Back</a></p>

			  </body>
			  </html>
			  <%
	          }
		}
		
		 }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
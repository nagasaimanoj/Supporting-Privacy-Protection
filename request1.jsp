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
.style2 {
	font-size: 24px;
	color: #FF00FF;
	font-family: "Courier New", Courier, monospace;
	font-weight: bold;
	font-style: italic;
}
.style4 {color: #0000FF; font-weight: bold; font-size: 18px; font-family: "Courier New", Courier, monospace; }
.style5 {font-size: 36px}
-->
</style>
</head>
<body>
<form name="form1" method="post" action="request1.jsp">
  <p align="center" class="style2"><span class="style5">Get General Key !!!</span> <br>
    <br>
    <img src="PassKey.gif" width="300" height="155"></p>
  <table width="511" border="0" align="center">
    <tr>
      <td width="273"><span class="style4">Enter Your Password :-</span></td>
      <td width="228"><label>
        <input type="password" name="t1">
      </label></td>
    </tr>
    <tr>
      <td><span class="style4">Enter Your General Key:-</span></td>
      <td><label>
        <input type="text" name="t2">
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
		String field1= request.getParameter("t2");
		
		if(field.isEmpty()||field1.isEmpty())
		{
			
		}
		else
		{
		 Statement stmt=connection.createStatement();
		    String strQuery = "select sk2 from user where uname='"+uname+"' and password='"+field+"' and sk1='"+field1+"' ";
		    ResultSet rs = stmt.executeQuery(strQuery);
		    if(rs.next()==true){
		    	
		    	String sk =rs.getString(1);
		    	 out.println("Your Personalized Key is->"+sk);
		    }
		    else
		    {
		    
		    
		    out.println("Secret Key Mismatch....");
			  %><p><a href="request1.jsp">Back</a></p>

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
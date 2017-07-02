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
.style7 {font-size: 18px; font-weight: bold; color: #0000FF; }
-->
</style>
</head>
<body>
<form name="form1" method="post" action="adminsearch.jsp">
  <table width="377" border="0">
    <tr>
      <td><span class="style7">Select the Field to Search </span></td>
      <td><label>
        <select name="s1">
        
        <option >--Select--</option>
												<option>Image Name</option>
												<option>Image Color</option>
												<option>Image Type</option>
												<option>Image Usage</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td><span class="style7">Enter the Keyword</span></td>
      <td><label>
        <input type="text" name="s2">
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><label>
        <input type="submit" name="Submit" value="Search">
      </label></td>
    </tr>
  </table>
  <br>
  <br>
  <br>
</form>
</body>
</html>


<table width="606" height="165" border="0" align="center">
     <tr>
       <td>
         <div align="left">
  <%


	try 
{
	
		
		
		
	
		String field= request.getParameter("s1");	
		String keyword= request.getParameter("s2");	
		

		if(field.equalsIgnoreCase("Image Name"))
		{
			 Statement stmt=connection.createStatement();
			    String strQuery = "select id from images where iname LIKE '%"+keyword+"%' ";
			    ResultSet rs = stmt.executeQuery(strQuery);
			    while(rs.next()){
				   %>
  <input  name="image" type="image" src="images.jsp?imgid=<%=rs.getInt(1)%>" width="100" height="100" alt="Submit">
  <%
				
			    }
			   
		}
		
		if(field.equalsIgnoreCase("Image Color"))
		{
			Statement stmt=connection.createStatement();
		    String strQuery = "select id from images where icolor LIKE '%"+keyword+"%' ";
		    ResultSet rs = stmt.executeQuery(strQuery);
		    while(rs.next()){
			   %>
        <input  name="image" type="image" src="images.jsp?imgid=<%=rs.getInt(1)%>" width="100" height="100" alt="Submit">
      <%
			
		    }
		}
		
		if(field.equalsIgnoreCase("Image Type"))
		{
			Statement stmt=connection.createStatement();
		    String strQuery = "select id from images where itype LIKE '%"+keyword+"%' ";
		    ResultSet rs = stmt.executeQuery(strQuery);
		    while(rs.next()){
			   %>
        <input  name="image" type="image" src="images.jsp?imgid=<%=rs.getInt(1)%>" width="100" height="100" alt="Submit">
      <%
			
		    }
		}
		
		if(field.equalsIgnoreCase("Image Usage"))
		{
			Statement stmt=connection.createStatement();
		    String strQuery = "select id from images where uses LIKE '%"+keyword+"%' ";
		    ResultSet rs = stmt.executeQuery(strQuery);
		    while(rs.next()){
			   %>
        <input  name="image" type="image" src="images.jsp?imgid=<%=rs.getInt(1)%>" width="100" height="100" alt="Submit">
      <%
			
		    }
		}
		
		
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
 </div></td>
     </tr>
   </table>

<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
.style8 {
	color: #0000FF;
	font-size: 24px;
}
.style11 {font-size: 36px}
body {
	background-color: #57614e;
}
-->
</style>
</head>
<body>

<p align="center" class="style8"><span class="style11"><strong>Re-Ranked Images..........</strong>.</span></p>
<table width="641" height="165" border="0" align="center">
     <tr>
       <td width="699">
         <div align="left">
  <%


	try 
{
	
		
		
	
		int id =  Integer.parseInt(request.getParameter("imgid"));
		
		String ss3=(String)session.getAttribute("s3");
		
		 String s1="",s2="";

		Statement stmt1=connection.createStatement();
	    String strQuery1 = "select iname,icolor from images where id="+id+" ";
	    ResultSet rs1 = stmt1.executeQuery(strQuery1);
	    if(rs1.next()==true)
	    {
	    	s1=rs1.getString(1);
	    	s2=rs1.getString(2);
		
			 Statement stmt=connection.createStatement();
			    String strQuery = "select id,count from images where iname='"+s1+"' and icolor='"+s2+"' ";
			    ResultSet rs = stmt.executeQuery(strQuery);
			    while(rs.next()){
			    	
			    	int i=rs.getInt(1);
			    	int c=rs.getInt(2);
			    
			    
			    	c=c+1;
			    	 Statement st3 = connection.createStatement();
					   String query3 ="update images set count="+c+" where id="+i+"";
					   st3.executeUpdate (query3); 
				   %>
  
  <a href="search3.jsp?imgid=<%=rs.getInt(1)%>"><input  name="image" type="image" src="images.jsp?imgid=<%=rs.getInt(1)%>" width="100" height="100" alt="Submit"></a>&nbsp; <blink>View</blink>
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
</body>
</html>
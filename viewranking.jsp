
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<html>
<head>
<title>face image</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
.style1 {
	font-size: 24px;
	font-weight: bold;
	color: #FF0000;
}
.style2 {color: #FFFF00}
.style3 {color: #FF0000}
.style4 {color: #000000}
-->
</style></head>
<body>
 <p>&nbsp;</p>
 <p>&nbsp;</p>
 <div align="center">
   <p class="style1">Searched Image Ranking !!!  </p>
   <p class="style3">&nbsp;</p>
   <table width="625" height="165" border="0" align="center">
     <tr>
       <td>
         <div align="left" class="style2">
           <%
	
  try{      
   
    Statement stmt=connection.createStatement();
    String strQuery = "select id,count from images ORDER BY Rand()";
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
    	
	
	
       %>
           
           
           <input  name="image" type="image" src="images.jsp?imgid=<%=rs.getInt(1)%>" width="100" height="100" alt="Submit">
           <span class="style4"><%=rs.getInt(2)%>
           
           <%
	
    }
    rs.close();
    connection.close();
    stmt.close();
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  %>
           </span> </div></td>
     </tr>
   </table>
   <p>&nbsp;</p>
   <p align="center">&nbsp;</p>
 </div>
</body>
</html>

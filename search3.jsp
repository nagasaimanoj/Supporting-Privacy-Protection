
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
.style3 {font-size: 24px}
.style4 {
	color: #0000FF;
	font-size: 24px;
	font-weight: bold;
}
.style8 {
	font-size: 36px;
	font-weight: bold;
	color: #FFFFFF;
}
.style9 {color: #0000FF}
.style11 {font-size: 24px; color: #FF00FF; }
.style12 {color: #FF00FF}
-->
</style></head>
<body>


  <div align="center"><span class="style8">Image Details............</span> 
    <div id="page_content_right">
  </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
<table width="459" border="0" align="center">
          <tr>
            <td colspan="2"><div align="center">
              <div align="center">
                <%
	  int id =  Integer.parseInt(request.getParameter("imgid"));
	String s1=null,s2=null,s3=null,s4=null,s5=null,s6=null,s7=null,s8=null;
	int c=0;
  try{      
  
    Statement stmt=connection.createStatement();
String strQuery = "select id,iname,icolor,idescription,itype,uses,count from images where id="+id+" " ;
    ResultSet rs = stmt.executeQuery(strQuery);
    if(rs.next()){
	s1=rs.getString(2);
	s2=rs.getString(3);
	s3=rs.getString(4);
	s4=rs.getString(5);
	s5=rs.getString(6);
	c=rs.getInt(7);
	
	c=c+1;
	 Statement st3 = connection.createStatement();
	   String query3 ="update images set count="+c+" where id="+id+"";
	   st3.executeUpdate (query3);
	
       %>
                <input name="image" type="image" src="images.jsp?imgid=<%=rs.getInt(1)%>" alt="Submit" width="100" height="100">
                
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
              </div></td>
          </tr>
      <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
          <tr>
            <td width="225"><span class="style3 style9"><strong>Image Name :</strong></span></td>
            <td width="224"><span class="style11"><%=s1%></span></td>
          </tr>
          <tr>
            <td><span class="style3 style9"><strong>Image Color :</strong></span></td>
            <td><span class="style11"><%=s2%></span></td>
          </tr>
          <tr>
            <td><span class="style3 style9"><strong>Image Description :</strong></span></td>
            <td><span class="style11"><%=s3%></span></td>
          </tr>
          <tr>
            <td><span class="style3 style9"><strong>Image Type :</strong></span></td>
            <td><span class="style11"><%=s4%></span></td>
          </tr>
          <tr>
            <td><span class="style9 style3"><strong>Uses:</strong></span></td>
            <td><span class="style11"><%=s5%></span></td>
          </tr>
          <tr>
            <td><span class="style4">Search Count:</span></td>
            <td><span class="style12"><%=c%></span></td>
          </tr>
</table>
</html>

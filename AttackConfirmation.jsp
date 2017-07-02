<%@ page import="java.sql.*" %>
<%@ page import = "java.text.*"%>
<%@ include file="connect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	font-weight: bold;
	font-style: italic;
	color: #FF0000;
}
body,td,th {
	color: #FFFFFF;
}
body {
	background-color: #FFFFFF;
}
.style6 {color: #FF0000; font-weight: bold; font-style: italic; }
.style7 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<p align="center" class="style1">User Attack Confirmation  </p>
<form id="form1" name="form1" method="post" action="AttackConfirmed.jsp">
  <div align="center">
    <table width="374" height="528" border="0">
      <tr>
	  
	<%  
	   int uid=0,age=0,pin=0;
String uname=null,url=null,domain=null,desc=null,uses=null,title=null,dob=null,add=null,gen=null;
	
	
	String d1, d2;
	
	

	String pname=request.getParameter("pname");
	String aname=request.getParameter("s1");

	
	  try {
           

           String query="select * from images  where url='"+pname+"'"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	

	   if(rs.next()==true)
		{
 uid=rs.getInt(1);
 url=rs.getString(2);
domain=rs.getString(3);
title=rs.getString(4);
desc=rs.getString(5);
uses=rs.getString(6);



		}
   

	String pid1=String.valueOf(uid);  
	  %>
	  
	 <td><span class="style6">Content Id </span></td>
        <td><label>
          <input type="text" name="s1"  value="<%=pid1%>" readonly>
		  
        </label></td>
<%
}
catch(Exception ex){out.println(ex);}
%>
      </tr>
	  
	  
      <tr>
        <td><span class="style6">URL</span></td>
        <td><label>
          <input type="text" name="s2" value="<%=url%>" />
        </label></td>
      </tr>
      
      <tr>
        <td><span class="style6">Domain</span></td>
        <td><label>
          <input type="text" name="s4" value="<%=domain%>" />
        </label></td>
      </tr>
      <tr>
        <td><span class="style6">Title</span></td>
        <td><label>
          <input type="text" name="s5"  value="<%=title%>"/>
        </label></td>
      </tr>
      <tr>
        <td><span class="style6">Description</span></td>
        <td><label>
          <input type="text" name="s6" value="<%=desc%>" />
        </label></td>
      </tr>
      <tr>
        <td><span class="style6">Uses</span></td>
        <td><label>
          <input type="text" name="s7"  value="<%=uses%>"/>
        </label></td>
      </tr>
      
      <tr>
        <td><span class="style7">Attacker Name </span></td>
        <td><label>
          <input type="text" name="aname" value="<%=aname%>" />
        </label></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Attack" />
        <input type="reset" name="Submit2" value="Reset" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>

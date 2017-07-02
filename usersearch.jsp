<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

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
<form name="form1" method="post" action="usersearch.jsp">
  <table width="377" border="0">
    <tr>
      <td><span class="style7">Select the Field to Search </span></td>
      <td><label>
        <select name="s1">
        
        <option >--Select--</option>
												<option>URL</option>
												<option>Domain</option>
												<option>Title</option>
												<option>Usage</option>
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



<table width="1092" border="1">
  <tr>
    <td width="179"><div align="center"><span class="style3">RELATED IMAGE </span></div></td>
    <td width="175"><div align="center"><span class="style3">URL </span></div></td>
    <td width="134"><div align="center"><span class="style3">DOMAIN</span></div></td>
    <td width="98"><div align="center"><span class="style3">TITLE</span></div></td>
    <td width="173"><div align="center"><span class="style3">DESCRIPTION</span></div></td>
    <td width="219"><div align="center"><span class="style3">USES</span></div></td>
    <td width="68"><div align="center"><span class="style3">RANKS </span></div></td>
  </tr>
  <%


	try 
{
	
		
		SimpleDateFormat sdfDate = new SimpleDateFormat(
				"dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat(
				"HH:mm:ss");

		Date now = new Date();

		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
		String uname=(String)application.getAttribute("uname");
	
		String field= request.getParameter("s1");	
		String keyword= request.getParameter("s2");	
		
		if(!keyword.equalsIgnoreCase(""))
		{
			Statement st3 = connection.createStatement();
			   String query3 ="insert into search values('"+uname+"','"+field+"','"+keyword+"','"+dt+"')";
			   st3.executeUpdate (query3); 
			   
			   
			   
		}
		 

		if(field.equalsIgnoreCase("URL"))
		{
			 Statement stmt=connection.createStatement();
			    String strQuery = "select * from images where url LIKE '%"+keyword+"%' ORDER BY Rand() ";
			    ResultSet rs = stmt.executeQuery(strQuery);
			    while(rs.next()){
			    	
			    	int i=rs.getInt(1);
					String s2=rs.getString(2);
					String s3=rs.getString(3);
					String s4=rs.getString(4);
					String s5=rs.getString(5);
					String s6=rs.getString(6);
					
					int j=rs.getInt(8);
			   
			
			    
			    	j=j+1;
			    	 Statement st3 = connection.createStatement();
					   String query3 ="update images set count="+j+" where id="+i+"";
					   st3.executeUpdate (query3); 
				   %>
  
  <tr>
    <td><div align="center">
      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    </</div></td>
    <td><div align="center"><%=s2%></div></td>
    <td><div align="center"><%=s3%></div></td>
    <td><div align="center"><%=s4%></div></td>
    <td><div align="center"><%=s5%></div></td>
    <td><div align="center"><%=s6%></div></td>
    <td><div align="center"><%=j%></div></td>
  </tr>
  <%
				
			    }
			    
		}
		
		if(field.equalsIgnoreCase("Domain"))
		{
			 Statement stmt=connection.createStatement();
			    String strQuery = "select * from images where domain LIKE '%"+keyword+"%' ORDER BY Rand() ";
			    ResultSet rs = stmt.executeQuery(strQuery);
			    while(rs.next()){
			    	
			    	int i=rs.getInt(1);
					String s2=rs.getString(2);
					String s3=rs.getString(3);
					String s4=rs.getString(4);
					String s5=rs.getString(5);
					String s6=rs.getString(6);
					
					int j=rs.getInt(8);
			   
			
			    
			    	j=j+1;
			    	 Statement st3 = connection.createStatement();
					   String query3 ="update images set count="+j+" where id="+i+"";
					   st3.executeUpdate (query3); 
			   %>
<tr>
    <td><div align="center">
      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    </</div></td>
    <td><div align="center"><%=s2%></div></td>
    <td><div align="center"><%=s3%></div></td>
    <td><div align="center"><%=s4%></div></td>
    <td><div align="center"><%=s5%></div></td>
    <td><div align="center"><%=s6%></div></td>
    <td><div align="center"><%=j%></div></td>
  </tr>      <%
			
		    }
		   
		}
		
		if(field.equalsIgnoreCase("Title"))
		{
			 Statement stmt=connection.createStatement();
			    String strQuery = "select * from images where title LIKE '%"+keyword+"%' ORDER BY Rand() ";
			    ResultSet rs = stmt.executeQuery(strQuery);
			    while(rs.next()){
			    	
			    	int i=rs.getInt(1);
					String s2=rs.getString(2);
					String s3=rs.getString(3);
					String s4=rs.getString(4);
					String s5=rs.getString(5);
					String s6=rs.getString(6);
					
					int j=rs.getInt(8);
			   
			
			    
			    	j=j+1;
			    	 Statement st3 = connection.createStatement();
					   String query3 ="update images set count="+j+" where id="+i+"";
					   st3.executeUpdate (query3); 
			   %>
<tr>
    <td><div align="center">
      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    </</div></td>
    <td><div align="center"><%=s2%></div></td>
    <td><div align="center"><%=s3%></div></td>
    <td><div align="center"><%=s4%></div></td>
    <td><div align="center"><%=s5%></div></td>
    <td><div align="center"><%=s6%></div></td>
    <td><div align="center"><%=j%></div></td>
  </tr>      <%
			
		    }
		   
		}
		
		if(field.equalsIgnoreCase("Usage"))
		{
			 Statement stmt=connection.createStatement();
			    String strQuery = "select * from images where uses LIKE '%"+keyword+"%' ORDER BY Rand() ";
			    ResultSet rs = stmt.executeQuery(strQuery);
			    while(rs.next()){
			    	
			    	int i=rs.getInt(1);
					String s2=rs.getString(2);
					String s3=rs.getString(3);
					String s4=rs.getString(4);
					String s5=rs.getString(5);
					String s6=rs.getString(6);
					
					int j=rs.getInt(8);
			   
			
			    
			    	j=j+1;
			    	 Statement st3 = connection.createStatement();
					   String query3 ="update images set count="+j+" where id="+i+"";
					   st3.executeUpdate (query3); 
			   %>
<tr>
    <td><div align="center">
      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    </</div></td>
    <td><div align="center"><%=s2%></div></td>
    <td><div align="center"><%=s3%></div></td>
    <td><div align="center"><%=s4%></div></td>
    <td><div align="center"><%=s5%></div></td>
    <td><div align="center"><%=s6%></div></td>
    <td><div align="center"><%=j%></div></td>
  </tr>      <%
			
		    }
		   
		}
		
		
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

</table>
</body>
</html>
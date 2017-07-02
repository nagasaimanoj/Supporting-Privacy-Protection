<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>

<html>
</html>

<html>
<body>
<p>&nbsp;</p>
<div align="center">
  <center>
  <h1><font color="#800000" size="4"><i><u>ATTACKED CONTENT DETAILS </u></i></font></h1>
  <table width="950" border="1" cellspacing="1" bordercolor="#111111" style="border-collapse: collapse">
<tr>
  <td width="40" bgcolor="#FF0066" align="center"><font color="#FFFFFF"><i><b>Id</b></i></font></td>
  <td width="83" bgcolor="#FF0066" align="center"><font color="#FFFFFF"><i><b>URL</b></i></font></td>
   <td width="110" bgcolor="#FF0066" align="center"><font color="#FFFFFF"><i><b>Domain</b></i></font></td>
  <td width="51" bgcolor="#FF0066" align="center"><font color="#FFFFFF"><i><b>Title</b></i></font></td>
  <td width="70" bgcolor="#FF0066" align="center"><font color="#FFFFFF"><i><b>Description</b></i></font></td>
  <td width="79" bgcolor="#FF0066" align="center"><font color="#FFFFFF"><i><b>Uses</b></i></font></td>
  
</tr>
  

<%
	
     int pid=Integer.parseInt(request.getParameter("pid"));
	String  s1,s2,s3,s4,s5,s6,s7,s8,s9,s11,s12,s13;
     int s10;
           
           Statement st=connection.createStatement();
           
           String query="SELECT *  FROM  images where  id="+pid+" "; 
           ResultSet rs=st.executeQuery(query);
if( rs.next()==true)
	   {
s1=rs.getString(1);
s2=rs.getString(2);
s3=rs.getString(3);
s4=rs.getString(4);
s5=rs.getString(5);
s6=rs.getString(6);



%>
<td width="40" align="center">  <%=s1%></td> 
<td width="83" align="center">  <%=s2%></td> 
<td width="83" align="center">  <%=s3%></td> 
<td width="51" align="center">  <%=s4%></td> 
<td width="70" align="center">  <%=s5%></td> 
<td width="79" align="center">  <%=s6%></td> 


</tr>

<%	   }

          
          
%>
</table>
  </center>
</div>
</body>
</html>

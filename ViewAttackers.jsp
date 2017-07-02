<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<html>
</html>

<html>
<body>
<p align="left">&nbsp;</p>
<div align="center">
  <center>
  <h1><u><i><font color="#FF0000" size="6">THREAT DETAILS LIST </font></i></u><br>
    <br>
    <img src="WebAttacker.jpg" width="379" height="133"></h1>
  <table width="383" border="1" cellspacing="1" bordercolor="#111111" style="border-collapse: collapse">
<tr>
  <td width="78" bgcolor="#666666" align="center"><font color="#FFFFFF"><i><b>Attacker Name</b></i></font></td>
  <td width="180" bgcolor="#666666" align="center"><font color="#FFFFFF"><i><b>Attacked Content URL</b></i></font></td>
  <td width="180" bgcolor="#666666" align="center"><font color="#FFFFFF"><i><b>Attacked Content ID</b></i></font></td>
</tr>
  

<%
	
     	
	String  s1,s2,s3,s4,s5,s6,s8,s7,s10,s11,s12;
	int s9;
          
           Statement st=connection.createStatement();
           
           String query="SELECT *  FROM Attackers  "; 
           ResultSet rs=st.executeQuery(query);
while ( rs.next()==true)
	   {


s3=rs.getString(1);
s4=rs.getString(2);
s5=rs.getString(3);

%>
 
<td width="78" align="center" > <b><font color="#FF0000"><% out.println(s3); %></font></b> </td>
<td width="193" align="center"> <b><font color="#0000FF"><% out.println(s4); %></font></b></td>
<td width="180" align="center"><b><font color="#00FF00"><a href="AttackedContent.jsp?pid=<%=s5%>"> <% out.println(s5);%></font></b> </a></td>

</tr>

<%	   }

          
          
%>
</table>
  <p><strong><em>The Attacker Details Table</em></strong> </p>
  </center>
</div>
</body>
</html>

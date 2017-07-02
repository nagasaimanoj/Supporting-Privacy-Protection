<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	color: #FF00FF;
	font-family: "Courier New", Courier, monospace;
}
-->
</style>

<body bgcolor=#FFFFFF >
<p align="center" class="style1"><strong>WEB USERS !!!</strong><br>
<img src="WebUsers.jpg" width="262" height="151"></p>
<table width="1090" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
 <td align="justify" bgcolor="#00FF00" width="72" valign="baseline" height="0"><div align="center"><b>UID</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="101" valign="baseline" height="0"><div align="center"><b>Username</b></div></td>
 
  <td align="justify" bgcolor="#00FF00" width="74" valign="baseline" height="0"><div align="center"><b>E-Mail</b></div></td>
   <td align="justify" bgcolor="#00FF00" width="86" valign="baseline" height="0"><div align="center"><b>Mobile</b></div></td>
   <td align="justify" bgcolor="#00FF00" width="94" valign="baseline" height="0"><div align="center"><b>Location</b></div></td>
   <td align="justify" bgcolor="#00FF00" width="76" valign="baseline" height="0"><div align="center"><b>DOB</b></div></td>
  
   <td align="justify" bgcolor="#00FF00" width="129" valign="baseline" height="0"><div align="center"><b>Address</b></div></td>
   <td align="justify" bgcolor="#00FF00" width="50" valign="baseline" height="0"><div align="center"><b>Gender</b></div></td>
   <td align="justify" bgcolor="#00FF00" width="99" valign="baseline" height="0"><div align="center"><b>Pincode</b></div></td>
   <td align="justify" bgcolor="#00FF00" width="99" valign="baseline" height="0"><div align="center"><b>General Key</b></div></td>
   <td align="justify" bgcolor="#00FF00" width="99" valign="baseline" height="0"><div align="center"><b>Personalized Key</b></div></td>

  </tr>





<%
 
      	
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;

      	try 
	{
           
           String query="select * from user"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		s8=rs.getString(8);
		s9=rs.getString(9);
		s10=rs.getString(10);
		s11=rs.getString(11);
		s12=rs.getString(12);
		
		
		
%>

<tr>
	<td align="center" bgcolor="#FFFFFF" width="72" valign="baseline" height="0"><%out.println(s1);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="101" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
	
	<td align="center" bgcolor="#FFFFFF" width="82" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="94" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="74" valign="baseline" height="0"><%out.println(s6);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="86" valign="baseline" height="0"><%out.println(s7);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="94" valign="baseline" height="0"><%out.println(s8);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="76" valign="baseline" height="0"><%out.println(s9);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="70" valign="baseline" height="0"><%out.println(s10);%>&nbsp;</td>
	
	<%
	if(s11.equalsIgnoreCase("Rejected"))
	{
	
	%>
	
	<td align="center" bgcolor="#FFFFFF" width="120" valign="baseline" height="0"><a href="generatekeyconfirm.jsp?mid=<%=s1%>"> Generate key &nbsp;</a></td>
	<%
	}
	else
	{
	%>
		<td align="center" bgcolor="#FFFFFF" width="120" valign="baseline" height="0"><%out.println(s11);%>&nbsp;</td>
	<%
	}
    %>
    
    <%
	if(s12.equalsIgnoreCase("Rejected"))
	{
	
	%>
	
	<td align="center" bgcolor="#FFFFFF" width="120" valign="baseline" height="0"><a href="generatepkeyconfirm.jsp?mid=<%=s1%>"> Generate key &nbsp;</a></td>
	<%
	}
	else
	{
	%>
		<td align="center" bgcolor="#FFFFFF" width="120" valign="baseline" height="0"><%out.println(s12);%>&nbsp;</td>
	<%
	}
    %>
	
	
    
</tr>


<%

	   }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>

<tr>
	<td align="justify" bgcolor="#00FF00" width="72" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="101" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="82" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="94" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="74" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="86" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="94" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="76" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="70" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="70" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="70" valign="baseline" height="0">&nbsp;</td>
  
</tr>


</table>
</form>
</body>
</html>
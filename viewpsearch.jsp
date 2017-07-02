<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style1 {font-size: 24px}
.style2 {
	font-size: 24px;
	color: #FF00FF;
	font-weight: bold;
	font-style: italic;
	font-family: "Courier New", Courier, monospace;
}
-->
</style>

<body bgcolor=#FFFFFF >
<p align="center" class="style2">View All Personalized Web Search !!! </p>
<p align="center" class="style1"><img src="PSearch.jpg" width="259" height="104"></p>
<table width="1090" border=0 align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
<tr>
 <td align="justify" bgcolor="#00FF00" width="106" valign="baseline" height="0"><div align="center"><b>User Name</b></div></td>
  <td align="justify" bgcolor="#00FF00" width="149" valign="baseline" height="0"><div align="center"><b>Keyword Used</b></div></td>
   <td align="justify" bgcolor="#00FF00" width="139" valign="baseline" height="0"><div align="center"><b>Date & Time</b></div></td>
   <td align="justify" bgcolor="#00FF00" width="139" valign="baseline" height="0"><div align="center"><b>Using Greedy DP</b></div></td>
   <td align="justify" bgcolor="#00FF00" width="139" valign="baseline" height="0"><div align="center"><b>Using Greedy IL</b></div></td>
   
  
 
  

  </tr>





<%
 
	
	String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;

      	try 
	{
      		
      		
           
           String query="select * from search1  "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	   while ( rs.next() )
	   {
		
		s2=rs.getString(1);
		s3=rs.getString(2);
		s4=rs.getString(3);
		s5=rs.getString(4);
		s6=rs.getString(5);
	
		
		
		
%>

<tr>
	
	<td align="center" bgcolor="#FFFFFF" width="149" valign="baseline" height="0"><%out.println(s2);%>&nbsp;</td>
	
	<td align="center" bgcolor="#FFFFFF" width="121" valign="baseline" height="0"><%out.println(s3);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="139" valign="baseline" height="0"><%out.println(s4);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="139" valign="baseline" height="0"><%out.println(s5);%>&nbsp;</td>
	<td align="center" bgcolor="#FFFFFF" width="139" valign="baseline" height="0"><%out.println(s6);%>&nbsp;</td>
    
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
	<td align="justify" bgcolor="#00FF00" width="106" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="149" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="121" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="121" valign="baseline" height="0">&nbsp;</td>
	<td align="justify" bgcolor="#00FF00" width="121" valign="baseline" height="0">&nbsp;</td>
   
</tr>


</table>

</body>
</html>
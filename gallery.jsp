<%@ include file="connect.jsp" %>

<html>
<style type="text/css">
<!--
.style8 {font-size: 18px; font-weight: bold;}
.style10 {font-family: "Courier New", Courier, monospace; color: #FF00FF; }
.style11 {
	font-size: 24px;
	color: #FF00FF;
}
-->
</style>

<body bgcolor=#FFFFFF >
<p>&nbsp;</p>
<p align="center" class="style11">View All Content Details !!! </p>
<p align="center" class="style11"><img src="contents.jpg" width="259" height="119"></p>
<table width="1092" border="2" align="center">
  <tr>
    <td width="179"><div align="center" class="style10"><span class="style8">RELATED IMAGE </span></div></td>
    <td width="175"><div align="center" class="style10"><span class="style8">URL </span></div></td>
    <td width="134"><div align="center" class="style10"><span class="style8">DOMAIN</span></div></td>
    <td width="98"><div align="center" class="style10"><span class="style8">TITLE</span></div></td>
    <td width="173"><div align="center" class="style10"><span class="style8">DESCRIPTION</span></div></td>
    <td width="219"><div align="center" class="style10"><span class="style8">USES</span></div></td>
    <td width="68"><div align="center" class="style10"><span class="style8">RANKS </span></div></td>
  </tr>

<%

      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0;

      	try 
	{
        
           String query="select * from images "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		
		j=rs.getInt(8);
	
%>


  <tr>
    <td><div align="center">
      <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
    </div></td>
    <td><div align="center"><%=s2%></div></td>
    <td><div align="center"><%=s3%></div></td>
    <td><div align="center"><%=s4%></div></td>
    <td><div align="center"><%=s5%></div></td>
    <td><div align="center"><%=s6%></div></td>
    <td><div align="center"><%=j%></div></td>
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
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
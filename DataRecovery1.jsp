<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>


<%

String pid=request.getParameter("pid");
int pid1=Integer.parseInt(pid);
String  s1,s2="",s3="",s4="",s5="",s6="",s7="",s8="",s10="",s11="",s22="";
int s9=0,s12=0;

try
{


	     
           Statement st=connection.createStatement();
           
           String query="SELECT *  FROM backup where id="+pid1+"  "; 
           ResultSet rs=st.executeQuery(query);

       if(rs.next()==true)
	{
s1=rs.getString(1);
s2=rs.getString(2);
s3=rs.getString(3);
s4=rs.getString(4);
s5=rs.getString(5);
s6=rs.getString(6);



	}


Statement st1=connection.createStatement();

st1.executeUpdate("update images set url='"+s2 +"',domain='"+s3 +"',title='"+s4 +"',description='"+ s5+"',uses='"+s6+"' where id="+pid1+"");


Statement st2=connection.createStatement();

st2.executeUpdate("delete from Attackers where id='"+pid+"'");


out.println("Content Details Recoverd Successfully");

}
catch(Exception ex)
{
out.println(ex);
}





%>




</body>
</html>

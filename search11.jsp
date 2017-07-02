<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
    
        String sk=request.getParameter("t1");      

       
        String uname=(String)application.getAttribute("uname");

	    
try
{
	   String sql="SELECT * FROM user where uname='"+uname+"' and sk2='"+sk+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    response.sendRedirect("usersearch1.jsp");
           }
	    else
	    {
	    
	    
	    out.println("Secret Key Mismatch....");
		  %><p><a href="searchp.html">Back</a></p>

		  </body>
		  </html>
		  <%
          }
}

catch(Exception e)
{out.print(e);}
%>


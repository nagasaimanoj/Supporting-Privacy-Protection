<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>

<%
    
        String sk=request.getParameter("t1");      

       
        String uname=(String)application.getAttribute("uname");

	    
try
{
	   String sql="SELECT * FROM user where uname='"+uname+"' and sk1='"+sk+"'";
        Statement stmt = connection.createStatement();
	    ResultSet rs =stmt.executeQuery(sql);
		String utype="";
	   if(rs.next())
	    {
	    response.sendRedirect("usersearch.jsp");
           }
	    else
	    {
	    
	    
	    out.println("Secret Key Mismatch....");
		  %><p><a href="search.html">Back</a></p>

		  </body>
		  </html>
		  <%
          }
}

catch(Exception e)
{out.print(e);}
%>


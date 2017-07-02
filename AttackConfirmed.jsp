<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<html><style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
-->
</style>
<body>
<center>&nbsp;</center>
<br><br><br>
  <%
  
		   String v122 = request.getParameter("s1");
           String v3 = request.getParameter("s2");
           String v4 = request.getParameter("s4");
           String v5 = request.getParameter("s5");
           String v6 = request.getParameter("s6");
           String v7 = request.getParameter("s7");
          
		    String aname = request.getParameter("aname");
  
  
   try {
     
    
	
	
   String query111="insert into Attackers values ( '" + aname + "', '" + v3 + "', '" + v122 + "')";
      Statement st11 = connection.createStatement();
	   st11.executeUpdate (query111);
	
	
     
          
		   Statement st1 = connection.createStatement();
           int i;

           
		
	
		int v1=Integer.parseInt(v122);

       String query1 ="UPDATE images SET  url = '" + v3 + "' WHERE id=" + v1;
	   st1.executeUpdate (query1);
	   String query2 ="UPDATE images SET domain = '" + v4 + "' WHERE  id=" + v1;
	   st1.executeUpdate (query2);
	   String query3 ="UPDATE images SET title = '" + v5 + "' WHERE id=" + v1;
	   st1.executeUpdate (query3);
	   String query4 ="UPDATE images SET description = '" + v6 + "' WHERE id=" + v1;
	   st1.executeUpdate (query4);
	   String query5 ="UPDATE images SET uses = '" + v7 + "' WHERE id=" + v1;
	   st1.executeUpdate (query5);
	  
	   
           
	   connection.close();




	       
          
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());

          }
		  
		  out.println("The Specified Content Attacked");
		  
		  
%>



</body></html>
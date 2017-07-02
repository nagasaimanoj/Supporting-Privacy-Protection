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
<form name="form1" method="post" action="usersearch1.jsp">
  <table width="377" border="0">
    
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
	
		long Stime=System.currentTimeMillis();
		SimpleDateFormat sdfDate = new SimpleDateFormat(
				"dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat(
				"HH:mm:ss");

		Date now = new Date();

		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt = strDate + "   " + strTime;
		
		String uname=(String)application.getAttribute("uname");
	
		
		String keyword= request.getParameter("s2");	
		
		if(keyword.equalsIgnoreCase(""))
		{
			
		}
		else
		{
			
			   
			   
			   String q2="select * from search1 where uname='"+uname+"' and keyword='"+keyword+"'"; 
		        Statement st8=connection.createStatement();
		        ResultSet rs8=st8.executeQuery(q2);
				if(rs8.next()==true)
			   {
		
					FileInputStream fin = new FileInputStream("C:/wsearch/"+keyword+".txt");
					byte[] b = new byte[fin.available()];
					fin.read(b);
					String st = new String(b);

		
			 Statement stmt=connection.createStatement();
			    String strQuery = "select * from temp where uname='"+uname+"' and keyword='"+keyword+"' ORDER BY count desc  ";
			    ResultSet rs = stmt.executeQuery(strQuery);
			    while(rs.next()){
			    	
			    	int i=rs.getInt(1);
					String s2=rs.getString(2);
					String s3=rs.getString(3);
					String s4=rs.getString(4);
					String s5=rs.getString(5);
					String s6=rs.getString(6);
					String s7=rs.getString(8);
					int j=rs.getInt(7);
			   
			
			    
			    	
				   %>
  
  <tr>
    <td><div align="center">
      <input  name="image" type="image" src="Gallery/<%=s7%>" width="100" height="100" alt="Submit">
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
			    
			    long endtime=System.currentTimeMillis();
				long tt=endtime-Stime;
				
				
				Statement st11=connection.createStatement(); 

				st11.executeUpdate("update search1 set dt='"+dt+"', gil='"+String.valueOf(tt)+"' where uname='"+uname+"' and keyword='"+keyword+"' ");
			    
			    
			    
			    
		
			   }
				else
				{
					
						
					
					Statement stmt1=connection.createStatement();
				    String strQuery1 = "select * from images where url LIKE '%"+keyword+"%'";
				    ResultSet rs1 = stmt1.executeQuery(strQuery1);
				    while(rs1.next()){
				    	
				    	int i=rs1.getInt(1);
						String s2=rs1.getString(2);
						String s3=rs1.getString(3);
						String s4=rs1.getString(4);
						String s5=rs1.getString(5);
						String s6=rs1.getString(6);
						int j=rs1.getInt(8);
						String s7=rs1.getString(10);
						
						
						j=j+1;
				    	 Statement st31 = connection.createStatement();
						   String query31 ="update images set count="+j+" where id="+i+"";
						   st31.executeUpdate (query31); 
						   
						   
						   Statement st21 = connection.createStatement();
						   String query21 ="insert into temp values("+i+",'"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"',"+j+",'"+s7+"','"+uname+"','"+keyword+"')";
						   st21.executeUpdate (query21); 
						   
						
						
				    }
				    Statement stmt2=connection.createStatement();
				    String strQuery2 = "select * from images where domain LIKE '%"+keyword+"%'  ";
				    ResultSet rs2 = stmt2.executeQuery(strQuery2);
				    while(rs2.next()){
				    	
				    	int i=rs2.getInt(1);
						String s2=rs2.getString(2);
						String s3=rs2.getString(3);
						String s4=rs2.getString(4);
						String s5=rs2.getString(5);
						String s6=rs2.getString(6);
						int j=rs2.getInt(8);
						String s7=rs2.getString(10);
						
						
						
						   
						  
						    		
						    		j=j+1;
							    	 Statement st32 = connection.createStatement();
									   String query32 ="update images set count="+j+" where id="+i+"";
									   st32.executeUpdate (query32); 
									   
						   Statement st22 = connection.createStatement();
						   String query22 ="insert into temp values("+i+",'"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"',"+j+",'"+s7+"','"+uname+"','"+keyword+"')";
						   st22.executeUpdate (query22); 
						    
						
						
				    }
				    Statement stmt3=connection.createStatement();
				    String strQuery3 = "select * from images where title LIKE '%"+keyword+"%' ";
				    ResultSet rs3 = stmt3.executeQuery(strQuery3);
				    while(rs3.next()){
				    	
				    	int i=rs3.getInt(1);
						String s2=rs3.getString(2);
						String s3=rs3.getString(3);
						String s4=rs3.getString(4);
						String s5=rs3.getString(5);
						String s6=rs3.getString(6);
						int j=rs3.getInt(8);
						String s7=rs3.getString(10);
						
						
						
						   
						   
						  
						    		
						    		j=j+1;
							    	 Statement st33 = connection.createStatement();
									   String query33 ="update images set count="+j+" where id="+i+"";
									   st33.executeUpdate (query33); 
						   
						   Statement st23 = connection.createStatement();
						   String query23 ="insert into temp values("+i+",'"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"',"+j+",'"+s7+"','"+uname+"','"+keyword+"')";
						   st23.executeUpdate (query23); 
						    	
						
						
				    }
				    
				    Statement stmt4=connection.createStatement();
				    String strQuery4 = "select * from images where  uses LIKE '%"+keyword+"%' ";
				    ResultSet rs4 = stmt4.executeQuery(strQuery4);
				    while(rs4.next()){
				    	
				    	int i=rs4.getInt(1);
						String s2=rs4.getString(2);
						String s3=rs4.getString(3);
						String s4=rs4.getString(4);
						String s5=rs4.getString(5);
						String s6=rs4.getString(6);
						int j=rs4.getInt(8);
						String s7=rs4.getString(10);
						
						
						
						   
						
						    		
						    		j=j+1;
							    	 Statement st34 = connection.createStatement();
									   String query34 ="update images set count="+j+" where id="+i+"";
									   st34.executeUpdate (query34); 
									   
									   
						   Statement st24 = connection.createStatement();
						   String query24 ="insert into temp values("+i+",'"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"',"+j+",'"+s7+"','"+uname+"','"+keyword+"')";
						   st24.executeUpdate (query24); 
						    	
						
						
				    }
					
				    Vector data=new Vector();
					Statement stmt=connection.createStatement();
					    String strQuery = "select * from temp where uname='"+uname+"' and keyword='"+keyword+"' ORDER BY count desc ";
					    ResultSet rs = stmt.executeQuery(strQuery);
					    ResultSetMetaData rsm=rs.getMetaData();
		            	int col=rsm.getColumnCount();
		  	 while ( rs.next() )
		  	   {
		  		 Vector row = new Vector();
				  for(int i = 1; i <=col; i++){
				                   row.addElement(rs.getObject(i));

				             }

				data.addElement(row);
				 PrintStream p = new PrintStream(new FileOutputStream("C:/wsearch/"+keyword+".txt"));
				   p.print(data); 
		  	   }
					  
		  	 
		  	 
		  	 
		  	 
		  	Statement stmt12=connection.createStatement();
		  	 String strQuery12 = "select * from temp where uname='"+uname+"' and keyword='"+keyword+"' ORDER BY count desc ";
			    ResultSet rs12 = stmt12.executeQuery(strQuery12);		
		  	 	while(rs12.next()){
					    	
					    	
					    	int i=rs12.getInt(1);
							String s2=rs12.getString(2);
							String s3=rs12.getString(3);
							String s4=rs12.getString(4);
							String s5=rs12.getString(5);
							String s6=rs12.getString(6);
							String s7=rs12.getString(8);
							int j=rs12.getInt(7);
					   
					
					    
					    	
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
					    
					    long endtime=System.currentTimeMillis();
						long tt=endtime-Stime;
						
						Statement st12=connection.createStatement(); 

						st12.executeUpdate("insert into search1 (uname,keyword,dt,gdp) values ('"+uname+"','"+keyword+"','"+dt+"','"+String.valueOf(tt)+"')");    
					    
					    
					    
					    
					    
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
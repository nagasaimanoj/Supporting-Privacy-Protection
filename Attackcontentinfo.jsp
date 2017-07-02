<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Types of Leave</title>
</head>

<body>


<%

String aname=(String)application.getAttribute("uname");
%>

<p>&nbsp;</p>
<p align="center"><u><i><b><font size="6" color="#0000FF">Attack Content Details </font></b></i></u></p>
<form method="POST" action="AttackConfirmation.jsp">
  <div align="center">
    <center>
      <p>&nbsp;</p>
      <p><strong><em><font color="#0000FF">Enter Content URL to Attack -&gt; </font></em></strong> 
        <font color="#FF0000">
        <label>        </label>
        </font>
        <label>
         <input type="text" name="pname" >
        </label>
      AName 
      <label>
      <input type="text" name="s1" value="<%=aname%>" readonly>
      </label>
      </p>
      <p>&nbsp;</p>
      <p>
        <label>
         <input type="submit" name="Submit" value="Submit">
        </label>
        <label>
        <input type="reset" name="Submit2" value="Reset">
        </label>
      </p>
      <p>&nbsp;</p>
    </center>
  </div>
</form>

</body>

</html>
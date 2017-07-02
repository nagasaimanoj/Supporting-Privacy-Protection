<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Insert title here</title>
<style type="text/css">
<!--
body {
	background-color: #57614e;
}
.style8 {	color: #FF0000;
	font-weight: bold;
}
.style7 {
	font-size: 24px;
	color: #efeeee;
}
.style9 {color: #0000FF}
.style10 {color: #FFFF00}
.style11 {
	color: #efeeee;
	font-weight: bold;
}
.style12 {color: #efeeee}
-->
</style></head>
<body>


<div align="center">
  <p class="style8">&nbsp; <u><span class="style10"><span class="style12"><font size="5">New User Registration Details</font></span></span></u></p>
</div>
<form id="form1" name="form1" method="post" action="customerregster.jsp">
  <div align="center">
    <table width="431" height="610" border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" bgcolor="#57614e" style="border-collapse: collapse">
      <tr>
        <td height="23" colspan="2" bgcolor="#57614e"><img src="Register.jpg" width="505" height="100"></td>
      </tr>
      <tr>
        <td width="157" height="23" bgcolor="#57614e"><div align="left" class="style11"> User Name </div></td>
        <td width="173" height="23" bgcolor="#57614e"><label>
          <div align="left">
            <input type="text" name="cname" size="20" />
            </label>
        </div></td>
      </tr>
      <tr>
        <td height="23" bgcolor="#57614e"><div align="left" class="style11">Password</div></td>
        <td height="23" bgcolor="#57614e"><label>
          <div align="left">
            <input type="password" name="pass" size="20" />
            </label>
        </div></td>
      </tr>
      
      <tr>
        <td height="36" bgcolor="#57614e"><div align="left" class="style11">E-Mail</div></td>
        <td height="36" bgcolor="#57614e"><div align="left">
          <div align="left">
            <input type="text" name="T3" size="20">
          </div>
        </div></td>
      </tr>
      <tr>
        <td height="31" bgcolor="#57614e"><div align="left" class="style11">Mobile NO(10 Digits)</div></td>
        <td height="31" bgcolor="#57614e"><div align="left">
          <input type="text" name="T4" size="20">
        </div></td>
      </tr>
      <tr>
        <td height="33" bgcolor="#57614e"><div align="left" class="style11">Location</div></td>
        <td height="33" bgcolor="#57614e"><div align="left"><span class="style9"></span>
          <label></label>
          <input type="text" name="T5" size="20">
        </div></td>
      </tr>
      <tr>
        <td height="33" bgcolor="#57614e"><div align="left" class="style11">DOB(dd/mm/yyyy)</div></td>
        <td height="33" bgcolor="#57614e"><div align="left"><span class="style9"></span>
          <input type="text" name="T6" size="20">
        </div></td>
      </tr>
      
      <tr>
       <td height="45" bgcolor="#57614e"><div align="left" class="style11">Address</div></td>
        <td height="45" bgcolor="#57614e"><div align="left"><span class="style9"></span>
            <textarea name="T8" cols="20"></textarea>
        </div></td>
      </tr>
      <tr>
       <td height="38" bgcolor="#57614e"><div align="left" class="style11">Gender</div></td>
        <td height="38" bgcolor="#57614e"><div align="left"><span class="style9"></span>
          <select name="select5">
           
           <option>Male</option>
		    <option>Fe-Male</option>
          </select>
        </div></td>
      </tr>
	  <tr>
       <td height="39" bgcolor="#57614e"><div align="left" class="style11">Pin Code</div></td>
        <td height="39" bgcolor="#57614e"><div align="left"><span class="style9"></span>
          <input type="text" name="T9" size="20">
        </div></td>
      </tr>
      <tr bgcolor="#57614e">
        <td height="26" colspan="2"><span class="style9"><strong>
          <div align="center" class="style9">
            <p><strong>
              <input type="submit" name="Submit" value="Register" />
              <input type="reset" name="Submit2" value="Reset" />
            </strong></p>
          </div>
        <p align="center" class="style9"><a href="index.html" class="style7">Home</a></p></td>
      </tr>
    </table>
  </div>
  </form>

</body>
</html>
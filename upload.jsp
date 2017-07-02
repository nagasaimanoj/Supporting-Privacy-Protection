
<%@ page import="java.sql.*"%>
<html>
<head>
<title>face image</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />

<script language="javascript" type="text/javascript">



function valid()
{





var na3=document.s.name.value;
if(na3=="")

{
alert("Please Enter the URL");
document.s.name.focus();
return false;
}

var na7=document.s.domain.value;
if(na7=="")

{
alert("Please Enter the Domain");
document.s.domain.focus();
return false;
}

var na8=document.s.title.value;
if(na8=="")

{
alert("Please Enter the Title");
document.s.title.focus();
return false;
}

var na5=document.s.uses.value;
if(na5=="")

{
alert("Please Enter Uses");
document.s.uses.focus();
return false;
}


var na6=document.s.image.value;
if(na6=="")

{
alert("please Choose the Image");
document.s.image.focus();
return false;
}

}

</script>



<![endif]-->
<style>
article, aside, figure, footer, header, hgroup,
menu, nav, section { display: block; }
body {
	background-color: #FFFFFF;
}
.style1 {color: #FF0000}
body,td,th {
	color: #FF0000;
}
.style8 {color: #FF0000; font-family: "Courier New", Courier, monospace; font-weight: bold; }
</style>

<script>
function readURL(input) {
if (input.files && input.files[0]) {
var reader = new FileReader();

reader.onload = function (e) {
$('#img_prev')
.attr('src', e.target.result)
.width(150)
.height(200);
};

reader.readAsDataURL(input.files[0]);
}
}
</script>
</head>
<body>


	<form name="s" method="post" enctype="multipart/form-data" action="upload2.jsp" onSubmit="return valid()">
	
	<table height="351" align="center">
	<tr>
	  <td><div align="center" class="style1">
	    <p><font size="+3" style="Arial Black" >Add Contents... </font></p>
	    <p><img src="upload image.png" width="280" height="151"></p>
	    <p>&nbsp;</p>
	  </div></td>
	  </tr>
	<tr>
	<td><table>
	
	
	
	<tr>
	<td>
	  <span class="style8"><font size="+1">URL:* </font> </span></td>
	<td><input type="text" id="name" name="name" style="width:100%"></td>
	</tr>
	<tr>
	<td>
	  <span class="style8"><font size="+1">Domain :*</font> </span></td>
	<td><label>
	<input type="text" id="domain" name="domain" style="width:100%">
	</label></td>
	</tr>
	<tr>
	<td>
	  <span class="style8"><font size="+1">Title :*</font> </span></td>
	<td><label>
	<input type="text" id="title" name="title" style="width:100%">
	</label></td>
	</tr>
	
	<tr>
	<td><span class="style8"><font size="+1">Description :*</font> </span></td>
	<td><label>
	  <textarea id="desc" name="desc" style="width:100%"></textarea>
	</label></td>
	</tr>
	<tr>
	<td>
	  <span class="style8"><font size="+1">Uses :*</font> </span></td>
	<td><label>
	<textarea id="uses" name="uses" style="width:100%"></textarea>
	</label></td>
	</tr>
	
	<tr>
	<td>
	  <span class="style8"><font size="+1">Related Image:*</font> </span></td>
	<td>
	<input type="file" id="userImage" name="image" style="width:100%"  ></td>
	</tr>
	
	<tr>
	<td></td>
	<td><input type="submit" value="Upload" id="button1"><input type="reset" value="clear"></td>
				</tr>
	</table>	</td>
	</tr>
	</table>
	
	</form>
  

</html>

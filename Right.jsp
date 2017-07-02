
<html>
<head>
<xml:namespace ns="urn:schemas-microsoft-com:vml" prefix="v"/>
<style type="text/css">
v\:* { behavior: url(#default#VML); }
body, td, th {
	color: #0000FF;
}
body {
	background-color: #FFFFFF;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
<body>
<script type="text/javascript">



// Add as many messages as you like
var message=new Array("PCLBQ SYSTEM","Managing Mobile Details","Generating  Reports",", "Reports on SMS")

// Set the outline-color. Add as many colors as you like
var outlinecolor=new Array("black", "black")

// Set fillcolors 1. Add as many colors as you like
var fillcolor1=new Array("gray", "green", "white", "green")

// Set fillcolors 2. Add as many colors as you like
var fillcolor2=new Array("blue", "olive", "black", "lime")

// Set the letter marking the circle
var circlemark=new Array("-")

// Set the width of the outline
var strkweight=2

// Set the waiting time between the messages (seconds)
var pause=2

// Set the strength of the opacity (transparency of letters)
var strengthopacity="60%"

// Set the size of the circle (values range from 0.1 to 1)
var circlesize=0.5

// Always keep messages in view even if page is scrolled? (DD added option)
var keepinview="yes"

// Do not edit below this line

mytruebody=(!window.opera && document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body //Dynamicdrive added object

var outerwidth=mytruebody.clientWidth
var outerheight=mytruebody.clientHeight

var innerwidth=Math.floor(circlesize*outerwidth)
var innerheight=Math.floor(circlesize*outerheight)

var posleft=(outerwidth-innerwidth)/2
var postop=(outerheight-innerheight)/2

var path=new Array()
var i_message=0
var i_outlinecolor=0
var i_fillcolor1=0
var i_fillcolor2=0
var i_messagelength=0
var longestmessage=0
pause*=1000

var ie=document.getElementById&&document.all?1:0 

for (i=0;i<=message.length-1;i++) {
	if (message[i].length>longestmessage) {
		longestmessage=message[i].length
	}
	longestmessage+=4
}

for (i=0;i<=message.length-1;i++) {

	var emptyspace=""
	var i_emptyspace=(longestmessage-message[i].length)/2
	for (ii=0;ii<=i_emptyspace;ii++) {
		emptyspace+=circlemark
	}
	message[i]=emptyspace+" "+message[i]+" "+emptyspace
}

function changeform() {
	if (keepinview=="yes") //DD added
	document.getElementById("roofid").style.top=mytruebody.scrollTop //DD added
	if (i_outlinecolor >= outlinecolor.length) {i_outlinecolor=0}
	if (i_fillcolor1 >= fillcolor1.length) {i_fillcolor1=0}
	if (i_fillcolor2 >= fillcolor2.length) {i_fillcolor2=0}
	document.getElementById('strokeid').color=outlinecolor[i_outlinecolor]
	document.getElementById('fillid').color=fillcolor1[i_fillcolor1]
	document.getElementById('fillid').color2=fillcolor2[i_fillcolor2]
	if (i_message < message.length) {tick()}
	else {document.getElementById('textpathid').string=""
	document.getElementById("roofid").style.display="none" //DD added
	}
}

function tick() {
	if (i_messagelength <= message[i_message].length) {
		var messagestringend=""
		var messagestring=message[i_message].substring(0, i_messagelength)+messagestringend
		document.getElementById('textpathid').string=messagestring
		var timer=setTimeout("tick()",50)
		i_messagelength++
	}
	else {
		clearTimeout(timer)
		i_messagelength=0
		i_message++
		i_outlinecolor++	
		i_fillcolor1++	
		i_fillcolor2++	
		var timer=setTimeout("changeform()",pause)
	}
	
}

if (ie) {
	document.write('<div id="roofid" style="position:absolute;left:0px;top:0px;width:'+outerwidth+'px;height:'+outerheight+'px;overflow:hidden;">')
	document.write('<v:oval id="tc" style="position:absolute;top:'+postop+'px;left:'+posleft+'px;width:'+innerwidth+'px;height:'+innerheight+'px">')
	document.write('<v:shadow on="t" opacity="'+strengthopacity+'"/>')
	document.write('<v:stroke id="strokeid" weight="'+strkweight+'pt" color="blue"/>')
	document.write('<v:fill id="fillid" on="True" color="'+fillcolor1[0]+'" color2="'+fillcolor2[0]+'" opacity="'+strengthopacity+'" opacity2="'+strengthopacity+'" type="gradient"/>')
	document.write('<v:path textpathok="t"/>')
	document.write('<v:textpath id="textpathid" on="t" id="mytp" style="font-family:\'Arial Black\'; " fitpath="t" string=""/>')
	document.write('</v:oval></div>')
	if (window.attachEvent) //DD added code
	window.attachEvent("onload", changeform) //DD added code
	else
	window.onload=changeform
}
</script>
<h1 align="center"><img src="AdminPanel.jpg" width="320" height="59">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<font face="Monotype Corsiva"></font></h1>
<p align="center">Personalized web search (PWS) has demonstrated its effectiveness in improving the quality of various search services on<br>
  the Internet. However, evidences show that users&rsquo; reluctance to disclose their private information during search has become a major<br>
  barrier for the wide proliferation of PWS. We study privacy protection in PWS applications that model user preferences as hierarchical<br>
  user profiles. We propose a PWS framework called UPS that can adaptively generalize profiles by queries while respecting userspecified<br>
  privacy requirements. Our runtime generalization aims at striking a balance between two predictive metrics that evaluate the<br>
  utility of personalization and the privacy risk of exposing the generalized profile. We present two greedy algorithms, namely GreedyDP<br>
  and GreedyIL, for runtime generalization. We also provide an online prediction mechanism for deciding whether personalizing a query<br>
  is beneficial. Extensive experiments demonstrate the effectiveness of our framework. The experimental results also reveal that<br>
GreedyIL significantly outperforms GreedyDP in terms of efficiency.</p>
<p align="center"><img src="AdminBack.png" width="170" height="94"></p>
</body>
</html>
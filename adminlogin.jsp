<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-admin-login-uname")==null){
        response.sendRedirect("http://localhost:8081/Fdlab2/FDLAB2/home7.html");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
<title >Rhythm Travels</title>
<link rel="icon" type="image/x-icon" href="bird12344456.png" >
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="slides.css">
<link rel="stylesheet" href="slides1.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/
font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
 rel="stylesheet">
<link rel="stylesheet" href="home10.css">
<link rel="stylesheet" href="home8.css">
<link rel="stylesheet" href="mycsshome6.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
  * {box-sizing: border-box;}
  body, html {
    height: 50%;
  }
  
  .parallax {
  /* The image used */
  background-image: url('bu2.jpg');

  /* Full height */
  height:400px; 

  /* Create the parallax scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
  body {font-family: Verdana, sans-serif;}
  .mySlides {display: none;}
  img {vertical-align: middle;}
  body {
    font-family: "Lato", sans-serif;
    transition: background-color .5s;
  
  }
  /* Style the top navigation bar */
  .topnav {
    overflow: hidden;
    background-color:#E5AD18  ;
  }
  
  /* Style the topnav links */
  .topnav a {
    float: right;
    display: block;
    color:  #0004ff;
    text-align: right;
     padding: 20px;
    text-decoration: none;
  }
  
  /* Change color on hover */
  .topnav a:hover {
    background-color:#40ff00;
    color: black;
  }
  .sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #c8ff00;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
  }
  
  .sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #8B0000;
    display: block;
    transition: 0.3s;
  }
  
  .sidenav a:hover {
    color: #00ff00;
  }
  
  .sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
  }
  
  #main {
    transition: margin-left .5s;
    padding: 16px;
  }
  
  @media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
  }
  
  
  /* Slideshow container */
  .slideshow-container {
    max-width: 1200px;
    position: relative;
    margin: auto;
  }
  
  /* Caption text */
  .text {
    color: #f2f2f2;
    font-size: 15px;
    padding: 8px 12px;
    position: absolute;
    bottom: 8px;
    width: 100%;
    text-align: center;
  }
  
  /* Number text (1/3 etc) */
  .numbertext {
    color: #f2f2f2;
    font-size: 12px;
    padding: 8px 12px;
    position: absolute;
    top: 0;
  }
  /* The dots/bullets/indicators */
  .dot {
    height: 15px;
    width: 15px;
    margin: 0 2px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    transition: background-color 0.6s ease;
  }
  
  .active {
    background-color: #717171;
  }
  
  /* Fading animation */
  .fade {
    animation-name: fade;
    animation-duration: 1.5s;
  }
  
  @keyframes fade {
    from {opacity: .4} 
    to {opacity: 1}
  }
  
  /* On smaller screens, decrease text size */
  @media only screen and (max-width: 300px) {
    .text {font-size: 11px}
  }
  
  
  
  /* Style the header */
  .header {
    background-color: 	#ff4000;
    padding: 80px;
    text-align: center;
  }
  .header a {
    float: left;
    color: black;
    text-align: left;
    padding: 12px;
    text-decoration:none;
    font-size: 18px; 
    line-height: 25px;
    border-radius: 4px;
  }
  
  .header a.logo {
    font-size: 35px;
    font-weight: bold;
  }
  
  .header a:hover {
    background-color: #00FF00;
    color: black;
  }
  
  
  
  /* Style the footer */
  .footer {
  background-color: #52de0bdd;
  padding: 20px;
}
.footer a:hover {
  color: rgb(201, 25, 28);
}
.dropdown {
  float:right;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 17px;    
  border: none;
  outline: none;
  color: rgb(228, 87, 31);
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #07c5ff;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: #F92807;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
.dropdown-content a:hover {
  background-color: #ffbf00;
  color: black;
}

.dropdown:hover .dropdown-content {
  display: block;
}
  </style>
</head>
<body>
<div id="main">
  <div class="header">
 
    
    <a href="home7.html" class="logo"> <img src="bird12344456.png" alt="bird" width=70px 
   background-color="blue" align="left" style=" font-size:10px";><font color="blue"  > Rhythm Travels</font></a>
  
  </div>
<div class="topnav">
    <div class="dropdown">
        <button class="dropbtn"><font color="#0004ff">Adminoperations</font>
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
          <a href="login.html">ShowUser</a>
          <a href="admin123.html">Admin</a>
          <a href="#">Profile</a>
        </div>
      </div> 
  <a href="#">Hello &#128075; <% String index_uname = (String) session.getAttribute("success-admin-login-uname"); %>
 <%= index_uname %> </a>
  <a href="registrationform.html">Register</a>
  <a href="home7.html">Home</a>
</div>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#B1">BusesFor</a>
  <a href="#W1">We Have</a>
  <a href="#T1">Testimonals</a>
  <a href="#C1">ContactUs</a>
</div>

<div id="main">
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; open</span>
</div>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1</div>
  <img src="bus1.jpg" style="width:100%">
  <div class="text">Forest</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2</div>
  <img src="bus1.jpg" style="width:100%">
  <div class="text">Mountain</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3</div>
  <img src="bus1.jpg" style="width:100%">
  <div class="text">Water</div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>



   

<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}

</script>


	<center><h1 id="B1">BUSES FOR</h1></center>
<div class="col-container">
  <div class="col" style="background:#FFFFFF"    style="height: 5px" style="width: 50%"; >
	 <div class="card">
  		<img src="b55.jpg" alt="Avatar" style="width:100%" >
          <center><h2>Outstation Trip</h2>
         <p1>planned a sudden get away with friends</p1><br>
        <p2> and family?Well,we have the best vehicle</p2><br>
        <p3>option for you at minimal rental rate.</p3>
	</center><br>
          </div>
 </div>

  <div class="col" style="background:#FFFFFF" style="width: 50%";>
    <div class="card">
  		<img src="b67.jpg" alt="Avatar" style="width:100%" >
          <center><h2>Corporate Service</h2>
         <p1>We help you in providing a</p1><br>
        <p2> friendly approach to your employees by</p2><br>
        <p3>faciliting pick up and drop services.</p3>
	</center><br>
      </div>
    
  </div>
	<div class="col" style="background:#FFFFFF" style="width: 50%";>
    <div class="card">
  		<img src="b76.jpg" alt="Avatar" style="width:100%" >
         <center><h2>Event Purposes</h2>
         <p1>you can hire the best capacity buses </p1><br>
        <p2>for planning an event like -picnic,marriage,</p2><br>
        <p3>tourism,etc. for different purposes</p3>
	</center><br>
      </div>
  </div>

  <div class="col" style="background:#FFFFFF" style="width: 50%";>
   <div class="card">
  		<img src="b81.jpg" alt="Avatar" style="width:100%" >
          <center><h2>School Service</h2>
         <p1>We have comfortable buses with  </p1><br>
        <p2>responsible for planning an event like  </p2><br>
        <p3>  bus drivers and conductors for </p3><br>
	<p4>picking up and dropping school children</p4>
	</center><br>
      </div>
  </div>

</div>



<h2  id="W1" style="text-align:center">We Have</h2>



    <div class="column12">
      <img class="demo1 cursor1" src="b1.png" style="width:100%" alt="Nature and sunrise">
    </div>
    <div class="column12">
      <img class="demo1 cursor1" src="b2.png" style="width:100%"  alt="Snow">
    </div>
    <div class="column12">
      <img class="demo1 cursor1" src="b3.jpg" style="width:100%" alt="Mountains and fjords">
    </div>
    <div class="column12">
      <img class="demo1 cursor1" src="b4.jpg" style="width:100%" alt="Northern Lights">
    </div>


<br>
<br><br>
<br>
<br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p1><b>Volvo Buses</b></p1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p2><b>Mini Buses</b></p2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p3><b>Tourist Buses</b></p3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p3>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p4><b>Staff Buses</b></p4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<br><br><br>
<center><h2 id="T1">Testimonals</h2></center>
<div class="parallax">
  <div class="slideshow-container1">

    <div class="mySlides1">
        <i class="fa fa-quote-left" style="font-size:46px;color: #104FD6"></i><b><font size="5%" color="#55D610">John Keats</font></b>
        <p><font size="5%" color="#000099"><i>We had rented a few buses for my brother's wedding.<br>they provided an excellent service</i> </font></p>
    </div>
    
    <div class="mySlides1">
        <i class="fa fa-quote-left" style="font-size:46px;color: #104FD6"></i><b><font size="5%" color="#55D610">Ernest Hemingway</font></b>
        <p><font size="5%" color="#ff3399" ><i> Renteda Bus for my office picnic.it was tidy and best quality.<br>
        we did not have any issues during the drive.</i></font> </p>
    </div>
    
    <div class="mySlides1">
     
        <i class="fa fa-quote-left" style="font-size:46px;color: #104FD6"></i><b><font size="5%" color="#55D610">Thomas A. Edison</font></b>
        <p><font size="5%"  color="#ffff00"><i>We hired a bus from them for our trip to mamali.The trip was smooth as the bus<br> quite comfortable 
            and clean.</i></font></p>
    </div>
    
    <a class="prev1"   onclick="plusSlides(-1)">❮</a>
    <a class="next1" onclick="plusSlides(1)">❯</a>
    
</div>
    
    <div class="dot-container1">
      <span class="dot1" onclick="currentSlide(1)"></span> 
      <span class="dot1" onclick="currentSlide(2)"></span> 
      <span class="dot1" onclick="currentSlide(3)"></span> 
  </div>
<script>
    var slideIndex1 = 1;
    showSlides1(slideIndex1);
    
    function plusSlides(n) {
      showSlides1(slideIndex1 -= n);
    }
    
    function currentSlide(n) {
      showSlides1(slideIndex1 = n);
    }
    
 function showSlides1() {
  let i;
  let slides = document.getElementsByClassName("mySlides1");
  let dots = document.getElementsByClassName("dot1");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex1++;
  if (slideIndex1 > slides.length) {slideIndex1 = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex1-1].style.display = "block";  
  dots[slideIndex1-1].className += " active";
  setTimeout(showSlides1, 2000); // Change image every 2 seconds
}
</script>



</div>


<Center><h1 id="C1">Contact us</h1></Center>
<div class="row">
  <div class="column side"style="background-color:#D2B48C;">
    <label for="fname"><i class="material-icons" style="font-size:30px;color:#1E90FF">location_on</i>&nbsp;&nbsp;&nbsp;<b><font size=5px textalign=left>Our Office Address</font></b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Governerpet,Vijayawada,Andhrapradesh</label>
    <br><br>
      <label for="lname"><i class="material-icons" style="font-size:30px;color:#1E90FF">mail</i>&nbsp;&nbsp;&nbsp;<b><font size=5px textalign=left>General Enquiries</font></b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
contact@rhythmtravels</label>
       <br><br>
      <label for="subject"><i class="material-icons" style="font-size:30px;color:#1E90FF">call</i>&nbsp;&nbsp;&nbsp;<b><font size=5px textalign=left>Call us</font></b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+918899544380</label>
       <br><br>
       <label for="subject"><i class="material-icons" style="font-size:30px;color:#1E90FF">access_time</i>&nbsp;&nbsp;&nbsp;<b><font size=5px textalign=left>Our Timings</font></b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       Mon - Sun : 09:00 AM - 09:00 PM</label>
    
    
    
    
    
    </div>
  <div class="column side" style="background-color:#FA8072;">
  <div class="container" style="background-color:#FF8C00;" >
  <form action="home7copy.html">
  <div class="row">
    <div class="col-25">
    </div>
    <div class="col-75">
      <input type="text" id="fname" name="firstname" style="background-color:#E6E6FA;" placeholder="Your name..">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <input type="email" id="emlname" name="emailid"  style="background-color:#E6E6FA;" placeholder="Your email id">
    </div>
  </div>
  <div class="row">
    <div class="col-75">
      <input type="tel" id="telname" name="number" style="background-color:#E6E6FA;"  placeholder="Your Contactno">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
    </div>
    <div class="col-75">
      <textarea id="subject" name="subject" style="background-color:#E6E6FA;" placeholder="Write Message.." style="height:100px"></textarea>
    </div>
  </div>
  <br>
  <div class="row">
<button   type="submit" onclick="myFunction()"  value="Submit" ><font color="blue"> submit</font></button>
  </div>
<script>
function myFunction() {
  alert("Hello! Your enquire has been sent !");
}
</script>



  </form>
</div>
</div>





<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28266.716383435767!2d80.62010196063552!3d16.50520421154771!2m3!1f0!2f0!3f0!3m2!1i1024
!2i768!4f13.1!3m3!1m2!1s0x3a35effe31625f67%3A0x10f9c4f923123e4a!2sGovernor%20Peta%2C%20Vijayawada%2C%20Andhra%20Pradesh!5e0!3m2!1sen!2sin!4v1653800365167!5m2!1sen!2sin" 
width="1600" height="500" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>


<div class="footer"> 
  <p1><a href="home7.html" align="left"><font size="5%"  >*Home</font></a></p1>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <p4><a href="#B1" align="left"><font size="5%"  >*BusesFor</font></a></p4>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
  &nbsp;&nbsp; &nbsp;&nbsp;
  <p6><font size="5%" color=" #114188" >Contact:</font></p6>
  <br>
  <p2><a href="#"><font size="5%" >*Aboutus</font></a></p2>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <p5><a href="#W1" align="left"><font size="5%"  >*We Have</font></a></p5>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
  <p7><font size="5%" color=" #114188" >Rhythmtravels,governerpet,52001,A.P</font></p7>
  <br>
 <p3> <a href="#C1"><font size="5%"  >*ContactUs</font></a></p3>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
 <p8><a target="_blank" href="mailto:rhythm@gmail.com"><font size="5%"
   color=" #114188" >rhythm@gmail.com</font></a></p8>
 <br>
<center><h3><font size="5%" >© Copyrights 2022 - 2023.Rhythm Travels Travels.All Rights Reserved.</font></h3></center>
</div>
</div> 
  
</body>
</html>










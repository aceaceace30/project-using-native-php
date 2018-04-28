<?php
session_start();
require('Client/dbconnect.php');
require('Client/check.php');
require('Client/select.php');
?>

<!DOCTYPE html>
<html>
<head>
<title>TRAVEL LOKAL</title>
<link rel="icon" href="../GlobalImages/profile1.png">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../GlobalCSS/layoutx.css" rel="stylesheet" type="text/css" media="all">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>

<script>

$(function() {
   $('#datepicker').datepicker({ minDate: 1, maxDate: 14 });
  });

</script>

</head>
<body id="top">
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <div id="logo" class="fl_left">
      <h1><a href="index.php"><img style="position: absolute; margin-left: -40px;" src="GlobalImages/profile1.png" height="35"> <?php echo $comp_name; ?></a></h1>
      <i style="font-family: Times Verdana; font-size: 15px;">A fast.. easy & convenient bus booking site!</i>
    </div>
    <div class="fl_right">
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="https://www.facebook.com/Travel-Lokal-839843849505011/" target="blank"><i class="fa fa-facebook"></i></a></li>
      </ul>
    </div>
</header>
</div>
<div class="se-pre-con">
  <center><img src="../GlobalImages/profile1.png" style="width: 250px; height: 250px"><br>
  <h1>Travel Lokal</h1></center><br>
</div>
<div class="wrapper row2">
  <nav id="mainav" class="clear"> 
    <ul class="clear">
      <i class="fa fa-home icon" aria-hidden="true" style="color:#33bbff"></i>
      <li class="active"><a href="index.php">Home</a></li>
      <i class="fa fa-road icon" aria-hidden="true"></i>
      <li><a href="Client/terminals_fares.php">Terminals & Fares</a></li>
      <i class="fa fa-phone icon" aria-hidden="true"></i>
      <li><a href="Client/contact_us.php">Contact Us</a></li>
      <div style="margin-left: 550px; display: inline-block">
       <?php
      if(isset($_SESSION["email"]))
      {
      ?>
       <li><a class="drop" href="#"><span style="text-transform: capitalize;">Hi,</span> <?php echo $_SESSION['firstname']; ?>!</a>
        <ul style="background: #262626">
        <form id="customer_frm">
          <li><a onclick="document.getElementById('editaccount').style.display = 'block'" id='<?php echo $_SESSION["userid"];?>' name="editacc"  href="#editaccount"><i class="fa fa-user" aria-hidden="true" style="color: lime;"></i> My Account</a></li>
          <li><a href="Client/myreservation_page.php" id="myreservation_link"><i class="fa fa-book" aria-hidden="true" style="color: #00e6e6;"></i> My Reservation</a></li>
          <li><a href="Client/user_history.php" id="myreservation_link"><i class="fa fa-book" aria-hidden="true" style="color: red;"></i> History</a></li>
          <li><a href="Client/logout.php" id="logout_link"><i class="fa fa-times" aria-hidden="true" style="color: #ff3333"></i> Logout</a></li>
        </form>
        </ul>
     </li>
      <?php
      }
      else
      {
      ?>
      <li><a onclick="document.getElementById('id01').style.display='block'" href="#id01">LOGIN</a></li>
      <li style="margin-left: -30px;">/</li>
      <li style="margin-left: -30px;"><a onclick="document.getElementById('id02').style.display='block'" href="#id01">REGISTER</a></li>
      <?php
      }
      ?>
      </div>
    </ul>
  </nav>
</div>


<div id="id01" class="modal">
  <form class="modal-content animate">
    <div class="imgcontainer">  
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close">&times;</span>
      <img src="../GlobalImages/lock.png" class="avatar">
    </div>
    <div class="logcontainer">
      <hr>

      <center><p style="color: red;" id="error_login"></p></center>
      <input type="text" placeholder="Enter Email" name="email" id="email" size="37" style="padding-left: 30px;">
      <i class="fa fa-envelope errspan" aria-hidden="true"></i>
      <input type="password" placeholder="Enter Password" name="password" id="password" size="37" style="padding-left: 30px;">
      <i class="fa fa-key errspan" aria-hidden="true"></i><br><br>
      <button style="background-color:#00aaff; height: 43px; width:100%; border-style: none; color:white; border-radius: 5px; margin-bottom: 20px" type="button" name="login_btn" id="login_btn">LOG IN</button>
    </div>

    <div class="logcontainer" style="background-color:#f1f1f1">
      <i class="fa fa-pencil-square-o" aria-hidden="true" style="color:#00aaff"></i>
      <span style="margin-right: 150px;"><a class="hover" onclick="document.getElementById('id02').style.display='block', document.getElementById('id01').style.display='none'" href="#id02" data-toggle="modal" data-dismiss="modal" title="Create a new account">Register</a></span>
      <span><a class="hover" style="color:red" href="#" title="Recover password">Forgot Password</a></span>
      <i class="fa fa-question-circle-o" aria-hidden="true" style="color:red"></i>
    </div>
  </form>
</div>

  <div id="id02" class="regmodal">
  <form class="regmodal-content animate">
    <div class="imgcontainer">  
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close">&times;</span>
      <img src="../GlobalImages/adduser.png" class="avatar">
    </div>
    <div class="logcontainer">
      <hr>
     <center><span id="erroremail"></span><br></center>
      <label style="margin-left: 84px;">Email:</label>
      <input type="text" placeholder="Enter Email" id="email_reg" size="45" maxlength="40"><br>
      <center><span id="errorpassword"></span><br></center>
      <label style="margin-left: 60px;">Password:</label>
      <input type="password" placeholder="Enter Password" id="password_reg" size="45"><br>
      <center><span id="errorconfirmpass"></span><br></center>
      <label>Confirm Password:</label>
      <input type="password" placeholder="Confirm Password" id="confirmpass" size="45"><br>
      <center><span id="errorfname"></span><br></center>
      <label style="margin-left: 50px;">First Name:</label>
      <input type="text" placeholder="Enter First Name" id="fname" size="45" maxlength="20"><br>
      <center><span id="errorlname"></span><br></center>
      <label style="margin-left: 50px;">Last Name:</label>
      <input type="text" placeholder="Enter Last Name" id="lname" size="45" maxlength="20"><br>
      <center><span id="errorphonenumber"></span><br></center>
      <label style="margin-left: 20px;">Phone Number:</label>
      <input type="text" placeholder="Ex. 639123456789" id="phonenumber" size="45" maxlength="13" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
    </div>
      <p id="success"></p>
    <div class="logcontainer" style="background-color:#f1f1f1">
      <button style="background-color:#00aaff; border-radius: 5px; margin-left: 27%; color:white; height: 50px; border-style: none; width: 280px;" type="button" id="reg_btn" title="Create Account">SUBMIT</button>
    </div>
  </form>
</div>

<div id="sitemap" class="mapmodal">
  <form class="mapmodal-content animate" method="post" action="index.php">
   <div class="imgcontainer">  
      <span onclick="document.getElementById('sitemap').style.display='none'" class="close" title="Close">&times;</span>
      <br>
      <h1>Travel Lokal Map</h1>
      <hr>
    </div>
    <div class="logcontainer">
    <div>
      <?php echo $comp_map; ?>
    </div>
  
    </div>
  </form>
</div>

<div id="editaccount" class="regmodal">
  <form class="regmodal-content animate">
    <div class="imgcontainer">  
      <span onclick="document.getElementById('editaccount').style.display='none'" class="close" title="Close">&times;</span>

    </div>
    <div class="logcontainer">
    <center><h1>My Account</h1></center>
    <hr>
     <label style="margin: 15px 0 10px 20px;">First Name:</label><label style="margin: 15px 0 10px 57px; color: #595959;" id="myfname"></label><br>
     <label style="margin: 5px 0 10px 20px;">Last Name:</label><label style="margin: 5px 0 10px 60px; color: #595959;" id="mylname"></label><br>
     <label style="margin: 10px 43px 10px 20px;">Email:</label><label style="margin: 10px 0 10px 50px; color: #595959;" id="myemail"></label><br>
      <label style="margin: 5px 65px 10px 20px;">Password: </label><input type="password" size="30" id="mypass"><br>
     <label style="margin: 5px 22px 10px 20px;">Phone Number: </label> <input type="text" size="30"  id="myphone" maxlength="13"><br><center><span id="error_message"></center>
   <hr>
    <center><span style="color: red;" id="pass_err"></span><br>
    <input type="password" size="30" id="secpass" placeholder="Enter your old password"></center>
    </div>
    <div class="logcontainer" style="background-color:#f1f1f1">
    <center><button style="background-color:#00aaff; border-radius: 5px; color:white; height: 50px; border-style: none; width: 200px;" id="confirm_edit">SAVE</button></center>     
    </div>
  </form>
</div>

<form action="Client/datatable.php" method="GET">
<div class="wrapper row3">
  <section class="container nospace clear"> 
    <div class="intro">
      <div class="container">
      <div id="leftpanel">
        <div class="slide">
          <img class="mySlides fade" style="height: 500px; width: 750px;" src="data:image/jpeg;base64,<?php echo base64_encode($first_slide);?>"/>
          <img class="mySlides fade" style="height: 500px; width: 750px;" src="data:image/jpeg;base64,<?php echo base64_encode($second_slide);?>"/>
          <img class="mySlides fade" style="height: 500px; width: 750px;" src="data:image/jpeg;base64,<?php echo base64_encode($third_slide);?>"/>
        </div>
      </div>
      <div id="rightpanel">
           <i><label style="font-size: 40px; font-family: Times Verdana; margin: -20px 0 20px 0;">Search.. Book.. Go!</label></i><br><br>
           <label style="font-size: 40px">Search Bus Trips</label><br>
           <!--<i class="fa fa-compass fa-2x searchinput" aria-hidden="true"></i> 
           <input type="text" placeholder="From" name="from" size="40" style="padding-left: 45px;" required><br>
           <i class="fa fa-map-marker fa-2x searchinput" aria-hidden="true"></i>-->
           <?php
            $store_value=array();
            $store_value2=array();
            $get_value ="SELECT DISTINCT location FROM location_destination";
            $result = $DBcon->query($get_value);
            if ($result->num_rows > 0) {
              while($row_result = $result->fetch_assoc()) {
                $store_value[]=$row_result["location"];
              }
            }
             $get_value2 ="SELECT DISTINCT destination FROM location_destination";
            $result2 = $DBcon->query($get_value2);
            if ($result2->num_rows > 0) {
              while($row_result2 = $result2->fetch_assoc()) {
                $store_value2[]=$row_result2["destination"];
              }
            } 
            //FROM SELECT TAG  
           echo '<i class="fa fa-compass fa-2x searchinput" aria-hidden="true"></i>';    
           echo '<select name="from" id="from" style="margin-bottom:7px; padding-left: 42px;" required>';
       
            for($i=0;$i<sizeof($store_value);$i++)
            {
            echo "<option value='$store_value[$i]'>$store_value[$i]</option>";
            }
           echo '</select>';

            //DESTINATION SELECT TAG
           echo '<i class="fa fa-map-marker fa-2x searchinput" aria-hidden="true"></i>';
           echo '<select name="destination" id="destination" style="padding-left: 42px;" required>';  
           echo '<option value="" selected disabled>Destination</option>';         
            for($d=0;$d<sizeof($store_value2);$d++)
            {
            echo "<option value='$store_value2[$d]'>$store_value2[$d]</option>";
            }          
           echo '</select>';
           ?>
           <i class="fa fa-calendar fa-2x searchinput" aria-hidden="true"></i>         
           <input type="text" placeholder="Choose Date" name="datepicker" id="datepicker" size="40" style="padding-left: 45px; cursor: pointer;" required><br><br>
           <div class="searchicon"><i class="fa fa-search fa-2x" aria-hidden="true" style="position: absolute; margin: -3px 0 0 6px;"></i></div>
           <button style="background-color:#1a8cff; font-size: 20px; border-radius: 5px; border-style: none; margin-left: 5%; color:white; height: 45px; width: 400px;" type="submit" name="search_btn">Search</button>
       </div>
      </div>
    </div>
  </section>
</div>
</form>

    <div class="wrapper row4" style="background: black;">
  <footer id="footer" class="clear"> 
    <div class="one_quarter">
      <h6 class="title">Company Information</h6>
      <?php echo $comp_name; ?><br>
      <?php echo $comp_address; ?>
    </div>
    <div class="one_quarter">

   <li class="btmspace-10"><i class="fa fa-phone"></i> <?php echo $comp_number; ?></li>
        <li><i class="fa fa-envelope-o"></i> <?php echo $comp_email; ?></li>
    </div>
    <div class="one_quarter">
    <li><i style="margin-right: 5px; color: orange;" class="fa fa-map-marker"></i><a onclick="document.getElementById('sitemap').style.display='block'" href="#sitemap" id="site-map">Site Map</a></li>
    </div>
  </footer>
</div>
</div>

<script src="../GlobalJS/carousel.js"></script>
<script src="../GlobalJS/js_newlogin_register.js"></script>
<script>

$(document).ready(function(){

      $('[name=editacc]').click(function(e) {
        e.preventDefault();
        
        userid=($(this).attr("id"));
        $.ajax({
        type:"POST",
        url:"Client/myaccount.php",
        data:{'userid':userid},
        success:function(value){
          var data=value.split(",");
          $('#myemail').html(data[0]);
          $('#mypass').val(data[1]);
          $('#myfname').html(data[2]);
          $('#mylname').html(data[3]);
          $('#myphone').val(data[4]);
        }        
    });
  });

       $("#mypass").click(function(e){
          $('#error_message').html("");
       });
       $("#myphone").click(function(e){
          $('#error_message').html("");
       }); 

       $("#confirm_edit").click(function(e){
        e.preventDefault();
        var securitypass = $('#secpass').val();
        var mypass=$('#mypass').val();
        var myphone=$('#myphone').val();

        if(mypass=="")
        {
          $('#error_message').html("Password should not be empty");
          return;
        }

        if(myphone=="")
        {
          $('#error_message').html("Phone number should not be empty");
          return;
        }

        if(securitypass=="")
        {
          $('#pass_err').html("Password cannot be empty");
          return;
        }

        if(mypass.length<6)
        {
          $('#error_message').html("Password should not less than 6 characters");
          return;
        }

        if(myphone.length<13)
        {
          $('#error_message').html("Invalid Phone Number");
          return;
        }

          $.ajax({
            type:"POST",
            url:"Client/editmyaccount.php",
            data:{'userid':userid,
                  'mypass':mypass,
                  'myphone':myphone,
                  'securitypass':securitypass},
            success:function(data){
              if(data=='yes')
              {
                location.reload();
              }
              else if(data=='error')
              {
                $('#pass_err').html("Incorrect Password");
              }
              else
              {
                alert(data);
              }
            }
          });
        });

document.getElementById("logout_link").onclick = function() {
    document.getElementById("customer_frm").submit();
}

document.getElementById("myreservation_link").onclick = function() {
    document.getElementById("customer_frm").submit();
}

document.getElementById("myaccount_link").onclick = function() {
    document.getElementById("customer_frm").submit();
}

});

$(window).load(function() {
    // Animate loader off screen
    $(".se-pre-con").fadeOut("slow");;
  });

</script>
</body>
</html>
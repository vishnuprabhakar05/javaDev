<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>SECURE AUDITING</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <script type="text/javascript" src="js/jquery-1.7.1.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
 
<meta name="keywords" content="Media-Center Iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='my.js' rel='stylesheet' type='text/css'>
<script>
$(document).ready(function() {
	//alert("WORKING");
		$("#enter_field").hide();
		$("#yes").click(function()
				{
					$("#enter_field").show();
				});
		$("#no").click(function()
				{
					$("#enter_field").hide();
				});
		$(function() {
		    $("#dob").datepicker();
		  });
							//Javascript for previewing image
									function readURL(input) {
								        if (input.files && input.files[0]) {
								            var reader = new FileReader();
								            
								            reader.onload = function (e) {
								                $('#blah').attr('src', e.target.result);
								            }
								            
								            reader.readAsDataURL(input.files[0]);
								        }
								    }
								    
								    $("#image").change(function(){
								        readURL(this);
								    });
		
								    
	$("#signup").click(function()
			{
				//alert("CLICKED");
					var firstname=$("#firstname").val();
					//alert(firstname);
					var lastname=$("#lastname").val();
					var gender=$("#gender").val();
					var country=$("#country").val();
					var state=$("#state").val();
					var district=$("#district").val();
					var hobbies=$("#hobbies").val();
					var dob=$("#dob").val();
					var email=$("#email").val();
					var mobile=$("#mobile").val();
					var qual=$("#qualification").val();
					var image=$("#image").val();
					var username=$("#username").val();
					var password=$("#password").val();
					var confirm_password=$("#confirm_password").val();
					var working_or_not=$(".working").val();
					var enter_field=$("#enter_field").val();
					
							if(firstname==""||lastname==""||gender==""||country==""||state==""||district==""||hobbies==""||dob==""||email==""||mobile==""||qual==""||image==""||username==""||password==""||confirm_password==""||working_or_not==""||enter_field=="")
								{
									alert("ENTER ALL FIELDS");
									return false;
								
								}
					
					
							var phone_pattern=/^\d{10}$/;
							if(!(phone_pattern.test(mobile)))
								{
									alert("Invalid Mobile Number");
									return false;
								}
					
							var email_pattern=/^([a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+(\.[a-z\d!#$%&'*+\-\/=?^_`{|}~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]+)*|"((([ \t]*\r\n)?[ \t]+)?([\x01-\x08\x0b\x0c\x0e-\x1f\x7f\x21\x23-\x5b\x5d-\x7e\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|\\[\x01-\x09\x0b\x0c\x0d-\x7f\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))*(([ \t]*\r\n)?[ \t]+)?")@(([a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\d\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.)+([a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]|[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF][a-z\d\-._~\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]*[a-z\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])\.?$/i;
							if(!(email_pattern.test(email)))
								{
									alert("Invalid E-mail Format");
									return false;
								}
					
							if(password!=confirm_password)
								{
									alert("Passwords not same");
									return false;
								}
							if(password.length<6)
								{
									alert("Password too short(Min.7 characters)");
									return false;
								}
							
						
							else
							{
								return true;
								
							
							} 
			});
	
	
	
});


</script>
</head>


<body>

<form action="join_now_Action.jsp" method="post" enctype="multipart/form-data">
<div class="wrap">
<div class="wrapper">
  <div class="header">
		<div class="menu1">
			<!--<a href="index.jsp"><img src="images/logo.png"></a>-->
			<ul>
			<li class="active"><a href="index.jsp">Home</a></li>
			</ul>
	   </div>
	   <div class="menu">
			<ul>
				
				<li><a href="sign_in.jsp">Sign In</a></li>
				<li><a href="join_now.jsp">Join Now</a></li>
				
			</ul>
		</div>
		<div class="clear"></div> 
	</div>
 	<div class="preview">
 		<img src="images/image.jpg" style="min-width: 100%;height: 450px;">
		<div class="sa">
		<img src="images/SA 1.jpg">
		<h1>SECURE AUDITING</h1>
		<p>Tap into the power of social media</p>
		</div>
	</div>
<div class="contact">		
	<div class="contact-top">
	   <div class="b-box">
            <h1 style="text-align:center;">JOIN NOW</h1>
            <div class="form">
               
                    <div class="to1">
                      
					 <input type="text" class="text" name="firstname" value="First Name" id="firstname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}">
					 <input type="text" class="text" name="lastname" value="Last Name" id="lastname" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}">
					 <span>Gender</span>
					 <input type="radio" name="gender" id="gender" value="male"> Male
					 <input type="radio" name="gender" id="gender" value="female"> Female
					 <input type="text" class="text" name="country" id="country" value="Country" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Country';}">
					 <input type="text" class="text"  name="state" id="state" value="State" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'State';}">
					 <input type="text" class="text" name="district" id="district" value="District" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'District';}">
					 <input type="text" class="text" name="hobbies" id="hobbies" value="Hobbies" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Hobbies';}">
				</div>
				
				<div class="to1 to2">
                      
					 <input type="text" class="text" name="dob" id="dob" value="DOB" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'DOB';}">
					 <input type="text" class="text" name="email" id="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
					 <input type="text" class="text" name="mobile" id="mobile" value="Mobile Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile Number';}">
					 <input type="text" class="text" name="qualification" id="qualification" value="Qualification" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Qualification';}">
					 <span>Working or Not</span>
					 <input type="radio" name="working" name ="working" class="working" id="yes" value="yes"> Yes
					 <input type="radio" name="working" name ="working" class="working" id="no"  value="no"> No
					 <span>If Yes</span>
					 <input type="text" class="text" name ="field" id="enter_field" value="No Value" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Field';}">
				</div>
				
                
                
             
            </div>
			
          </div>
        </div>
		<div class="contact-top con1">
			<div class="b-box">
				<div class="form">
					<form class="cmxform" id="contactForm" method="post" >
						<div class="to1">
							<span>Upload your photo</span>
							<input type="file" id="image"  name="imagepath" ><br>
							<img id="blah" src="#" alt="your image">
						</div>
						
						<div class="to1 to2" style="margin-left: 125px;">
							 <input type="text" class="text" name="username" id="username" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}">
							 <input type="text" class="password"name="password" id="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
							 <input type="text" class="password"name="confirm_password" id="confirm_password" value="Confirm Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Confirm Password';}">
						</div>
						
					</form>
				</div>	
			</div>
			<div style="margin: 10px 391px;">
				<input type="submit" id="signup" value="Sign Up">
			</div>
		</div>
 </div>
</div>
</div>	
</form>
</body>
</html>
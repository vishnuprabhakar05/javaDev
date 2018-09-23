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
<meta name="keywords" content="Media-Center Iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='my.js' rel='stylesheet' type='text/css'>
<script type="text/javascript">

$(document).ready(function()
		{
			//alert("ready");
				$("#login").click(function()
						{
								//alert("CLICKED");
								var username=$("#username").val();
								var password=$("#password").val();
								//alert(password);
								
										if(username==""||password=="")
											{
												alert("ENTER ALL FIELDS");
												return false;
											}
										
										else
											{
												$.getJSON("sign_in_Action.jsp?userkey="+username+"&passkey="+password,function(json)
														{
															//alert("json");
															var login=json[0].msg;
														//	alert(login);
															if(login=="success")
																{
																	window.location.href="newsfeed.jsp";
																}
															else
																{
																	window.location.href="sign_in.jsp";
																
																}
													
														});
											
											}
						});
			
		});


</script>
</head>
<body>
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
	<div class="contact-top" style="text-align: center;">
	   <div class="b-box">
            <h1>SIGN IN</h1>
            <div class="form">
                <form class="cmxform" id="contactForm" method="post" >
                    <div class="to">
                      
					 <input type="text" class="text" id="username" placeholder="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}">
					 <input type="password" class="text" id="password" placeholder="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
				</div>
                
                <div>
               		<input type="button" id="login" class="login" value="LOGIN">
                </div>
               </form>
            </div>
          </div>
        </div>
 </div>
</div>
</div>
	
</body>
</html>
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
		//	alert();
				$("#login").click(function()
						{
							//alert("Clicked");
							var username=$("#username").val();
							var password=$("#password").val();
									if(username==""||password=="")
										{
											alert("ENTER ALL FIELDS");
											return false;
										}
								
									else
										{
											$.getJSON("login_Action.jsp?userkey="+username+"&passkey="+password,function(json)
													{
														//alert("JSON");
														var login=json[0].msg;
														//alert(login);
															if(login=="success")
																{
																	window.location.href="admin_home.jsp";
																}
															else
																{
																	window.location.href="login.jsp";
																}
													});
										}
						});
		})


</script>



</head>
<body>
<div class="wrap">
<div class="wrapper">
	<div class="header header_admin">
		
			<div class="sa sa_admin" style="padding:12px;">
			<img src="images/SA 1.jpg">
			<h1>SECURE AUDITING</h1>
			<p>Tap into the power of social media</p>
			</div>
		
		<div class="clear"></div> 
	</div>
 	<div class="preview" style="padding-top:5px;">
 		<img src="images/admin-login1.jpg">
		
	</div>
<div class="contact contact_admin">		
	<div class="contact-top" style="text-align: center;">
	   <div class="b-box b-box_admin">
            <h1>LOG IN</h1>
            <div class="form">
                <form class="cmxform" id="contactForm" method="post" >
                    <div class="to to_admin">
                      
					 <input type="text" id="username" class="text" placeholder="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}">
					 <input type="password" id="password" class="text" placeholder="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
				</div>
                
                <div>
               		<input type="button" id="login" value="SIGN IN">
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
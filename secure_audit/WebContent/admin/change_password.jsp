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
<meta name="keywords" content="Media Center Iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/bootstrap-3.1.1.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='my.js' rel='stylesheet' type='text/css'>
<!-- DC Tabs CSS -->
<link type="text/css" rel="stylesheet" href="css/tabs.css" />
 <!-- jQuery Library (skip this step if already called on page ) -->
<script type="text/javascript" src="js/jquery.min.js"></script> <!-- (do not call twice) -->
 <!-- DC Tabs JS -->
<script type="text/javascript" src="js/tabs.js"></script>

<script type="text/javascript">
$(document).ready(function()
		{
			alert();
				$("#update").click(function()
						{
							alert("Clicked");
							var old_pass=$("#old_pass").val();
							var new_pass=$("#new_pass").val();
							var c_pass=$("#c_pass").val();
							alert("OLD PASS"+old_pass);
							alert("NEW PASS"+new_pass);
							alert("C PASS"+c_pass);
							
											if(old_pass==""||new_pass==""||c_pass=="")
													{
														alert("ENTER ALL FIELDS");
													
													}
											
											if(new_pass!=c_pass)
											{
												alert("PASSWORDS DOES NOT MATCH");
												return false;
											}
											
											if(old_pass==new_pass)
											{
												alert("OLD AND NEW PASSWORDS ARE SAME.TRY DIFFERENT PASSWORD");
												return false;
			
											}
											
											
											else
												{
													$.getJSON("change_password_Action.jsp?newpasskey="+new_pass,function(json)
															{
																alert("JSON");
																var update=json[0].update;
																
																if(update=="success")
																	{
																		window.location.href="admin_home.jsp";
																	
																	}
																else
																	{
																		window.location.href="change_password.jsp";
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
	
 	<div class="header header_admin">
		
			<div class="sa sa_admin">
			<img src="images/SA 1.jpg">
			<h1>SECURE AUDITING</h1>
			<p>Tap into the power of social media</p>
			<a href="login.jsp"><img src="images/log.jpg" style="margin-top: -36px;">
			</div>
		
		<div class="clear"></div> 
	</div>

<div class="blog">
		<div class="blog-left">
          <h2>Categories</h2> 
           <div class="sidebar">
	       	<div class="sidebar-nav">
				<ul>
					<li><a href="view_user.jsp"><i class="fa fa-user" aria-hidden="true"></i>VIEW USERS</a></li>
					 <li><a href="view_group.jsp"><i class="fa fa-users" aria-hidden="true"></i>VIEW GROUPS</a></li>
					 <li><a href="../home/index.jsp""><i class="fa fa-globe" aria-hidden="true"></i>VIEW WEBSITE</a></li>
					 <li><a href="change_password.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>CHANGE PASSWORD</a></li>
					 <li><a href="anomoly_status.jsp"><i class="fa fa-check-square" aria-hidden="true"></i>CHECK ANOMOLY</a></li>
				</ul>
		    </div> 
	       </div>
		</div>
		<div class="blog-right">
         <h2>CHANGE PASSWORD</h2> 
         <div class="form">
                <form class="cmxform" id="contactForm" method="post" >
                    <div class="to1">
					<span>Old Password</span>
					 <input type="password" class="text" id="old_pass" placeholder="Old Password" >
					 <span>New Password</span>
					 <input type="password" class="text" id="new_pass" placeholder="New Password" >
					 <span>Confirm Password</span>
					 <input type="password" class="text" id="c_pass" placeholder="Confirm Password" >
					 
				</div>
				
                
                
               </form>
			   <div class="clear"></div>
			   <div style="margin-left: 130px;margin-top: 20px;">
               	<input type="button" id="update" value="UPDATE">
					
            </div>
            </div>
		
		<div class="clear"></div>
					

		</div>
</div>
</div> 
</div> 
	
	
</body>
</html>
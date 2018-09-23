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

<script>

$(document).ready(function()
		{
			alert();
				$.getJSON("newsfeed_Action.jsp",function(json)
						{
							 alert("JSON");
							var story_len=json.length;
							alert(story_len);
							/* var a=json[0].story;
							alert(a);
							var b=json[1].story;
							alert(b);
							var c=json[2].story;
							alert(c);  */
							for(var i=0;i<3;i++)
								{
									//alert(json[i].story);
								$("#newsfeed").append('<div class="image"><img src="images/avatar.jpeg"/></div><div class="desc1"><h5 id="name">'+json[i].name+'</h5><p id="story">'+json[i].story+'</p></div>');
								
								}
							
							
							
					
						});
		});

</script>





<%
String path=session.getAttribute("imagepathkey").toString();

%>



</head>
<body>
<div class="wrap">
<div class="wrapper">
	
 	<div class="preview preview1">
 		
		<div class="sa sa1">
		<img src="images/SA 1.jpg">
		<h1>SECURE AUDITING</h1>
		<p style="float: left;">Tap into the power of social media</p>
		<a href="sign_in.jsp"><img src="images/log.jpg"></a><span><%String username=session.getAttribute("userkey").toString();
				out.println(username);
		
		%></span>
		<span><img src="<%=path%>"></span>
		</div>
		
	</div>

<div class="blog">
		<div class="blog-left">
          <h2>Categories</h2> 
           <div class="sidebar">
	       	<div class="sidebar-nav">
				<ul>
					 <li><a href="post_a_story.jsp"><i class="fa fa-comments-o" aria-hidden="true"></i>POST A STORY</a></li>
					 <li class="sub1">
					 <a href=""><i class="fa fa-child" aria-hidden="true"></i>FRIENDS</a>
						<ul class="sub_ul">
						<li><a href="friends.jsp">SEARCH FRIENDS</a></li>
						<li><a href="view_request.jsp">VIEW REQUEST</a></li>
						<li><a href="view_friends.jsp">VIEW FRIENDS</a></li>
						<li><a href="blocked_friends.jsp">BLOCKED FRIENDS</a></li>
						</ul>
					 </li>
					 <li><a href="view_group.jsp"><i class="fa fa-users" aria-hidden="true"></i>GROUPS</a></li>
					 <li><a href="chat_with_friends.jsp"><i class="fa fa-comment" aria-hidden="true"></i>CHAT</a></li>
					 <li><a href="my_profile.jsp"><i class="fa fa-user" aria-hidden="true"></i>MY PROFILE</a></li>
					 <li><a href="update_password.jsp"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>UPDATE PASSWORD</a></li>
					 <li><a href="delete_account.jsp"><i class="fa fa-times" aria-hidden="true"></i>DELETE ACCOUNT</a></li>
				</ul>
		    </div> 
	       </div>
		</div>
		<div class="blog-right">
         <h2>NEWSFEED</h2> 
         
		<div class="services-top" id="newsfeed">
		          
		
					

		</div>
</div>
</div> 
</div> 
	
	
</body>
</html>
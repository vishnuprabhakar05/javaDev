<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<%@page import="java.sql.*"%>
<html>
<head>
<title>SECURE AUDITING</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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



<%

	
		String user_name=session.getAttribute("userkey").toString();
		System.out.println(user_name);
		String pass_word=session.getAttribute("passkey").toString();
		System.out.println(pass_word);
		String fname="";
		String lname="";
		String name="";
		String gender="";
		String country="";
		String state="";
		String district="";
		String hobbies="";
		String dob="";
		String email="";
		String mobile="";
		String qualification="";
		String path=session.getAttribute("imagepathkey").toString();
		
		
		
		
		
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/secure_auditing","root", "sa");
		Statement stmt=con.createStatement();
		
		
		ResultSet rs=stmt.executeQuery("select * from join_now where username='"+user_name+"' and password='"+pass_word+"'");
		
		if(rs.next())
		{
			 fname=rs.getString("firstname");
			 lname=rs.getString("lastname");
			 name=fname+" "+lname;
			 gender=rs.getString("gender");
			 country=rs.getString("country");
			 state=rs.getString("state");
			 district=rs.getString("district");
			 hobbies=rs.getString("hobbies");
			 
			 dob=rs.getString("dob");
			 
			 email=rs.getString("email");
			 mobile=rs.getString("mobile");
			 qualification=rs.getString("qualification");
			// path=rs.getString("imagepath");
			 
			

			
		}
		 
	

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
		<a href="sign_in.jsp"><img src="images/log.jpg"></a><span><%out.println(user_name);%></span>
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
					 <li><a href=""><i class="fa fa-times" aria-hidden="true"></i>DELETE ACCOUNT</a></li>
				</ul>
		    </div> 
	       </div>
		</div>
		<div class="blog-right">
         <h2 style="float: left;">MY PROFILE</h2> 
		 <img src="<%=path %>" style="width: 100px;float: right;margin-right: 35px;">
			<div class="form">
                
                    <div class="to1">
					<span>Name</span>
					 <input type="text" class="text" value='<%=name%>' onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=name%>';}">
					 <span>Gender</span>
					 <input type="text" class="text" value='<%=gender%>' onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=gender%>';}">
					 <span>Email</span>
					 <input type="text" class="text" value='<%=email%>'  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=email%>';}">
					 <span>DOB</span>
					 <input type="text" class="text" value='<%=dob%>'  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=dob%>';}">
					 <span>Country</span>
					 <input type="text" class="text" value='<%=country%>'  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=country%>';}">
					 <span>State</span>
					 <input type="text" class="text" value='<%=state%>'  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=state%>';}">
					 <span>District</span>
					 <input type="text" class="text" value='<%=district%>'  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=district%>';}">
					 <span>Hobbies</span>
					 <input type="text" class="text" value='<%=hobbies%>'  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=hobbies%>';}">
					 <span>Mobile Number</span>
					  <input type="text" class="text" value='<%=mobile%>'  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=mobile%>';}">
					  <span>Qualification</span>
					  <input type="text" class="text" value='<%=qualification%>'  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=qualification%>';}">
					  <span>Username</span>
					  <input type="text" class="text" value='<%=user_name %>' onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '<%=user_name %>';}">
				</div>
				
                
                
               
			   <div class="clear"></div>
			   <div style="margin-left: 80px;margin-top: 20px;">
               	<input type="button" value="MAKE AN EDIT">
				<a href="newsfeed.jsp"><input type="button" value="OK"></a>
					
            </div>
            </div>
         
		</div>
		
</div>

</div> 
</div> 

	
	
</body>
</html>

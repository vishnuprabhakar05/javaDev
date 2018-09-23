<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Account</title>
<link type="text/css" rel="stylesheet" href="css/delete_account.css?version=51" />
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<script type="text/javascript">
$(document).ready(function()
		{
				//alert("WORKING");
				$("#delete").click(function()
						{
							//alert("Clicked");
								var password=$("#password").val();
								var confirm_password=$("#c_password").val();
									if(password==""||confirm_password=="")
											{
												alert("Enter all fields");
												return false;
											}
									if(password!=confirm_password)
											{
												alert("Passwords are not same");
												return false;
											}
									else
										{
											$.getJSON("delete_account_Action.jsp?passwordkey="+password,function(json)
													{
														alert("JSON");
														var delete_pass=json[0].msg;
														alert(delete_pass);
														if(delete_pass=="success")
															{
																alert("Account Deleted");
																window.location.href="index.jsp";
															}
														else
															{
																window.loaction.href="delete_account.jsp";
															
															}
													});
										
										}
						});
		}); 


</script>
</head>
<body>
<div class="main">
	<div class="innerMain">
	<div class="container">
		<h2 style="color:#636363">DELETE ACCOUNT</h2>
			 <input type="text" style="width:230px" id="password" placeholder="Enter password to delete the account"><br><br>
			 <input type="text" style="width:230px" id="c_password" placeholder="Confirm password"><br><br>
			 <input type="button" style="cursor:pointer" value="DELETE" id="delete">
			 <span><input type="button" style="cursor:pointer" value="CANCEL" id="cancel"></span>
	</div>
		 
	
	</div>

</div>
	
</body>
</html>
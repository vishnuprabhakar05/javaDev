<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>View Uploaded Files</h1>
<%

	try
	{
		String user_name=session.getAttribute("userkey").toString();
		String pass_word=session.getAttribute("passkey").toString();
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/secure_auditing","root", "sa");
		Statement stmt=con.createStatement();
		
		ResultSet rs=stmt.executeQuery("select * from join_now where username='"+user_name+"' and password='"+pass_word+"'");
		if(rs.next())
		{
			String fname=rs.getString("firstname");
			String lname=rs.getString("lastname");
			
			String name=fname+" "+lname;
			String gender=rs.getString("gender");
			String country=rs.getString("country");
			String state=rs.getString("state");
			String district=rs.getString("district");
			String hobbies=rs.getString("hobbies");
			String dob=rs.getString("dob");
			String email=rs.getString("email");
			String mobile=rs.getString("mobile");
			String qualification=rs.getString("qualification");
			String path=rs.getString("imagepath");
			%>
				
				<img src="<%=path %>" width="200px" height="200px">
				<br><br><br>
			<%
		}
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}


%>

</body>
</html>
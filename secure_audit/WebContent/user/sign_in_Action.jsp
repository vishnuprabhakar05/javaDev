<%@page import="java.sql.*"%>
<%@page import="org.json.simple.*"%>
<%

try
{
	String user=request.getParameter("userkey");
	//System.out.println(user);
	session.setAttribute("userkey", user);
	String pass=request.getParameter("passkey");
	//System.out.println(pass);
	session.setAttribute("passkey", pass);
	
	String val="";
	
	
	JSONArray ja=new JSONArray();
	JSONObject jo=new JSONObject();
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_auditing","root","sa");
	Statement st=con.createStatement();
	
	String s="select firstname,username,password,imagepath from join_now where username='"+user+"' and password='"+pass+"'";
	ResultSet rs=st.executeQuery(s);
	
	if(rs.next())
		{
			String image=rs.getString("imagepath");
			String firstname=rs.getString("firstname");
			session.setAttribute("firstnamekey", firstname);
			session.setAttribute("imagepathkey", image);
			val="success";
			jo.put("msg",val);
		}
	else
		{
			val="fail";
			jo.put("msg",val);
		}
	
	ja.add(jo);
	out.println(ja);
	
	
	
}
catch(Exception e)
{

	System.out.println(e);	

}


%>
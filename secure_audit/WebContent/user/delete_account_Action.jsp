<%@page import="java.sql.*"%>
<%@page import="org.json.simple.*"%>
<%

try
{
	String username=session.getAttribute("userkey").toString();
	String password=request.getParameter("passwordkey");
	String val="";
	
	
	JSONArray ja=new JSONArray();
	JSONObject jo=new JSONObject();
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_auditing","root","sa");
	Statement st=con.createStatement();
	
	String s="delete from join_now where username='"+username+"' and password='"+password+"'";
	int a=st.executeUpdate(s);
	//System.out.println(a);
	
	if(a==1)
	
		{
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
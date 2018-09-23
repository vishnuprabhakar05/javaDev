<%@page import="java.sql.*"%>
<%@page import="org.json.simple.*"%>
<%
try
{
	//String old=request.getParameter("oldpasskey");
	String new_pass=request.getParameter("newpasskey");
	String conf_pass=request.getParameter("conf_passkey");
	String username=session.getAttribute("userkey").toString();
	System.out.println(username);
	String val="";
	
	JSONArray ja=new JSONArray();
	JSONObject jo=new JSONObject();
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_auditing","root","sa");
	Statement st=con.createStatement();
	
	String s="update join_now set password='"+new_pass+"',confirm_password='"+conf_pass+"' where username='"+username+"'";
	
	int i=st.executeUpdate(s);
		System.out.println(i);
		/*
		if(rs.next())
			{
				val="success";
				jo.put("update",val);
			
			
			}
	
	*/
	
	
}

catch(Exception e)
{
System.out.println(e);	


}












%>
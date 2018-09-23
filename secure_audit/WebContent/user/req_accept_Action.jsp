<%@page import="java.sql.*"%>
<%@page import="org.json.simple.*"%>
<%
try
{
	String sender=session.getAttribute("senderkey").toString();
	String receiver=session.getAttribute("userkey").toString();
	String val="";
	System.out.println("SENDER NAME"+" "+sender);
	JSONArray ja=new JSONArray();
	JSONObject jo=new JSONObject();
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/secure_auditing","root", "sa");
	Statement stmt=con.createStatement();
	
	String s="update friend_req set status=1 where sender='"+sender+"' and receiver='"+receiver+"'";
	int a=stmt.executeUpdate(s);
	
	System.out.println(a);
	
	if(a==1)
	{
		val="success";
		jo.put("msg",val);
		ja.add(jo);
		
	}
	
	else
	{
		val="fail";
		jo.put("msg",val);
		ja.add(jo);
	}
	out.println(ja);
}

catch(Exception e)
{
System.out.println(e);	

}








%>
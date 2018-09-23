<%@page import="org.json.simple.*"%>
<%@page import="java.sql.*"%>
<%
try
{
String receiver=session.getAttribute("userkey").toString();
System.out.println(receiver);
String val="";
String sender="",image_path="";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/secure_auditing","root", "sa");
Statement stmt=con.createStatement();


JSONArray ja=new JSONArray();
JSONObject jo1,jo2;

String s="select * from friend_req where receiver='"+receiver+"' and status=0";
ResultSet rs=stmt.executeQuery(s);

while(rs.next())
	{
		jo1=new JSONObject();
		jo2=new JSONObject();
		sender=rs.getString("sender");
		session.setAttribute("senderkey", sender);
		System.out.println("sender"+sender);
		image_path=rs.getString("image_path");
		System.out.println("img path"+image_path);

		jo1.put("request",sender);
		jo2.put("request",image_path);
		
		ja.add(jo1);
		ja.add(jo2);
		
		
	
	}
System.out.println(ja);
out.println(ja);
}

catch(Exception e)

{
System.out.println(e);	

}



%>
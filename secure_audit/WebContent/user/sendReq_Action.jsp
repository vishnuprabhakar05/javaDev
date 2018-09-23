<%@page import="org.json.simple.*"%>
<%@page import="java.sql.*"%>
<% 

try
{
String sender=request.getParameter("senderkey");
System.out.println("SENDER NAME :"+" "+ sender);
String receiver=request.getParameter("receiverkey");
System.out.println("REC NAME :"+" "+ receiver);
String sender_image=session.getAttribute("imagepathkey").toString();
System.out.println("IMG PATH :"+" "+ sender_image);
String val="";


JSONArray ja=new JSONArray();
JSONObject jo=new JSONObject();

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/secure_auditing","root", "sa");
Statement stmt=con.createStatement();





String s="insert into friend_req(sender,receiver,status,image_path) values ('"+sender+"','"+receiver+"',0,'"+sender_image+"')";
stmt.executeUpdate(s);

val="success";
jo.put("msg",val);
ja.add(jo);
out.println(ja);
}

catch(Exception e)
{
	
	System.out.println(e);
}








%>
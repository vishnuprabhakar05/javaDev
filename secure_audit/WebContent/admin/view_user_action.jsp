<%@page import="java.sql.*"%>
<%@page import="org.json.simple.*"%>
<%
try
{
	JSONArray ja=new JSONArray();
	JSONObject jo;
	JSONObject jo1;
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/secure_auditing","root", "sa");
	Statement stmt=con.createStatement();
	
	String s="select * from join_now";
	ResultSet rs=stmt.executeQuery(s);
	
	while(rs.next())
		{
			
			jo=new JSONObject();
			jo1=new JSONObject();
			String user=rs.getString("username");
			System.out.println(user);
			String imagepath=rs.getString("imagepath");
			System.out.println(imagepath);
			jo.put("viewkey",user);
			jo1.put("viewkey2",imagepath);
			ja.add(jo);
			ja.add(jo1);
		
		}
			
			System.out.println(ja);
			out.println(ja);


}


catch(Exception e)
{
	System.out.println();	


}












%>

<%@page import="java.sql.*"%>
<%@page import="org.json.simple.*"%>
<%
try
{
String search_item=request.getParameter("searchkey");
System.out.println("SEARCH ITEM "+search_item);
String val="";
String name="";
String image="";




Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/secure_auditing","root", "sa");
Statement stmt=con.createStatement();

String s="select firstname,imagepath from join_now where firstname='"+search_item+"'";

ResultSet rs=stmt.executeQuery(s);
JSONArray ja=new JSONArray();
JSONObject jo;		
JSONObject jo1;			

		if (rs.next())
		{
			jo=new JSONObject();
			jo1=new JSONObject();

			name=rs.getString("firstname");
			image=rs.getString("imagepath");
		//	System.out.println("NAME :"+name);
			jo.put("namekey",name);
			jo1.put("namekey",image);
			
			ja.add(jo);
			ja.add(jo1);
			out.print(ja);
			System.out.println(ja);
			
		}

		

}

catch(Exception e)
{
System.out.println(e);	
}


%>
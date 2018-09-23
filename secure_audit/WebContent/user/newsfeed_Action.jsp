<%@page import="java.sql.*"%>
<%@page import="org.json.simple.*"%>
<%

try
{
	String  img_path="";
	String  story="";
	String name="";
	
	
	JSONArray ja=new JSONArray();
	JSONObject jo1;
	JSONObject jo2;
	JSONObject jo3;
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/secure_auditing","root", "sa");
	Statement stmt=con.createStatement();
	
	
	String s="select * from stories";
	ResultSet rs=stmt.executeQuery(s);
	
while(rs.next())
		{
			jo1=new JSONObject();
			jo2=new JSONObject();
			jo3=new JSONObject();
			
			name=rs.getString("name");
			img_path=rs.getString("image");
			story=rs.getString("story");
			
			System.out.println("Name :"+name+"Image :"+img_path+"Story :"+story);
			
			jo1.put("name",name);
			jo2.put("story",story);
			jo3.put("img_path",img_path);
			
			ja.add(jo1);
			ja.add(jo2);
			ja.add(jo3);
			
			
			
		
		}
	
out.println(ja);
System.out.println(ja);
	
	
}

catch(Exception e)
{
	System.out.println(e);	
}














%>
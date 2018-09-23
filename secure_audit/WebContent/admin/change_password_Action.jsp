<%@page import="java.sql.*"%>
<%@page import="org.json.simple.*"%>


<%
try
		{
			String new_pass=request.getParameter("newpasskey");
			String username=session.getAttribute("adminuserkey").toString();
			System.out.println(username);
			
			System.out.println(new_pass);
			System.out.println("USERNAME"+username);
			System.out.println("NEW PASSWORD"+new_pass);
			/* String conf_pass=request.getParameter("c_passkey");
			System.out.println(conf_pass); */
			String val="";
			
			JSONArray ja=new JSONArray();
			JSONObject jo=new JSONObject();
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/secure_auditing","root","sa");
			Statement st=con.createStatement();
			
			String s="update admin set password='"+new_pass+"' where username='"+username+"'";
			int a=st.executeUpdate(s);
			System.out.println(a);
			
			if(a==1)
			{
				val="success";
				jo.put("update",val);
				
			}
			else
				{
					val="failure";
					jo.put("update",val);
				}
			ja.add(jo);
			out.println(ja);
			
			}

catch(Exception e)
{
	System.out.println(e);	

}






%>
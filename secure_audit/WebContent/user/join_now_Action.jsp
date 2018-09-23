<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*,java.io.*" errorPage=""
	import="net.sf.json.JSONArray,org.json.simple.JSONObject"%>
	
	<%@ page import="java.io.*,java.util.*,javax.servlet.*,java.sql.*"%>
	<%@ page import="javax.servlet.http.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@page import="java.util.Date,java.sql.*,java.util.*,java.text.SimpleDateFormat;"%>  
<%
	try {
		
		String filepath;
		String outputstring;
		String type, extension;
		int imageNum = 0;
		String imgname="";
		FileItem item = null;
		File uploadedFile=null;
		String fname=null;
	
		String dbpath="";
		String id1="0";
		int setflag;
		String imgfilename="";
	
		// Variables of form action field
		String FIRSTNAME="",LASTNAME="",GENDER="",COUNTRY="",STATE="",DISTRICT="",HOBBIES="",DOB="",EMAIL="",MOBILE="",QUAL="",WORKING_OR_NOT="",FIELD="",USERNAME="",PASSWORD="",CONFIRM_PASSWORD="",IMAGEPATH="";
		
		
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		System.out.println("isMulti"+""+isMultipart);
		if (isMultipart) {
			
		FileItemFactory factory = new DiskFileItemFactory();

			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload(factory);

				
				// Parse the request
				List items = upload.parseRequest(request);
				Iterator iterator = items.iterator();
				while (iterator.hasNext()) {

					item = (FileItem) iterator.next();
					
					System.out.println("Item="+item);
					if (!item.isFormField()) {
						
						String fileName = item.getName();
						System.out.println("Filename="+fileName);
						String root = getServletContext().getRealPath("/");
						File path = new File("/media/adhoc/Vishnu/vishnu/secure_audit/WebContent/user/user_img/");
						if (!path.exists()) {
							boolean status = path.mkdirs();
						}
						
						GregorianCalendar ob=new GregorianCalendar();
						ob.setTime(new Date());
						
						ob.add(Calendar.DAY_OF_MONTH,0);
						Date d1=ob.getTime();
						System.out.println(d1);
						SimpleDateFormat df1 = new SimpleDateFormat("dd-MMM-yyyyhma");
						String formattedDate1 = df1.format(d1);
						
						imgfilename=formattedDate1+fileName;
						uploadedFile = new File(path + "/"+imgfilename);
						
						if(!uploadedFile.exists())
						{
							imageNum++;
							uploadedFile = new File(path + "/"+imgfilename);
						}
					
						filepath = uploadedFile.getAbsolutePath();
						extension = filepath.substring(filepath
								.lastIndexOf("."));
						item.write(uploadedFile);
						
						
						
					}
					else
					{
						
						// Get datas from form except file(image,video,audio,file etc)
						
						if(item.getFieldName().equals("firstname"))
						{
							FIRSTNAME=item.getString();
							
						}
						else if(item.getFieldName().equals("lastname"))
						{
							LASTNAME=item.getString();
						}
						else if(item.getFieldName().equals("gender"))
						{
							GENDER=item.getString();
						}
						else if(item.getFieldName().equals("country"))
						{
							COUNTRY=item.getString();
						}
						else if(item.getFieldName().equals("state"))
						{
							STATE=item.getString();
						}
						else if(item.getFieldName().equals("district"))
						{
							DISTRICT=item.getString();
						}
						else if(item.getFieldName().equals("hobbies"))
						{
							HOBBIES=item.getString();
						}
						else if(item.getFieldName().equals("dob"))
						{
							DOB=item.getString();
						}
						else if(item.getFieldName().equals("email"))
						{
							EMAIL=item.getString();
						}
						else if(item.getFieldName().equals("mobile"))
						{
							MOBILE=item.getString();
						}
						else if(item.getFieldName().equals("qualification"))
						{
							QUAL=item.getString();
						}
						else if(item.getFieldName().equals("working"))
						{
							WORKING_OR_NOT=item.getString();
							System.out.println(WORKING_OR_NOT);
							
						}
						 else if(item.getFieldName().equals("field"))
						{
							FIELD=item.getString();
						}
						
						
						else if(item.getFieldName().equals("username"))
						{
							USERNAME=item.getString();
						}
						else if(item.getFieldName().equals("password"))
						{
							PASSWORD=item.getString();
						}
						else if(item.getFieldName().equals("confirm_password"))
						{
							CONFIRM_PASSWORD=item.getString();
						}
						
					}
					
					
				}
		}
		
		System.out.println("CONFIRM PASSWORD :"+CONFIRM_PASSWORD);
		//System.out.println(imgfilename);
		dbpath="user_img/"+imgfilename;
		System.out.println(dbpath);
		fname=uploadedFile.getName();
		imageNum++;
		
		
		
		
try{
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("Jdbc:mysql://localhost:3306/secure_auditing","root", "sa");
	Statement stmt=con.createStatement();

	stmt.executeUpdate("insert into join_now(firstname,lastname,gender,country,state,district,hobbies,dob,email,mobile,qualification,working,field,imagepath,username,password,confirm_password) values('"+FIRSTNAME+"','"+LASTNAME+"','"+GENDER+"','"+COUNTRY+"','"+STATE+"','"+DISTRICT+"','"+HOBBIES+"','"+DOB+"','"+EMAIL+"','"+MOBILE+"','"+QUAL+"','"+WORKING_OR_NOT+"','"+FIELD+"','"+dbpath+"','"+USERNAME+"','"+PASSWORD+"','"+CONFIRM_PASSWORD+"')");
		
	}
catch(Exception e)
{
	e.printStackTrace();
}
		
%>
<script type="text/javascript">
alert("ACCOUNT CREATED");
window.location.href="sign_in.jsp";
</script>

<%


	} catch (Exception e) {
		System.out.print(e);
	}
%>

		


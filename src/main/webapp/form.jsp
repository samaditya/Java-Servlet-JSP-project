<%@ page import = "java.sql.*" %>

<%

	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String password = request.getParameter("password");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test" , "root" , "1234");
		PreparedStatement ps = 
		conn.prepareStatement("INSERT INTO registration(name,email,phone,password) values(?,?,?,?)");
		ps.setString(1 , name);
		ps.setString(2 , email);
		ps.setString(3 , phone);
		ps.setString(4 , password);
		
		int x = ps.executeUpdate();
		if(x>0){
			out.println("Registration successful");
		}else{
			out.println("Registration Failed");
		}
		
	}catch(Exception e){
		out.println(e);
	}
%>
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<a href = "login.html"><button class = "btn btn-success">LOG-IN </button></a>
    

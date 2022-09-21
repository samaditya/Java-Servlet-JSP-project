<%@ page import = "java.io.*,java.util.*" %>
<%
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email.equals("john@gmail.com") && password.equals("1234"))
		{
				out.println("Login Successful");
	      }
		if(email.equals("samadityaj@gmail.com") && password.equals("1234"))
		{
				out.println("Login Successful");
	      }
		else{			
			out.println("Login Successful");
		}

%>
<a href = "buy.jsp"> Buy HERE</a>
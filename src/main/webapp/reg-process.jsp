<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String type=request.getParameter("type");
String quantity=request.getParameter("quantity");
String amount=request.getParameter("amount");
String address=request.getParameter("address");



try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1234");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into users(fname,lname,email,type,quantity,amount,address)values('"+fname+"','"+lname+"','"+email+"','"+type+"','"+quantity+"','"+amount+"','"+address+"')");
out.println("Thank you for register ! Please <a href='index.html'>Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
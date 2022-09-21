<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "student";
String userid = "root";
String password = "1234";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
<body>



<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>firesultSett name</td>
<td>last name</td>
<td>City name</td>
<td>Email</td>



</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from useresultSet";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<table class="table table-dark">
<thead>
<tr>
<th scope="col">#</th>
<th scope="col">First Name</th>
<th scope="col">Last Name</th>
<th scope="col">Budget</th>
<th scope="col">Brand</th>
<th scope="col">Address</th>
<th scope="col">Email</th>
</tr>
</thead>
<tbody>
<tr>
<th scope="row">1</th>
<td><%=resultSet.getString("lname") %></td>
</tr>
<tr>
<th scope="row">2</th>
</tr>
<tr>
<th scope="row">3</th>
</tr>
</tbody>
</table>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
<%@page import="java.sql.*" %>

<%
	String nm = request.getParameter("nm");
	String email = request.getParameter("email");
	String cno = request.getParameter("cno");
	String comment = request.getParameter("comment");

	try{
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db24","root","");		
		Statement st = cn.createStatement();
		st.executeUpdate("INSERT INTO `feedback` (`id`, `nm`, `email`, `cno`, `comment`)VALUES (NULL, '"+nm+"', '"+email+"', '"+cno+"', '"+comment+"')");
		out.println("Record Insert ");		
	}catch(Exception e){
		out.println("Record Not Insert ");
	}
%>








<%@page import="java.sql.*" %>

<%
	try{
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db24","root","");		
		Statement st = cn.createStatement();
		st.execute("SELECT * FROM `feedback`");
		ResultSet rs = st.getResultSet();
		out.print("<table border=1>");
		while(rs.next())
		{
			out.print("<tr>");
			out.print("<td>"+rs.getString(1)+"</td>");
			out.print("<td>"+rs.getString(2)+"</td>");
			out.print("<td>"+rs.getString(3)+"</td>");
			out.print("<td>"+rs.getString(4)+"</td>");
			out.print("<td>"+rs.getString(5)+"</td>");
			out.print("<td><a href='recupd.jsp?id="+rs.getString(1)+"'>Update</a></td>");
			out.print("</tr>");
		}
		out.print("</table>");
	}catch(Exception e){
		out.println("Record Not Insert ");
	}
%>








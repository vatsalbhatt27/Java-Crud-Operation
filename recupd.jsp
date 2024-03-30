<%@page import="java.sql.*" %>

<%
	try{
		Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db24","root","");

		String id = request.getParameter("id");
		out.print("<br>Update id is : " + id + "<br>");

		Statement st = cn.createStatement();

		st.execute("SELECT * FROM `feedback` where id ="+id);

		ResultSet rs = st.getResultSet();
		out.print("<table border=1>");
		while(rs.next())
		{	
			out.print("<form action=' ' method='post'>");
			out.print("<tr><td>Name : </td><td><input type='text' name='nm' value='"+rs.getString(2)+"'></td></tr>");
			out.print("<tr><td>E-Mail : </td><td><input type='text' name='email' value='"+rs.getString(3)+"'></td></tr>");
			out.print("<tr><td>Mobile No : </td><td><input type='text' name='cno' value='"+rs.getString(4)+"'></td></tr>");
			out.print("<tr><td>Comment : </td><td><input type='text' name='comment' value='"+rs.getString(5)+"'></td></tr>");
			out.print("<tr><td colspan=2><input type='submit' name='submit' value='Update'></td></tr>");
			out.print("</form>");
		}
		out.print("</table>");
	}catch(Exception e){
		out.println("Record Not Insert ");
	}
%>








<%@page import="java.sql.*"%>
<%
    try{

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Jitesh@123");

        PreparedStatement stmt = con.prepareStatement("update student set name = ?,phone = ? where id = ?");  

        stmt.setString(1,request.getParameter("name"));

		stmt.setString(2,request.getParameter("phone"));

		stmt.setString(3,request.getParameter("id"));
        
        stmt.executeUpdate();

        response. sendRedirect("index.jsp");
 
    }catch(Exception e){
                        
        out.println(e.getMessage());
                                    
    }
%>
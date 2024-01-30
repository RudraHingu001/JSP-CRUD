<%@page import="java.sql.*"%>
<%
    try{
        String sid = request.getParameter("id");  
                        
        int id=Integer.parseInt(sid); 
        
        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Jitesh@123");

        String s = "delete from student where id="+id;

		PreparedStatement stmt = con.prepareStatement(s);  

		stmt.executeUpdate();

        response. sendRedirect("index.jsp");
 
    }catch(Exception e){
                        
        out.println(e.getMessage());
                                    
    }
%>
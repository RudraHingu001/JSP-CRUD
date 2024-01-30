<%-- <%@page import="java.sql.DriverManager,java.sql.Connection,java.sql.Statement,java.sql.ResultSet"%> --%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://kit.fontawesome.com/7e48ff3974.js" crossorigin="anonymous"></script>
        <title>CRUD | view Student</title>
    </head>
    <body>
        <table border="5" class="table table-striped">
            <thead>
                <%
                    try{

                        String sid = request.getParameter("id");  
                        
                        int id=Integer.parseInt(sid);  

                        Class.forName("com.mysql.jdbc.Driver");

                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Jitesh@123");

                        String s = "select * from student where id ="+id;

                        PreparedStatement stmt = con.prepareStatement(s);  

                        ResultSet rs = stmt.executeQuery();

                        while(true){
                
                            if(rs.next()){

                                out.println("<tr>");
                                out.println("<td colspan=2><center>View Student</center></td>");
                                out.println("</tr>");
                                out.println("<tr>");    
                                out.println("<th scope='col'>Id</th>");
                                out.println("<td>"+rs.getInt("id")+"</td>");
                                out.println("</tr>");
                                out.println("<tr>");
                                out.println("<th scope='col'>Name</th>");
                                out.println("<td>"+rs.getString("name")+"</td>");
                                out.println("</tr>");
                                out.println("<tr>");
                                out.println("<th scope='col'>Phone Number</th>");
                                out.println("<td>"+rs.getLong("phone")+"</td>");
                                out.println("</tr>");
                                out.println("<tr>");
                                out.println("<td colspan=2><center><a href='index.jsp' class='btn btn-primary'>Back</a></center></td>");
                                out.println("</tr>");

                            }else{

                                return;
                            }
                        } 

                    }catch(Exception e){
                        
                        out.println(e);
                                    
                    }
                %>
            </thead>
        </table>
    <body>
</html>
<!-- Addition program  -->
<!-- <html>
<body>
    <form action="hello">
        Enter 1st Number : <input type="text" name="num1"><br>
        Enter 2nd Number : <input type="text" name="num2"><br>
        <input type="submit"><br>
    </form>
</body>
</html> -->
<!-- Addition programm end  -->

<!-- Registration form Start  -->
<!-- <html>
    <head>
        <title>Registration Form</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <form class="form-horizontal" method="POST" action="hello">
              <h1>Registion Form</h1>  
              <div class="form-group">
                <label class="control-label col-sm-2" for="email">Email:</label>
                <div class="col-sm-10">
                  <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">Password:</label>
                <div class="col-sm-10">          
                  <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
                </div>
              </div>
              <div class="form-group">        
                <div class="col-sm-offset-2 col-sm-10">
                  <div class="checkbox">
                    <label><input type="checkbox" name="remember"> Remember me</label>
                  </div>
                </div>
              </div>
              <div class="form-group">        
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-default">Submit</button>
                </div>
              </div>
            </form>
        </div>        
    </body>
</html> -->
<!-- Registration form end  -->

<!-- crud program -->
<html>

    <!-- <%@page import="java.sql.*"%> -->
    <head>

      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
      <script src="https://kit.fontawesome.com/7e48ff3974.js" crossorigin="anonymous"></script>
      <title>Admin Dashboard</title>
    
    </head>
    <body>
      <div class="container">
        <div class="row">
          <div class="col-12">
            <h1>Admin Dashboard</h1>
            <a href="add_std_form.jsp" class='btn btn-primary'>Add Student</a>
            <br><br>
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th scope="col">Id</th>
                  <th scope="col">Name</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
                    <%@page import="java.sql.DriverManager,java.sql.Connection,java.sql.Statement,java.sql.ResultSet"%>
                    <% 
                    
                    try{

                      Class.forName("com.mysql.jdbc.Driver");
                    
                      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Jitesh@123");

                      Statement stmt = con.createStatement();
                          
                      ResultSet rs = stmt.executeQuery("select * from student");
                              
                      while(true){
                              
                        if(rs.next()){

                          out.println("<tr>");
                          out.println("<td>"+rs.getInt("id")+"</td>");
                          out.println("<td>"+rs.getString("name")+"</td>");  
                          out.println("<td>");
                          out.println("<a href='view.jsp?id="+rs.getInt("id")+"' class='btn btn-primary'>View</a>");
                          out.println("<a href='edit.jsp?id="+rs.getInt("id")+"' class='btn btn-success'>Edit</a>");
                          out.println("<a href='delete.jsp?id="+rs.getInt("id")+"' class='btn btn-danger'>Delete</a>");
                          out.println("</td>");
                          out.println("</tr>");

                        }else {

                          return;
                        }
                      }
                  

                    }catch(Exception e){
                        out.println(e);
                    
                    }

                    %>
              </tbody>
            </table>
          </div>
        </div>
      </div>
</body>
</html>

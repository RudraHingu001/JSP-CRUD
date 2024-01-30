<%-- <%@page import="java.sql.DriverManager,java.sql.Connection,java.sql.Statement,java.sql.ResultSet"%> --%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://kit.fontawesome.com/7e48ff3974.js" crossorigin="anonymous"></script>
        <title>CRUD | Add Student</title>
    </head>
    <body>
        <div class="container">
        <center><h1>Add new Student</h1></center>
        <form action="add_std.jsp">
            <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
            </div>
            <div class="form-group">
            <label for="phone">Phone Number:</label>
            <input type="number" class="form-control" id="phone" placeholder="Enter Phone" name="phone" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        </div>
    <body>
</html>
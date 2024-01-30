import javax.servlet.http.*;  
import javax.servlet.*;  
// import javax.servlet.annotation.*;
import java.io.*;  

// @WebServlet("/servlet")

public class servlet extends HttpServlet{  
    public void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException  {  
        
        System.out.println("Hello");
    }
}  
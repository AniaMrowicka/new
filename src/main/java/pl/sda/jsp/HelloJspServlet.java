package pl.sda.jsp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloJspServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
      throws ServletException, IOException{
        PrintWriter out = resp.getWriter();
        out.print("Hello World!!!");
    }
}

package pl.sda.jsp;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

public class HelloJspServlet extends HttpServlet {
    private static int instanceNumber = 0;
    private int currentInstanceNumber;

    public HelloJspServlet() {
        instanceNumber++;
        currentInstanceNumber = instanceNumber;
        System.out.println("New Hello Servlet!!!");
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        out.print("Hello World!!!");

        String nameParam = getServletConfig().getInitParameter("name");
        out.println(nameParam);
        out.println("Instance Number " + currentInstanceNumber);
        out.println("Number of all instances " + instanceNumber);
        String servletName = getServletConfig().getServletName();
        out.println("Servlet name " + servletName);


        ServletContext application = getServletContext();
        Map users = (Map) getServletContext().getAttribute("users");
        out.println("User list " + users);

        HttpSession session = req.getSession();
        if (session != null) {
            out.println("Current User: " + session.getAttribute("currentUser"));
        }
    }
}

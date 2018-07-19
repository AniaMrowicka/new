package pl.sda.jsp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class UserCreationServlet extends HttpServlet {


    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        Connection c = null;
        Statement s = null;
        ResultSet rs = null;
        PrintWriter out = resp.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/library?useSSL=false&serverTimezone=Europe/Warsaw",
                    "root",
                    "mysql"
            );
            s= c.createStatement();
            rs=s.executeQuery("SELECT * FROM books");
            int index=0;
            while(rs.next()){
                index++;
                out.println("Row nr " + index);
                out.println("id: " + rs.getString(1));
                out.println("title: " + rs.getString(2));
                out.println("author: " + rs.getString(3));
                out.println(rs.getString(1));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                c.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                s.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
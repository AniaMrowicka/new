package pl.sda.jsp;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AuthenticationFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        String url = request.getRequestURI();
        HttpSession session = request.getSession();

        if (session.getAttribute("currentUser") == null
                 && !url.endsWith("/loginForm.jsp")
                && !url.endsWith("/login.jsp")
                && !url.endsWith("/createUser.jsp")
                && !url.endsWith("/user.jsp")) {
            response.sendRedirect("/DemoJSP/application/loginForm.jsp");
        } else {
            filterChain.doFilter(request, response);
        }
    }


    @Override
    public void destroy() {

    }
}

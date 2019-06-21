package servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(
        filterName = "authenticationFilter",
        urlPatterns = "/*"
        //servletNames = {"LoginServlet"}
)
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpSession currentUserSession = ((HttpServletRequest) request).getSession();
        UserDB us=new UserDB();
        String username=currentUserSession.getAttribute("userName")==null?"":currentUserSession.getAttribute("userName").toString();
         String currentRequest=((HttpServletRequest) request).getContextPath();
         String currentUrl=((HttpServletRequest) request).getRequestURI();
         boolean isLoginRequest=currentUrl.equals(currentRequest+"/login") || currentUrl.equals(currentRequest+"/login.jsp");
         boolean isValidUser=username!="" && us.getUsers().stream().filter(user -> user.getUserName().equals(username)).count()>0;
        if ( isLoginRequest || isValidUser)
            chain.doFilter(request, response);
        else
        {
            HttpServletResponse resp=(HttpServletResponse)response;
           // resp.sendError(HttpServletResponse.SC_UNAUTHORIZED);

            ((HttpServletResponse) response).sendRedirect("login.jsp");
        }
    }

    @Override
    public void destroy() {

    }
}

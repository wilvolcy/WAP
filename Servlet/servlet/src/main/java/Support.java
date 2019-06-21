

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;
@WebServlet("/support")
public class Support extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispactcher= req.getRequestDispatcher("/support.jsp");
        String name=req.getParameter("name");
        String email=req.getParameter("email");
        String supportEmail="cshelpdesk@mum.edu";
        String ticketId="CSticket"+(new Random()).nextInt();
        req.setAttribute("userName",name);
        req.setAttribute("email",email);
        req.setAttribute("supportEmail",supportEmail);
        req.setAttribute("ticketId",ticketId);
        dispactcher.forward(req,resp);
    }
}

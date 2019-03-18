package training.web.application.servlets;

import training.web.application.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * The Servlet that verify user data.
 * @author Ihor Savchenko
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        HttpSession session = req.getSession();

        if(login.equals("admin") && password.equals("admin")){
            User user = new User("admin", "admin", "Oleg", "Olegov", "some@gmail.com");
            session.setAttribute("user", user);
        }

        resp.sendRedirect(String.format("%s%s", req.getContextPath(), "/enter"));
    }
}

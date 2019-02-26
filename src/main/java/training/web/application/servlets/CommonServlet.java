package training.web.application.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * The Servlet that handles the entering common users (including Guest) on the main page.
 * @author Ihor Savchenko
 */
public class CommonServlet extends HttpServlet {

    private static final String NAME = CommonServlet.class.getName();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/views/Main.jsp");
        dispatcher.forward(req, resp);
    }
}

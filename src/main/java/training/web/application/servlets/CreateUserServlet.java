package training.web.application.servlets;

import training.web.application.dao.CommonDao;
import training.web.application.dao.CommonDaoJdbc;
import training.web.application.dao.DBException;
import training.web.application.model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Created by Adnmin on 3/19/2019.
 */
public class CreateUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String email = req.getParameter("email");
        CommonDao commonDao = new CommonDaoJdbc();

        try {
            commonDao.addUser(login, password, name, surname, email);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new DBException("Creating of user in data base is failed", e);
        }

        resp.sendRedirect(String.format("%s%s", req.getContextPath(), "/afterCreate"));
    }
}

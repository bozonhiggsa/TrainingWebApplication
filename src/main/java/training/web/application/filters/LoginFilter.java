package training.web.application.filters;

import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * The Filter subclass that validates fields data while processing LOGin any User.
 * @author Ihor Savchenko
 */
public class LoginFilter extends BaseFilter {

    private static final String NAME = LoginFilter.class.getName();

    public void doFilter(HttpServletRequest req, HttpServletResponse resp,
                         FilterChain filterChain) throws IOException, ServletException {

        Boolean incorrectFieldFound = false;

        Pattern loginPattern = Pattern.compile("^[A-Za-z_]([A-Za-z\\d_]{2,19})$");
        Pattern passwordPattern = Pattern.compile("^[\\w]{5,20}$");

        Matcher loginMatcher = loginPattern.matcher(req.getParameter("login"));
        Matcher passwordMatcher = passwordPattern.matcher(req.getParameter("password"));

        if(!loginMatcher.matches()){
            incorrectFieldFound = true;
        }
        else if(!passwordMatcher.matches()){
            incorrectFieldFound = true;
        }

        if(incorrectFieldFound){
            RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/views/ErrorLogin.jsp");
            dispatcher.forward(req, resp);
        }
        else filterChain.doFilter(req, resp);
    }
}

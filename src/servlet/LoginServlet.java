package servlet;

import pojo.User;
import service.Userservicce;
import service.impl.Userserviceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        Userservicce service = new Userserviceimpl();
        User user = service.getUserByusername(username);

        if (user != null && user.getPassword().equals(password)) {

            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            resp.sendRedirect(req.getContextPath()+"/index.jsp");

        }else {

            String error = "用户名和密码错误";
            req.setAttribute("error", error);
            req.getRequestDispatcher("login.jsp").forward(req,resp);

        }

    }
}

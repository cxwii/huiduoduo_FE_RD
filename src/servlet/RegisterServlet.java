package servlet;

import org.apache.commons.beanutils.BeanUtils;
import pojo.User;
import service.Userservicce;
import service.impl.Userserviceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import java.util.UUID;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String telephone = req.getParameter("telephone");
        String sex = req.getParameter("sex");
        String birthday = req.getParameter("birthday");
        String address = req.getParameter("address");


        Map<String, String[]> map = req.getParameterMap();


        User user = new User();
        user.setUid(UUID.randomUUID().toString());


        user.setState(0);

        try {
            BeanUtils.populate(user,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
//        user.setUsername(username);
//        user.setPassword(password);
//        user.setName(name);
//        user.setEmail(email);
//        user.setTelephone(telephone);
//        user.setBirthday(birthday);
//        user.setSex(sex);
//        user.setState(0);
//        user.setAddress(address);

        Userservicce service = new Userserviceimpl();
        service.addUser(user);

        resp.sendRedirect("login.jsp");

    }
}

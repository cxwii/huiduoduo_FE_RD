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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/UpdateUserInfoServlet")
public class UpdateUserInfoServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        String uid = req.getParameter("uid");
        String password = req.getParameter("password");
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String telephone = req.getParameter("telephone");
        String sex = req.getParameter("sex");
        String birthday = req.getParameter("birthday");
        String address = req.getParameter("address");

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

//        user.setPassword(password);
//        user.setAddress(address);
//        user.setBirthday(birthday);
//        user.setName(name);
//        user.setEmail(email);
//        user.setTelephone(telephone);
//        user.setSex(sex);

        Map<String, String[]> map = req.getParameterMap();

        try {
            BeanUtils.populate(user,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        Userservicce service = new Userserviceimpl();
        service.updateUserInfo(user);

        session.setAttribute("user",user);
        resp.sendRedirect("user_info.jsp");

    }
}

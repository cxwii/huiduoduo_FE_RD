package servlet;

import pojo.Order;
import pojo.User;
import service.OrderService;
import service.impl.OrderServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/OrderListServlet")
public class OrderListServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String currentPages = req.getParameter("currentPage");

        int currentPage = Integer.parseInt(currentPages);

        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        OrderService service = new OrderServiceimpl();

        if (user == null) {
            resp.sendRedirect("login.jsp");
        }else {
            List<Order> list = service.getOrderByUid(user.getUid());

            ArrayList<Order> list1 = new ArrayList<>();

            int n = 6;

            for (int i = (currentPage - 1) * n; i < currentPage * n && i < list.size(); i++) {
                list1.add(list.get(i));
            }

            int totalPage = (list.size() - 1) / n + 1;

            req.setAttribute("totalPage", totalPage);
            req.setAttribute("currentPages", currentPage);
            req.setAttribute("orderList", list1);
            req.getRequestDispatcher("order_list.jsp").forward(req, resp);

        }

    }
}

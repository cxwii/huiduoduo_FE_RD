package servlet;

import pojo.Order;
import pojo.Orderitem;
import pojo.Product;
import pojo.User;
import service.ProductService;
import service.impl.OrderServiceimpl;
import service.impl.ProductServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@WebServlet("/ProductInfoServlet")
public class ProductInfoServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        String pid = req.getParameter("pid");

        ProductService service = new ProductServiceimpl();
        Product product = service.getProductByPid(pid);


        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("user");
        Order order = new Order();
        String oid = UUID.randomUUID().toString();
        order.setOid(oid);
        order.setName(user.getName());
        order.setAddress(user.getAddress());
        order.setTelephone(user.getTelephone());
        order.setState(0);
        order.setUid(user.getUid());
        List<Orderitem> list = new ArrayList<>();
        order.setOrderItems(list);
        OrderServiceimpl orderService = new OrderServiceimpl();
        orderService.addOrder(order);
        req.setAttribute("order", order);

        req.setAttribute("product", product);
        req.getRequestDispatcher("product_info.jsp").forward(req, resp);
    }
}

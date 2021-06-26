package servlet;


import pojo.*;
import service.impl.OrderServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;
import javax.xml.ws.Response;
import java.io.IOException;
import java.util.*;

@WebServlet("/QueDingOrderServlet")
public class QueDingOrderServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        HttpSession session = req.getSession();
        User user = (User)session.getAttribute("user");

        Cart cart = (Cart) session.getAttribute("cart");
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

        System.out.println("list----"+list);

//        Set<Map.Entry<String, CartItem>> entries = cart.getCartItems().entrySet();
//        for (Map.Entry<String, CartItem> cartItem : entries) {
//            Orderitem orderitem = new Orderitem();
//
//            orderitem.setItemid(UUID.randomUUID().toString());
//            orderitem.setProduct(cartItem.getValue().getProduct());
//            orderitem.setCount(cartItem.getValue().getBuyNum());
////                orderitem.setSubtotal(cartItem.getValue().getSubTotal());
//            orderitem.setOid(oid);
//            list.add(orderitem);
//
//            System.out.println("orderitem-----"+orderitem);
//
//        }


        OrderServiceimpl orderService = new OrderServiceimpl();
        orderService.addOrder(order);

        session.removeAttribute("cart");
        req.setAttribute("order", order);

        System.out.println("order------"+order);

        req.getRequestDispatcher("account.jsp").forward(req, resp);

    }
}

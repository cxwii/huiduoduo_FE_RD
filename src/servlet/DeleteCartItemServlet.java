package servlet;

import pojo.Cart;
import pojo.CartItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet("/DeleteCartItemServlet")
public class DeleteCartItemServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pid = req.getParameter("pid");
        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Map<String, CartItem> cartItems = cart.getCartItems();
        cartItems.remove(pid);
        if (cartItems.size() == 0) {
            session.removeAttribute("cart");
        }
        resp.sendRedirect("cart.jsp");
    }
}

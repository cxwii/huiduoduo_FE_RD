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

@WebServlet("/UpdateBuyNumServlet")
public class UpdateBuyNumServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pid = req.getParameter("pid");
        String s = req.getParameter("buyNum");
        int buyNum = Integer.parseInt(s);

        HttpSession session = req.getSession();

        Cart cart = (Cart) session.getAttribute("cart");

        Map<String, CartItem> cartItems = cart.getCartItems();

        cartItems.get(pid).setBuyNum(buyNum);

        resp.sendRedirect("cart.jsp");

    }
}

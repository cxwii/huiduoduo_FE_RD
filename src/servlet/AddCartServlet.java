package servlet;

import pojo.Cart;
import pojo.CartItem;
import pojo.Product;
import service.ProductService;
import service.impl.ProductServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet("/AddCartServlet")
public class AddCartServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        String pid = req.getParameter("pid");

        String i = req.getParameter("buyNum");
        int buyNum = Integer.parseInt(i);

        ProductService service = new ProductServiceimpl();
        Product productByPid = service.getProductByPid(pid);

        CartItem cartItem = new CartItem();
        cartItem.setProduct(productByPid);
        cartItem.setBuyNum(buyNum);

        HttpSession session = req.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) {
            cart = new Cart();
        }
            Map<String, CartItem> cartItems = cart.getCartItems();
            cartItems.put(pid, cartItem);

            session.setAttribute("cart", cart);

            resp.sendRedirect("cart.jsp");

    }
}

package servlet;

import pojo.Product;
import service.ProductService;
import service.impl.ProductServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ProductListServlet")
public class ProductListServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        String currentPages = req.getParameter("currentPage");
        int currentPage = Integer.parseInt(currentPages);
        String cid = req.getParameter("cid");

        ProductService service = new ProductServiceimpl();
        List<Product> productList = service.getProductList();

        if (cid == null) {
            productList = service.getProductList();
        } else {
            productList = service.getProductByCid(cid);
            req.setAttribute("cid", cid);
        }


        //当前页数据
        List<Product> products = new ArrayList<Product>();

        //一页几条数据
        int s = 12;

        for (int i = (currentPage-1)*s; i < currentPage*s&&i<productList.size(); i++) {
            products.add(productList.get(i));
        }

        int totalPage = (productList.size()-1)/s+1;

        req.setAttribute("currentPage",currentPage);
        req.setAttribute("totalPage", totalPage);

        req.setAttribute("productList",products);

        req.getRequestDispatcher("product_list.jsp").forward(req,resp);

    }
}

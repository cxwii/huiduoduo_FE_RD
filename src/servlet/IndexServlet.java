package servlet;

import pojo.Category;
import pojo.Product;
import service.CategoryService;
import service.ProductService;
import service.impl.CategoryServiceimpl;
import service.impl.ProductServiceimpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/Index")
public class IndexServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        CategoryService service = new CategoryServiceimpl();

        ProductService productService = new ProductServiceimpl();

        List<Category> categoryList = service.getCategoryList();

        req.setAttribute("categoryList", categoryList);

        HttpSession session = req.getSession();
        session.setAttribute("categoryList", categoryList);

        //最热
        List<Product> productHot = productService.getProductHot();
        req.setAttribute("hotProductList", productHot);

        //最新
        List<Product> ProductDatetime = productService.getProductDatetime();
        req.setAttribute("newProductList", ProductDatetime);


        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}

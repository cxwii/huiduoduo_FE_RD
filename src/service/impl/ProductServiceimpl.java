package service.impl;

import dao.ProductDao;
import dao.impl.ProductDaoimpl;
import pojo.Product;
import service.ProductService;

import java.util.List;

public class ProductServiceimpl implements ProductService {

    ProductDao dao = new ProductDaoimpl();

    @Override
    public List<Product> getProductList() {
        return dao.getProductList();
    }

    @Override
    public Product getProductByPid(String pid) {
        return dao.getProductByPid(pid);
    }

    @Override
    public List<Product> getProductByCid(String cid) {
        return dao.getProductByCid(cid);
    }

    @Override
    public List<Product> getProductHot() {
        return dao.getProductHot();
    }

    @Override
    public List<Product> getProductDatetime() {
        return dao.getProductDatetime();
    }

}

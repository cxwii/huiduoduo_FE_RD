package dao;

import pojo.Product;

import java.util.List;

public interface ProductDao {

    //查询所有商品
    public List<Product> getProductList();

    //查询商品详情
    public Product getProductByPid(String pid);

    //根据cid查询
    public List<Product> getProductByCid(String cid);

    //查询最热
    public List<Product> getProductHot();

    //查询最新
    public List<Product> getProductDatetime();

}

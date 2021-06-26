package dao.impl;

import dao.ProductDao;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import pojo.Product;
import util.JDBCUtils;

import java.util.List;

public class ProductDaoimpl implements ProductDao {

    JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public List<Product> getProductList() {
        String sql = "select * from product";

        List<Product> list = template.query(sql, new BeanPropertyRowMapper<Product>(Product.class));
        return list;
    }

    @Override
    public Product getProductByPid(String pid) {
        String sql="select  * from product where pid=?";
        return template.queryForObject(sql, new BeanPropertyRowMapper<>(Product.class), pid);
    }

    @Override
    public List<Product> getProductByCid(String cid) {
        String sql = "select * from product where cid = ?";
        List<Product> list = template.query(sql, new BeanPropertyRowMapper<>(Product.class), cid);
        return list;
    }

    @Override
    public List<Product> getProductHot() {
        String sql = "select * from product where is_hot=? limit 0,12";
        List<Product> list = template.query(sql, new BeanPropertyRowMapper<>(Product.class),1);
        return list;
    }

    @Override
    public List<Product> getProductDatetime() {
        String sql = "select * from product order by pdate desc limit 0,12";
        List<Product> list = template.query(sql, new BeanPropertyRowMapper<>(Product.class));
        return list;
    }

}

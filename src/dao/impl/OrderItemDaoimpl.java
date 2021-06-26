package dao.impl;

import dao.OrderItemDao;
import dao.ProductDao;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import pojo.Order;
import pojo.Orderitem;
import pojo.Product;
import util.JDBCUtils;

import java.util.List;

public class OrderItemDaoimpl implements OrderItemDao {
    JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public int addOrderItem(Orderitem orderitem) {
        String sql = "insert into orderitem values(?,?,?,?,?)";
        return template.update(sql,
                orderitem.getItemid(),
                orderitem.getCount(),
                orderitem.getSubtotal(),
                orderitem.getProduct().getPid(),
                orderitem.getOid());
    }

    @Override
    public int deleteOrderOid(String oid) {
        String sql = "delete from orderitem where oid = ?";
        return template.update(sql, oid);
    }

    @Override
    public List<Orderitem> getOrderItemByOid(String oid) {
        String sql = "select * from orderitem where oid = ?";
        List<Orderitem> list = template.query(sql, new BeanPropertyRowMapper<>(Orderitem.class), oid);
        List<Product> list1 = template.query(sql, new BeanPropertyRowMapper<>(Product.class), oid);
        ProductDao dao = new ProductDaoimpl();
        for (int i = 0; i < list.size(); i++) {
            Product productByPid = dao.getProductByPid(list1.get(i).getPid());
            list.get(i).setProduct(productByPid);
        }
        return list;
    }
}

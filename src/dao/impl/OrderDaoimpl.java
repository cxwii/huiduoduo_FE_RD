package dao.impl;

import dao.OrderDao;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import pojo.Order;
import util.JDBCUtils;

import java.util.List;

public class OrderDaoimpl implements OrderDao {

    JdbcTemplate template = new JdbcTemplate(JDBCUtils.getDataSource());

    @Override
    public int addOrder(Order order) {
        String sql = "insert into orders values(?,now(),?,?,?,?,?,?,null)";
        return  template.update(sql,
                order.getOid(),
                String.valueOf(order.getTotal()),
                String.valueOf(order.getState()),
                order.getAddress(),
                order.getName(),
                order.getTelephone(),
                order.getUid());
    }

    @Override
    public int deleteOrderOid(String oid) {
        String sql = "delete from orders where oid = ?";
        return template.update(sql, oid);
    }

    @Override
    public Order getOrderByOid(String oid) {
        String sql = "select * from orders where oid = ?";
        return template.queryForObject(sql, new BeanPropertyRowMapper<>(Order.class), oid);
    }

    @Override
    public List<Order> getOrderList(String uid) {
        String sql = "select * from orders where uid = ? order by ordertime desc";
        List<Order> list = template.query(sql, new BeanPropertyRowMapper<>(Order.class), uid);
        return list;
    }
}

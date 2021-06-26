package dao;

import pojo.Order;

import java.util.List;

public interface OrderDao {

    public int addOrder(Order order);

    public int deleteOrderOid(String oid);

    public Order getOrderByOid(String oid);

    public List<Order> getOrderList(String uid);
}

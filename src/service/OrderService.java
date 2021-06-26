package service;

import pojo.Order;

import java.util.List;

public interface OrderService {
    public int addOrder(Order order);

    public int deleteOrderItemOid(String oid);

    public List<Order> getOrderByUid(String uid);
}

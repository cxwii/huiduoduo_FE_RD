package service.impl;

import dao.OrderDao;
import dao.OrderItemDao;
import dao.impl.OrderDaoimpl;
import dao.impl.OrderItemDaoimpl;
import pojo.Orderitem;
import pojo.Order;
import service.OrderService;

import java.util.List;

public class OrderServiceimpl implements OrderService {
    OrderDao orderDao = new OrderDaoimpl();
    OrderItemDao orderItemDao = new OrderItemDaoimpl();

    @Override
    public int addOrder(Order order) {
        int n = orderDao.addOrder(order);
        for (Orderitem o : order.getOrderItems()) {
            orderItemDao.addOrderItem(o);
        }
        return n;
    }

    @Override
    public int deleteOrderItemOid(String oid) {
        orderItemDao.deleteOrderOid(oid);
        return orderDao.deleteOrderOid(oid);
    }

    @Override
    public List<Order> getOrderByUid(String uid) {
        List<Order> list = orderDao.getOrderList(uid);
        for (Order order : list) {
            List<Orderitem> list1 = orderItemDao.getOrderItemByOid(order.getOid());
            order.setOrderItems(list1);
        }
        return list;
    }

}

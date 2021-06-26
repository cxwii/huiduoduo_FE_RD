package dao;

import pojo.Order;
import pojo.Orderitem;

import java.util.List;

public interface OrderItemDao {

    public int addOrderItem(Orderitem orderitem);

    public int deleteOrderOid(String oid);

    public List<Orderitem> getOrderItemByOid(String oid);

}

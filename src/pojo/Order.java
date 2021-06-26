package pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Order {

    private String oid;
    private String orderTime;
    private double total;
    private int state;
    private String address;
    private String name;
    private String telephone;
    private String uid;
    private String assess;
//    private List<CartItem> cartItems;

    private List<Orderitem> orderItems =new ArrayList<>();

    @Override
    public String toString() {
        return "Orders{" +
                "oid='" + oid + '\'' +
                ", orderTime='" + orderTime + '\'' +
                ", total=" + total +
                ", state=" + state +
                ", address='" + address + '\'' +
                ", name='" + name + '\'' +
                ", telephone='" + telephone + '\'' +
                ", uid='" + uid + '\'' +
                ", assess='" + assess + '\'' +
                ", orderItems=" + orderItems +
                '}';
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public double getTotal() {
        total = 0;
        for (Orderitem cartItem : orderItems) {
            total += cartItem.getSubtotal();
        }
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getAssess() {
        return assess;
    }

    public void setAssess(String assess) {
        this.assess = assess;
    }

    public List<Orderitem> getOrderItems() {
        return orderItems;
    }

    public void setOrderItems(List<Orderitem> orderItems) {
        this.orderItems = orderItems;
    }

    public Order() {
    }


}

package pojo;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Cart {

    //购物车项目
    private Map<String, CartItem> cartItems = new HashMap<>();

    //总数
    private double total;

    @Override
    public String toString() {
        return "Cart{" +
                "cartItem=" + cartItems +
                ", total=" + total +
                '}';
    }

    public Map<String, CartItem> getCartItems() {
        return cartItems;
    }

    public void setCartItem(Map<String, CartItem> cartItem) {
        this.cartItems = cartItem;
    }

    public double getTotal() {
        total = 0;
        Set<Map.Entry<String, CartItem>> entries = cartItems.entrySet();
        for (Map.Entry<String, CartItem> entry : entries) {
            total += entry.getValue().getSubTotal();
        }

        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Cart() {
    }

    public Cart(Map<String, CartItem> cartItem, double total) {
        this.cartItems = cartItem;
        this.total = total;
    }
}

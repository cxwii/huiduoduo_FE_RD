package pojo;

public class Orderitem {

    private String itemid;
    private Product product;
    private int count;
    private double subtotal;
    private String pid;
    private String oid;

    @Override
    public String toString() {
        return "Orderitem{" +
                "itemid='" + itemid + '\'' +
                ", product=" + product +
                ", count=" + count +
                ", subtotal=" + subtotal +
                ", pid='" + pid + '\'' +
                ", oid='" + oid + '\'' +
                '}';
    }

    public String getItemid() {
        return itemid;
    }

    public void setItemid(String itemid) {
        this.itemid = itemid;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public double getSubtotal() {
        return product.getShop_price() * count;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public Orderitem() {
    }

    public Orderitem(String itemid, Product product, int count, double subtotal, String pid, String oid) {
        this.itemid = itemid;
        this.product = product;
        this.count = count;
        this.subtotal = subtotal;
        this.pid = pid;
        this.oid = oid;
    }
}

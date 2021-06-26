package pojo;

import sun.security.provider.certpath.CertId;

public class Category {

    private String cid;
    private String cname;

    public Category() {
    }

    @Override
    public String toString() {
        return "category{" +
                "cid='" + cid + '\'' +
                ", cname='" + cname + '\'' +
                '}';
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCid() {
        return cid;
    }

    public String getCname() {
        return cname;
    }

    public Category(String cid, String cname) {
        this.cid = cid;
        this.cname = cname;
    }
}

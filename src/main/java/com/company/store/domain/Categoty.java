package com.company.store.domain;

public class Categoty {
    private String cid;

    private String cname;

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid == null ? null : cid.trim();
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public Categoty() {
    }

    public Categoty(String cid, String cname) {
        this.cid = cid;
        this.cname = cname;
    }

    @Override
    public String toString() {
        return "Categoty{" +
                "cid='" + cid + '\'' +
                ", cname='" + cname + '\'' +
                '}';
    }
}
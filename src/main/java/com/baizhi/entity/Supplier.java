package com.baizhi.entity;

import java.io.Serializable;

public class Supplier implements Serializable {
    private String id;
    private String name;
    private String leader;
    private String phone;

    public Supplier() {
    }

    public Supplier(String id, String name, String leader, String phone) {
        this.id = id;
        this.name = name;
        this.leader = leader;
        this.phone = phone;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLeader() {
        return leader;
    }

    public void setLeader(String leader) {
        this.leader = leader;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Supplier{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", leader='" + leader + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}

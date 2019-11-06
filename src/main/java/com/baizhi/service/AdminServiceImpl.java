package com.baizhi.service;

import com.baizhi.dao.AdminDao;
import com.baizhi.entity.Admin;
import com.baizhi.entity.Supplier;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.UUID;

@Service
public class AdminServiceImpl implements AdminService{
    @Autowired
    private AdminDao dao;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS,readOnly = true)
    public void login(Admin admin,HttpSession session) {
        Admin a = dao.queryAdmin(admin);
        if(a==null)throw new RuntimeException("该用户不存在");
        if(!a.getPassword().equals(admin.getPassword()))throw  new RuntimeException("密码错误");
        session.setAttribute("loginAdmin", a);
    }

    @Override
    public void insertSup(Supplier supplier) {
        String s = UUID.randomUUID().toString();
        supplier.setId(s);
        dao.insertSup(supplier);
    }

    @Override
    public void deleteSup(String id) {
        dao.deleteSup(id);
    }

    @Override
    public void updateSup(Supplier supplier) {
        dao.updateSup(supplier);
    }

    @Override
    public Supplier queryId(String id) {
        Supplier id1 = dao.queryId(id);
        return id1;
    }

    @Override
    public List<Supplier> querySup() {
        List<Supplier> list = dao.querySup();
        return list;
    }

    @Override
    public List<Supplier> queryCount(Integer count, Integer number) {
        count=(count-1)*number;
        List<Supplier> list = dao.queryCount(count, number);
        return list;
    }

    @Override
    public List<Supplier> queryLike(String key, String content) {
        List<Supplier> list = dao.queryLike(key,content);
        return list;
    }
}

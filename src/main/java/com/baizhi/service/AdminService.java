package com.baizhi.service;

import com.baizhi.entity.Admin;
import com.baizhi.entity.Supplier;
import org.apache.ibatis.annotations.Param;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface AdminService {
    //登录
    public void login(Admin admin, HttpSession session);
    //添加
    public void insertSup(Supplier supplier);
    //删除
    public void deleteSup(String id);
    //修改
    public void updateSup(Supplier supplier);
    //查询id
    public Supplier queryId(String id);
    //展示所有
    public List<Supplier> querySup();
    //分页
    public List<Supplier> queryCount(Integer count, Integer number);
    //搜索  根据名称,用户名，电话模糊查询
    public List<Supplier> queryLike(String key,String content);

}

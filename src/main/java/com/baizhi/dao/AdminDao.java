package com.baizhi.dao;

import com.baizhi.entity.Admin;
import com.baizhi.entity.Supplier;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminDao {
    //登录
    public Admin queryAdmin(Admin admin);
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
    public List<Supplier> queryCount(@Param("count") Integer count, @Param("number") Integer number);
    //搜索  根据名称,用户名，电话模糊查询
    public List<Supplier> queryLike(@Param("key") String key,@Param("content") String content);
}

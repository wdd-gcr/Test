package com.baizhi.util;

import org.apache.ibatis.cache.Cache;
import org.springframework.data.redis.core.RedisTemplate;
import sun.awt.SunHints;

import javax.validation.constraints.Size;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public class AdminRedisCeche implements Cache {

    private final ReentrantReadWriteLock reentrantReadWriteLock=new ReentrantReadWriteLock();

    private String id;
    public AdminRedisCeche(String id) {
        this.id = id;
    }

    @Override
    public String getId() {
        return id;
    }

    //把数据放入缓存中
    @Override
    public void putObject(Object key, Object value) {
        //获取redistemplate对象
        RedisTemplate redisTemplate = (RedisTemplate) SpringContextUtil.getBean("redisTemplate");
        //把相对应的数据放入缓存中
        redisTemplate.opsForHash().put(id,key,value);
    }

    //从缓存中获取数据
    @Override
    public Object getObject(Object key) {
        //获取redistemplate对象
        RedisTemplate redisTemplate = (RedisTemplate) SpringContextUtil.getBean("redisTemplate");
        Object o = redisTemplate.opsForHash().get(id, key);
        return o;
    }
    //当发生增删改时需要清空缓存
    @Override
    public Object removeObject(Object key) {
        //获取redistemplate对象
        RedisTemplate redisTemplate = (RedisTemplate) SpringContextUtil.getBean("redisTemplate");
        Long delete = redisTemplate.opsForHash().delete(id, key);
        return delete;
    }

    //当发生增删改时需要清空缓存
    @Override
    public void clear() {
        RedisTemplate redisTemplate = (RedisTemplate) SpringContextUtil.getBean("redisTemplate");
        redisTemplate.delete(id);
    }

    //返回长度
    @Override
    public int getSize() {
        RedisTemplate redisTemplate = (RedisTemplate) SpringContextUtil.getBean("redisTemplate");
        Long size = redisTemplate.opsForHash().size(id);
        return size.intValue();
    }

    @Override
    public ReadWriteLock getReadWriteLock() {
        return reentrantReadWriteLock;
    }
}

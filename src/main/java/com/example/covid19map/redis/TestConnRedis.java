package com.example.covid19map.redis;

import redis.clients.jedis.Jedis;

import java.util.Set;

/**
 * @author Jun
 * @date 2022/11/15 9:52
 * @description TestConnRedis
 */
public class TestConnRedis {
    public static void main(String[]   args) {
        //连接本地的 Redis 服务
        Jedis jedis = new Jedis ("localhost");
        // 如果 Redis 服务设置了密码，需要下面这行，没有就不需要
        // jedis.auth("123456");
//        System.out.println("连接成功");
        //查看服务是否运行
//        System.out.println("服务正在运行: "+jedis.ping());
        jedis.set("name","lee");


        // set无序集合，去重
        jedis.sadd("nocvset", "1");
        jedis.sadd("nocvset", "1");
        jedis.sadd("nocvset", "1");
        jedis.sadd("nocvset", "2");
        Set<String> nocvlist = jedis.smembers("nocvset");
        for (String s : nocvlist) {
            System.out.println(s);
        }

        // sorted set 有序集合【排名、排序、获取排序码】
        jedis.zadd("nocvset2", 82, "111");
        jedis.zadd("nocvset2", 84, "222");
        jedis.zadd("nocvset2", 90, "333");
        jedis.zadd("nocvset2", 100, "000");
        Set<String> nocvset = jedis.zrange("nocvset2", 0, -1);
        for (String s : nocvset) {
            System.out.println(s);
        }

        // 查询索引
        Long nocvset21 = jedis.zrank("nocvset2", "333");
        System.out.println(nocvset21);

        // 返回分数区间
        Long nocvset22 = jedis.zremrangeByScore("nocvset2", 84, 100);
        System.out.println(nocvset22);

    }
}

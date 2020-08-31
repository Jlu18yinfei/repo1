package com.damu.dao;

import com.damu.entity.Users;
import com.damu.utils.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class UsersDao {

    private SqlSession sqlSession;
    private List<Users> list;

    {
        sqlSession= SqlSessionFactoryUtils.getSqlSessionFactory().openSession();
    }
    public List<Users> findAll(){
        try{
            list=sqlSession.selectList("findAll");
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            sqlSession.close();
        }
        return list;
    }
}

package com.damu.listener;

import com.damu.utils.SqlSessionFactoryUtils;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class InitSqlSessionListener implements ServletContextListener {
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器加载中...");
        //init our sqlsessionfactory()
        SqlSessionFactoryUtils.initSqlSessionFactory();
    }

    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁中");
        //close our sqlsession
        SqlSessionFactoryUtils.close();
    }
}

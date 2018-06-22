/*
package com.ccd.study.sys.user.test;

import com.ccd.study.sys.user.dao.IUserDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class test {
    @Autowired
    private IUserDao dao;

    @Test
    public void list(){
        ApplicationContext context = new ClassPathXmlApplicationContext("classpath:spring-servlet.xml");
        IUserDao testDao= (IUserDao) context.getBean("IUserDao");
        List list = testDao.list();
        System.out.print(list.toString());
    }
}
*/

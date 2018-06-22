package com.ccd.study.sys.user.dao;

import java.util.List;

import com.ccd.study.sys.user.model.User;
import com.ccd.study.sys.user.model.UserCondtion;


public interface IUserDao {

	int insert(User user);

	int update(User user);

	int delete(int id);

	List<User> queryList(UserCondtion cond);

	int queryCount(UserCondtion cond);

	User findById(int id);

}

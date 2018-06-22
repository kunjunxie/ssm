package com.ccd.study.sys.user.service;

import java.util.List;

import com.ccd.study.sys.user.model.User;
import com.ccd.study.sys.user.model.UserCondtion;


public interface IUserService {

	int insert(User user);

	int update(User user);

	int delete(int id);

	List<User> queryList(UserCondtion cond);

	User findById(int id);

}

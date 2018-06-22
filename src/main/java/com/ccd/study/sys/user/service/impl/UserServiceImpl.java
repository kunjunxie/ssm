package com.ccd.study.sys.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ccd.study.sys.user.dao.IUserDao;
import com.ccd.study.sys.user.model.User;
import com.ccd.study.sys.user.model.UserCondtion;
import com.ccd.study.sys.user.service.IUserService;

import javax.annotation.Resource;


@Service
public class UserServiceImpl implements IUserService {

	@Resource
	private IUserDao dao;// 注入userdao接口类

	@Override
	public int insert(User user) {
		return dao.insert(user);
	}

	@Override
	public int update(User user) {
		return dao.update(user);
	}

	@Override
	public int delete(int id) {
		return dao.delete(id);
	}

	@Override
	public List<User> queryList(UserCondtion cond) {
		int rowCount = dao.queryCount(cond);// 到数据库去查询记录个数
		int pageSize = cond.getPageSize();
		cond.setRowCount(rowCount);
		cond.setPageCount(rowCount % pageSize == 0 ? rowCount / pageSize : rowCount / pageSize + 1);// 计算总页数
		cond.setStart((cond.getCurPage() - 1) * pageSize);// 起始行=（当前页-1）页大小
		return dao.queryList(cond);
	}

	@Override
	public User findById(int id) {
		return dao.findById(id);
	}

}

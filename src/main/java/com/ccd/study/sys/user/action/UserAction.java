package com.ccd.study.sys.user.action;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ccd.study.sys.user.model.User;
import com.ccd.study.sys.user.model.UserCondtion;
import com.ccd.study.sys.user.service.IUserService;


@Controller
@RequestMapping("user")
public class UserAction {
	@Autowired
	private IUserService service;// 注入userservice接口
	@RequestMapping("list")
	// 方法参数中加Map<String,Object> map，用来替换 HttpServletRequest request
	// @ModelAttribute("cond")//共享变量 相当于把参数变量扔到request
	public String queryList(@ModelAttribute("cond") UserCondtion cond, Map<String, Object> map) {
		List<User> list = service.queryList(cond);
		map.put("userList", list);
		// request.setAttribute("userList", list);
		return "sys/user/list";
	}

	@RequestMapping("toinsert")
	// 跳转到新增页面
	public String toinsert() {
		return "sys/user/insert";
	}

	@RequestMapping("insert")
	// 新增-保存数据方法
	public String insert(User user) {
		service.insert(user);
		return "redirect:list";
		// 重定向到本类的@RequestMapping("list")
	}

	@RequestMapping("toupdate")
	// 跳转到修改页面
	public String toupdate(int id, Map<String, Object> map) {
		map.put("user", service.findById(id));
		return "sys/user/update";
	}

	@RequestMapping("update")
	// 修改-保存数据方法
	public String update(User user) {
		service.update(user);
		return "redirect:list";
	}

	@RequestMapping("todetail")
	// 跳转到详细页面
	public String todetail(int id, Map<String, Object> map) {
		map.put("user", service.findById(id));
		return "sys/user/detail";
	}

	@RequestMapping("delete")
	// 删除数据
	public String delete(int id) {
		service.delete(id);
		return "redirect:list";
	}
}

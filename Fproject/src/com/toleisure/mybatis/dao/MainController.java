package com.toleisure.mybatis.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value="/main.action", method=RequestMethod.GET)
	public String HotGroupList(Model model)
	{
		String view = "WEB-INF/views/Main.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		
		model.addAttribute("HotGroupList", dao.HotGroupList());		
		
		return view;
	}
}

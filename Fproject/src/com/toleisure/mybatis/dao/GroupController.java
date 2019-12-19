package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.mybatis.IMemberDAO;
import com.toleisure.mybatis.dto.GroupDTO;

@Controller
public class GroupController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value = "/groupInsertForm.action", method = RequestMethod.GET)
	public String memberList(Model model)
	{
		String view = "WEB-INF/views/OpenForm.jsp";
		
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		
		model.addAttribute("list", dao.list());
		
		return view;
	}
	
	@RequestMapping(value = "/groupInsert.action", method = RequestMethod.POST)
	public String groupInsertForm(GroupDTO g)
	{
		String view = "redirect:groupInsertForm.action";
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		dao.addGroup(g);
		
		return view;
	}
}

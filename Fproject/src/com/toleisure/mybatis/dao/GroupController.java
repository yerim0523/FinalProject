package com.toleisure.mybatis.dao;


import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.toleisure.mybatis.dto.GroupDTO;

@Controller
public class GroupController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value = "/groupinsertform.action", method = RequestMethod.GET)
	public String memberList(Model model)
	{
		String view = "WEB-INF/views/OpenForm.jsp";
		
		return view;
	}
	
	@RequestMapping(value = "/groupinsert.action", method = RequestMethod.POST)
	public String groupInsertForm(GroupDTO dto)
	{
		String view = "redirect:groupinsertform.action";
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class); 
		dao.addGroup(dto);
		
		
		return view;
	}
	
	@RequestMapping(value = "/mygrouplist.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String myGroupList(GroupDTO dto, Model m, HttpSession session)
	{
		String view = "WEB-INF/views/meetingOpen.jsp";
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class); 
		
		m.addAttribute("list", dao.grSearch(dto.getMemId()));
		
		return view;
	}
}

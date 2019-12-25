package com.toleisure.mybatis.dao;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.toleisure.mybatis.dto.GroupDTO;
import com.toleisure.mybatis.dto.MemberDTO;

@Controller
public class GroupController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value = "/groupinsertform.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String memberList(GroupDTO dto, Model model, HttpServletRequest req)
	{
		String view = "WEB-INF/views/OpenForm.jsp";
		HttpSession session = req.getSession(true);
		session.getAttribute("member");
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		dao.groupFormInfo(dto.getGrCode());
		
		System.out.println("==================");
		System.out.println("==== dto.getGrCode = " + dto.getGrCode());
		System.out.println("==================");
		
		GroupDTO dto2 = dao.groupFormInfo(dto.getGrCode());
		
		session.setAttribute("groupinfo", dto2);
		
		return view;
	}
	
	@RequestMapping(value = "/groupinsert.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String groupInsertForm(GroupDTO dto, HttpServletRequest req)
	{
		String view = "redirect:main.action";
		HttpSession session = req.getSession(true);
		
		session.getAttribute("member");
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		dao.addGroup(dto);
		
		return view;
	}
	
	@RequestMapping(value = "/mygrouplist.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String myGroupList(MemberDTO dto, Model m, HttpServletRequest req)
	{
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		HttpSession session = req.getSession(true);
		
		session.getAttribute("member");
		
		System.out.println("==================");
		System.out.println("==== dto.getMemId = " + dto.getMemId());
		System.out.println("==================");
		
		m.addAttribute("list", dao.grSearch(dto.getMemId()));
		
		return "WEB-INF/views/meetingOpen.jsp";
	}
}

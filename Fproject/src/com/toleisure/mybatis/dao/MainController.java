package com.toleisure.mybatis.dao;

import java.sql.PreparedStatement;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.toleisure.mybatis.dto.GroupDTO;

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
		
	    GroupDTO dto = new GroupDTO();
	    dto.setMemId("lee0528kr@naver.com");
		
		model.addAttribute("HotGroupList", dao.HotGroupList());		
		model.addAttribute("NewGroupList", dao.NewGroupList());	
		model.addAttribute("HotHostList", dao.HotHostList());	
		model.addAttribute("ClosingGroupList", dao.ClosingGroupList());	
		model.addAttribute("RecommendGroupList", dao.RecommendGroupList(dto.getMemId()));
		
		
		return view;
	}
	
	@RequestMapping(value="/all.action", method=RequestMethod.GET)
	public String AllMeeting(Model model)
	{
		String view = "WEB-INF/views/AllMeeting.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
	
		model.addAttribute("AllGroupList", dao.AllGroupList());		
		
		
		return view;
	}
}

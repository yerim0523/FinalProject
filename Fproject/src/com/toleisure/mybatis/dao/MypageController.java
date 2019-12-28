/*======================
  MypageController.java
=======================*/


package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.toleisure.mybatis.dto.GroupDTO;
import com.toleisure.mybatis.dto.MemberDTO;

public class MypageController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value="/mycal.action", method ={ RequestMethod.GET, RequestMethod.POST })
	public String calOpen(MemberDTO dto, Model model, HttpSession session)
	{
		System.out.println("-------1");
		String view = "WEB-INF/views/myCalendar.jsp";
		IMypageDAO dao = sqlsession.getMapper(IMypageDAO.class);
		
		System.out.println("-------2");
		
		session.getAttribute("member");
		
		System.out.println("-------3");
		
		MemberDTO mine = (MemberDTO)session.getAttribute("member");
		String memId = mine.getMemId();
		
		System.out.println("-------4");
		System.out.println(memId);
		
		ArrayList<GroupDTO> list = dao.myCalendar(memId);
		
		model.addAttribute("myCal", list);
		
		
		return view;
	}
}

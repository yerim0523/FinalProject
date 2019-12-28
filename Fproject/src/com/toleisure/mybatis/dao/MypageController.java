/*======================
  MypageController.java
=======================*/


package com.toleisure.mybatis.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.toleisure.mybatis.dto.MemberDTO;

public class MypageController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value="mycal.action", method ={ RequestMethod.GET, RequestMethod.POST })
	public String calOpen(MemberDTO dto, Model model, HttpSession session)
	{
		String view = "WEB-INF/views/myCalendar.jsp";
		
		session.getAttribute("member");
		
		return view;
	}
}

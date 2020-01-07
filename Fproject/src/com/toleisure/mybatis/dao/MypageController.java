package com.toleisure.mybatis.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.toleisure.mybatis.dto.MemberDTO;

@Controller
public class MypageController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value = "/mypaypage.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String myPayPage(MemberDTO dto, Model model, HttpSession session)
	{
		session.getAttribute("member");
		IMypageDAO dao = sqlsession.getMapper(IMypageDAO.class);
		
		dto = (MemberDTO)session.getAttribute("member");
		String memId = dto.getMemId();
		
		//dao.payList(memId);
		
		model.addAttribute("payList", dao.payList(memId));
		
		return "/WEB-INF/views/paylist.jsp";
		
	}
}
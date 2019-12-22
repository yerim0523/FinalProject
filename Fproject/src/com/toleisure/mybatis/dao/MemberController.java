package com.toleisure.mybatis.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.toleisure.mybatis.dto.MemberDTO;


@Controller
public class MemberController
{	
	
	@Autowired
	private SqlSession sqlsession;

	
	@RequestMapping(value = "/memberfindform.action", method = RequestMethod.GET)
	public String findEmail(Model m)
	{
		String view = "/WEB-INF/views/FindEmail.jsp";
		
		
		return view;
	}
	
	@RequestMapping(value = "/efind.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String memberEfind(MemberDTO dto, Model model)
	{
		String view = "/WEB-INF/views/email.jsp";
		
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		
		model.addAttribute("memId", dao.efind(dto));
		
		return view;
	}
	
	@RequestMapping(value = "/findemail.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String findEmail(MemberDTO dto, Model model)
	{
		String view = "/WEB-INF/views/FindEmail.jsp";
		
		
		return view;
	}
	
	
	@RequestMapping(value = "/findpassword.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String findPw(MemberDTO dto, Model model)
	{
		String view = "/WEB-INF/views/FindPassword.jsp";
		
		
		return view;
	}
	
	@RequestMapping(value = "/selectEmp.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String selectEmp(MemberDTO dto, Model model)
	{
		
		//IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		//String isEmpYn = dao.selectEmp(dto);
		System.out.println("NAME = "+ dto.getMemName());
		System.out.println("TEL = "+ dto.getMemTel());
		String isEmpYn = "Y";
		
		return isEmpYn;
	}
	
}

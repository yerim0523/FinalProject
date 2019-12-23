package com.toleisure.mybatis.dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String findEmail(MemberDTO dto, Model model, HttpServletRequest req)
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
	
	@RequestMapping(value = "/selectMem.action", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String selectMem(MemberDTO dto, Model model)
	{
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		String isMemYn = dao.selectMem(dto);
		
		System.out.println("==================");
		System.out.println("==== isMemYn = "+isMemYn);
		System.out.println("==================");
		
		return isMemYn;
	}
	
	@RequestMapping(value = "/loginactive.action", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String loginMem(MemberDTO dto, Model model)
	{
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		String isMemYn = dao.searchMem(dto);
		
		System.out.println("==================");
		System.out.println("==== isMemYn = " + isMemYn);
		System.out.println("==== dto.getMemId = " + dto.getMemId());
		System.out.println("==== dto.getMemPw = " + dto.getMemPw());
		System.out.println("==================");
		
		return isMemYn;
	}
	
	@RequestMapping(value = "/login_success.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String loginSuccess(MemberDTO dto, HttpServletRequest req)
	{
		HttpSession session = req.getSession(true);
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		
		
		MemberDTO login = dao.login(dto);
		
		if(login!=null)
		{
			session.setAttribute("member", login);
			session.setAttribute("mode", "login");
		}
		else
		{
			session.setAttribute("mode", "logout");
		}
				
		System.out.println("==================");
		System.out.println("==== dto.getMemId = " + dto.getMemId());
		System.out.println("==== dto.getMemPw = " + dto.getMemPw());
		System.out.println("==================");
		
		return "redirect:main.action";
	}
	
	@RequestMapping(value = "/logout.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String logout(MemberDTO dto, HttpServletRequest req)
	{
		HttpSession session = req.getSession();
		
		session.invalidate();
				
		System.out.println("==================");
		System.out.println("==== dto.getMemId = " + dto.getMemId());
		System.out.println("==== dto.getMemPw = " + dto.getMemPw());
		System.out.println("==================");
		
		return "redirect:main.action";
	}
	
	@RequestMapping(value = "/mypage.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String myPageMain(MemberDTO dto, Model model, HttpServletRequest req)
	{
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		HttpSession session = req.getSession(true);
		
		MemberDTO mine = dao.myInfo(dto.getMemId());
		
		session.getAttribute("member");
		session.setAttribute("myInfo", mine);
		
		return "/WEB-INF/views/MyPage.jsp";
	}
	
	@RequestMapping(value = "/infomodify.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String myPageModify(MemberDTO dto, Model model, HttpServletRequest req)
	{
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		HttpSession session = req.getSession(true);
		
		MemberDTO mine2 = dao.myInfo(dto.getMemId());
		
		session.getAttribute("member");
		session.setAttribute("myInfo", mine2);
		
		System.out.println("==================");
		System.out.println("==== dto.getMemId = " + dto.getMemId());
		System.out.println("==================");
		
		return "/WEB-INF/views/My_modify.jsp";
	}
	
	@RequestMapping(value = "/idCheck.action", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String idCheck(MemberDTO dto, Model model)
	{
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		String idCheckYn = dao.idCheck(dto);
		
		return idCheckYn;
	}
	
	@RequestMapping(value = "/memberinsertForm.action", method = RequestMethod.GET)
	public String memberInsert(Model model)
	{
		String view = "WEB-INF/views/join.jsp";
		
		return view;
	}
	
	@RequestMapping(value = "/memberinsert.action", method = RequestMethod.POST)
	public String memberinsert(MemberDTO m)
	{
		String view = "WEB-INF/views/joinTest.jsp";
		
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		dao.add(m);
		
		return view;
		
	}
	
}

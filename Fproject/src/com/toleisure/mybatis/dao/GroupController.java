package com.toleisure.mybatis.dao;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toleisure.mybatis.dto.FeedBackDTO;
import com.toleisure.mybatis.dto.GroupDTO;
import com.toleisure.mybatis.dto.MemberDTO;

@Controller
public class GroupController
{
	@Autowired
	private SqlSession sqlsession;
	
	
	@RequestMapping(value = "/newinsertform.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String newInsertForm(GroupDTO dto, Model model, HttpSession session)
	{
		String view = "WEB-INF/views/OpenForm.jsp";
		session.getAttribute("member");
		
		return view;
	}
	
	@RequestMapping(value = "/groupinsertform.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String insertForm(GroupDTO dto, Model model, HttpSession session)
	{
		String view = "WEB-INF/views/OpenForm.jsp";
		session.getAttribute("member");
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		dao.groupFormInfo(dto.getGrCode());
		
		System.out.println("==================");
		System.out.println("==== dto.getGrCode = " + dto.getGrCode());
		System.out.println("==================");
		
		GroupDTO dto2 = dao.groupFormInfo(dto.getGrCode()); 
		
		model.addAttribute("groupinfo", dto2);
		
		return view;
	}
	
	@RequestMapping(value = "/groupinsert.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String groupInsertForm(GroupDTO dto, Model model, HttpSession session) throws IllegalStateException, IOException
	{
		//String view = "redirect:main.action";
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		System.out.println("==================");
		System.out.println("==== dto.getGrCode = " + dto.getGrCode());
		System.out.println("==================");
		
		if(dto.getGrCode()!=0)
		{
			System.out.println("기존모임생성");
			dao.addGroup(dto);
			System.out.println("==================");
			System.out.println("==== 현재 들어간 모임코드 = " + dto.getGrCode());
			System.out.println("==================");
		}
		else if(dto.getGrCode()==0)
		{
			System.out.println("신규모임생성");
			dao.newGroup(dto);
			System.out.println("==================");
			System.out.println("==== 현재 들어간 모임코드 =  " + dto.getGrCode());
			System.out.println("==================");
		}
		
		//return view;
		return "redirect:main.action";
	}
	
//	
//	@RequestMapping(value = "/groupinsert.action", method = {RequestMethod.POST,RequestMethod.GET})
//	public String groupInsertForm(GroupDTO dto, Model model, HttpSession session, @RequestParam("ngPic") MultipartFile file) throws IllegalStateException, IOException
//	{
//		//String view = "redirect:main.action";
//		session.getAttribute("member");
//		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
//		String root = session.getServletContext().getRealPath("/");
//		String savePath = root + File.separator + "image";
//		
//		if(dto.getGrCode()!=0)
//		{
//			dao.addGroup(dto);
//			System.out.println("==================");
//			System.out.println("==== 현재 들어간 모임코드   = " + dto.getGrCode());
//			System.out.println("==================");
//		}
//		else if(dto.getGrCode()==0)
//		{
//			dao.newGroup(dto);
//			System.out.println("==================");
//			System.out.println("==== 현재 들어간 모임코드 = " + dto.getGrCode());
//			System.out.println("==================");
//		}
//		
//		File uploadFile = new File(savePath);
//		file.transferTo(uploadFile);
//		model.addAttribute("filename", file.getOriginalFilename());
//		
//		//return view;
//		return "WEB-INF/views/result.jsp";
//	}
	
	@RequestMapping(value = "/mygrouplist.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String myGroupList(MemberDTO dto, Model m, HttpSession session)
	{
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		session.getAttribute("member");
		
		System.out.println("==================");
		System.out.println("==== dto.getMemId = " + dto.getMemId());
		System.out.println("==================");
		
		m.addAttribute("list", dao.grSearch(dto.getMemId()));
		
		return "WEB-INF/views/meetingOpen.jsp";
	}
	
	@RequestMapping(value = "/favoritegroup.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String favoriteGroup(MemberDTO dto, Model m, HttpSession session)
	{
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		session.getAttribute("member");
		
		System.out.println("==================");
		System.out.println("==== dto.getMemId = " + dto.getMemId());
		System.out.println("==================");
		
		m.addAttribute("jjimGroup", dao.jjimGroup(dto.getMemId()));
		m.addAttribute("jjimHost", dao.jjimHost(dto.getMemId()));
		
		return "WEB-INF/views/jjimList.jsp";
	}
	
	@RequestMapping(value = "/pay.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String payMethod(GroupDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/Pay.jsp";
		
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		String id = mem.getMemId();
		dto.setMemId(id);
		String memId = dto.getMemId();
		
		int ngCode = (int) session.getAttribute("ngCode");
		
		int ngCost = dao.cost(ngCode);
		dto.setNgCode(ngCode);
		
		model.addAttribute("ngCost", ngCost);
		session.setAttribute("ngCost", ngCost);
		
		System.out.println(memId);
		System.out.println(ngCode);
		System.out.println(ngCost);
		
		return view;
	}
	
	@RequestMapping(value = "/cardpage.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String cardPage(MemberDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/CardPay.jsp";
		
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCost = (int)session.getAttribute("ngCost");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		String memId = dto.getMemId();

		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		
		MemberDTO mine = dao.myInfo(dto.getMemId());
		
		model.addAttribute("ngCost", ngCost);
		model.addAttribute("myInfo", mine);
		
		return view;
	}
	
	@RequestMapping(value = "/cardpay.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String cardPay(GroupDTO dto, Model model, HttpSession session)
	{
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCode = (int)session.getAttribute("ngCode");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		
		dto.setNgCode(ngCode);
		
		System.out.println(ngCode);
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		dao.cardPay(dto);
		
		
		return "redirect:main.action";
	}

	@RequestMapping(value = "/selectfeed.action", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String selectFeed(GroupDTO dto, Model model, HttpSession session)
	{
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		String isMemYn = dao.feedCheck(dto);
		
		System.out.println("==================");
		System.out.println("==== isMemYn = "+isMemYn);
		System.out.println("==================");
		
		return isMemYn;
	}
	
	
	@RequestMapping(value = "/findjoincode.action", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public int findJoinCode(GroupDTO dto, Model model, HttpSession session)
	{
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		dto = dao.feedJoinCode(dto);
		int joinCode = dto.getJoinCode();
		
		System.out.println("==================");
		System.out.println("==== joinCode 는~?  "+ joinCode);
		System.out.println("==================");
		
		return joinCode;
	}
	
	
	@RequestMapping(value = "/feedinsert.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String insertFeed(HttpServletRequest req, Model model, HttpSession session)
	{
		session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		int joinCode = Integer.parseInt(req.getParameter("joinCode"));
		int goodPro = Integer.parseInt(req.getParameter("goodPro"));
		int goodCal = Integer.parseInt(req.getParameter("goodCal"));
		
		FeedBackDTO dto = new FeedBackDTO();
		dto.setJoinCode(joinCode);
		dto.setGoodPro(goodPro);
		dto.setGoodCal(goodCal);
		
		System.out.println("======= " + dto.getJoinCode());
		
		dao.feedInsert(dto);
		
		System.out.println("==================");
		System.out.println("==== joinCode = "+dto.getJoinCode());
		System.out.println("==================");
		
		return "redirect:endgrouplist.action";
	}
	
	
	@RequestMapping(value = "/phonepage.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String phonePage(MemberDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/PhonePay.jsp";
		
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCost = (int)session.getAttribute("ngCost");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		String memId = dto.getMemId();

		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		
		MemberDTO mine = dao.myInfo(dto.getMemId());
		
		model.addAttribute("ngCost", ngCost);
		model.addAttribute("myInfo", mine);
		
		return view;
	}
	
	@RequestMapping(value = "/phonepay.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String phonePay(GroupDTO dto, Model model, HttpSession session)
	{
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCode = (int)session.getAttribute("ngCode");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		
		dto.setNgCode(ngCode);
		
		System.out.println(ngCode);
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		dao.phonePay(dto);
		
		
		return "redirect:main.action";
	}
	
	@RequestMapping(value = "/bankpage.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String bankPage(MemberDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/BankPay.jsp";
		
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCost = (int)session.getAttribute("ngCost");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		String memId = dto.getMemId();

		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		
		MemberDTO mine = dao.myInfo(dto.getMemId());
		
		model.addAttribute("ngCost", ngCost);
		model.addAttribute("myInfo", mine);
		
		return view;
	}
	
	@RequestMapping(value = "/bankpay.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String bankPay(GroupDTO dto, Model model, HttpSession session)
	{
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		int ngCode = (int)session.getAttribute("ngCode");
		
		String id = mem.getMemId();
		dto.setMemId(id);
		
		dto.setNgCode(ngCode);
		
		System.out.println(ngCode);
		
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		dao.bankPay(dto);
		
		
		return "redirect:main.action";
	}
	
	
	
	
}

package com.toleisure.mybatis.dao;


import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String payMethod(GroupDTO pay, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/Pay.jsp";
		
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		String id = dto.getMemId();
		pay.setMemId(id);
		String memId = pay.getMemId();
		
		int ngCode = (int) session.getAttribute("ngCode");
		
		int ngCost = dao.cost(ngCode);
		
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
	
	// 카드 결제 메소드 미완성
	/*
	public String cardPay(MemberDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/Main.jsp";
		IGroupDAO dao = sqlsession.getMapper(IGroupDAO.class);
		
		
		
	}
	*/
	
	
}

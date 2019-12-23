/*=======================
  ProfileController.java
========================*/


package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.toleisure.mybatis.dto.GroupDTO;
import com.toleisure.mybatis.dto.MemberDTO;

@Controller
public class ProfileController
{
	@Autowired
	private SqlSession sqlsession;
	
	// profile.action 요청시 회원 프로필 페이지로 이동
	@RequestMapping(value = "/profile.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String profile(Model model, MemberDTO dto, GroupDTO gdto)
	{
		String view = "WEB-INF/views/Hprofile.jsp";
		
		IProfileDAO dao = sqlsession.getMapper(IProfileDAO.class); 
		
		// dto 정보에 아무것도 없기 때문에.. 직접 set 해줌 → 추후 수정 필요
		dto.setMemId("wag2397@gmail.com");
		gdto.setMemId("wag2397@gmail.com");
		
		// 프로필 - 회원 정보 
		model.addAttribute("member", dao.memInfo(dto));
		
		// 프로필 - 모임 히스토리
		ArrayList<GroupDTO> list = new ArrayList<GroupDTO>();
		list.add(gdto);
		model.addAttribute("group", dao.grHistory(gdto));
		
		return view;
	} 
	
	// 더보기 클릭 → 해당 회원의 전체 모임 히스토리 페이지로 이동
	@RequestMapping(value = "/profile.action", method = {RequestMethod.POST, RequestMethod.GET})
	public String allHistory(Model model, MemberDTO dto, GroupDTO gdto)
	{
		String view = "WEB-INF/views/Hprofile.jsp";
		
		IProfileDAO dao = sqlsession.getMapper(IProfileDAO.class); 
		
		// dto 정보에 아무것도 없기 때문에.. 직접 set 해줌 → 추후 수정 필요
		dto.setMemId("wag2397@gmail.com");
		gdto.setMemId("wag2397@gmail.com");
		
		// 프로필 - 회원 정보 
		model.addAttribute("member", dao.memInfo(dto));
		
		// 프로필 - 모임 히스토리
		ArrayList<GroupDTO> list = new ArrayList<GroupDTO>();
		list.add(gdto);
		model.addAttribute("group", dao.grHistory(gdto));
		
		return view;
	} 
	
	// 호스트 후기 더보기
	
	// 모임 상세페이지 이동
}

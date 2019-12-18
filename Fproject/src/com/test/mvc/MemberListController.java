/*======================================
	MemberListController.java
	- 사용자 정의 컨트롤러 클래스
	- 리스트 출력 액션.
	- DAO 객체에 대한 의존서 주입 준비
	  → setter injection
======================================*/

package com.test.mvc;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class MemberListController implements Controller
{
	// 인터페이스 자료형
	private ITestDAO dao;
	
	// setter 메소드 구성
	public void setDao(ITestDAO dao)
	{
		this.dao = dao;
	}
	
	// Controller 의 메소드 오버라이딩

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드
		ModelAndView mav = new ModelAndView();
		
		ArrayList<TestDTO> memberList = new ArrayList<TestDTO>();
		
		try
		{
			memberList = dao.list();
		}
		catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		mav.setViewName("/WEB-INF/views/Test.jsp");
		mav.addObject("memberList", memberList);
		
		return mav;
	}
	
}

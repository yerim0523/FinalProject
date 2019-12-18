/*=========================
	테스트 컨트롤러
=========================*/

package com.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HelloController implements Controller
{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// 액션 코드
		
		ModelAndView mav = new ModelAndView();
		
		String message = "Hello. SpringMVC World~!";
		
		mav.addObject("message", message);	// setAttribute
		mav.setViewName("/WEB-INF/views/Hello.jsp");	// forward : 뷰페이지 지정.
		
		return mav;
	}

}

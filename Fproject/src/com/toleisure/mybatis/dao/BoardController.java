package com.toleisure.mybatis.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value="/news.action", method=RequestMethod.GET)
	public String newsList(Model model)
	{
		String view = "/WEB-INF/views/news.jsp";
		
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		
		model.addAttribute("news", dao.news());		
		
		return view;
	}
	
	@RequestMapping(value="/event.action", method = RequestMethod.GET)
	public String eventList(Model model)
	{
		String view = "/WEB-INF/views/event.jsp";
		
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		
		model.addAttribute("event", dao.event());
		
		return view;
		
	}
	
	@RequestMapping(value="/faq.action", method = RequestMethod.GET)
	public String faqList(Model model)
	{
		String view = "/WEB-INF/views/faq.jsp";
		
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		
		model.addAttribute("faq", dao.faq());
		
		return view;
	}
}

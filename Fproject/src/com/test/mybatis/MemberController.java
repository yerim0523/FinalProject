package com.test.mybatis;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value = "/memberlist.action", method = RequestMethod.GET)
	public String memberList(Model model)
	{
		String view = "WEB-INF/views/InsertTest.jsp";
		
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		
		model.addAttribute("list", dao.list());
		
		return view;
	}
	
	@RequestMapping(value="/memberinsert.action", method=RequestMethod.POST)
	public String memberInsert(MemberDTO m)
	{
		String view = "redirect:memberlist.action";
		
		IMemberDAO dao = sqlsession.getMapper(IMemberDAO.class);
		dao.add(m);
		
		return view;
	}
}

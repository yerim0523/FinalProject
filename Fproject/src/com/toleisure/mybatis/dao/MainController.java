package com.toleisure.mybatis.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.toleisure.mybatis.dto.GroupDTO;

@Controller
public class MainController
{
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping(value="/main.action", method=RequestMethod.GET)
	public String HotGroupList(Model model)
	{
		String view = "WEB-INF/views/Main.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		
	    GroupDTO dto = new GroupDTO();
	    dto.setMemId("lee0528kr@naver.com");
		
		model.addAttribute("HotGroupList", dao.HotGroupList());		
		model.addAttribute("NewGroupList", dao.NewGroupList());	
		model.addAttribute("HotHostList", dao.HotHostList());	
		model.addAttribute("ClosingGroupList", dao.ClosingGroupList());	
		model.addAttribute("RecommendGroupList", dao.RecommendGroupList(dto.getMemId()));
		
		return view;
	}
	
	//-----------------------------------전체 모임 출력-------------------
	@RequestMapping(value="/all.action", method=RequestMethod.GET)
	public String AllMeeting(Model model)
	{
		String view = "WEB-INF/views/AllMeeting.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
	
		model.addAttribute("AllGroupList", dao.AllGroupList());		
		
		
		return view;
	}
	
	//-----------------------------------문화생활 모임-------------------
	@RequestMapping(value="/culture.action", method=RequestMethod.GET)
	public String Culture(Model model)
	{
		String view = "WEB-INF/views/Culture.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("CultureGroupList", dao.CultureGroupList());
		
		return view;
	}
	
	@RequestMapping(value="/exhibit.action", method=RequestMethod.GET)
	public String Exhibit(Model model)
	{
		String view = "WEB-INF/views/Exhibit.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("ExhibitGroupList", dao.ExhibitGroupList());
		
		return view;
	}
	
	@RequestMapping(value="/show.action", method=RequestMethod.GET)
	public String Performance(Model model)
	{
		String view = "WEB-INF/views/Show.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("ShowGroupList", dao.ShowGroupList());
		
		return view;
	}
	
	
	@RequestMapping(value="/play.action", method=RequestMethod.GET)
	public String Play(Model model)
	{
		String view = "WEB-INF/views/Play.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("PlayGroupList", dao.PlayGroupList());
		
		return view;
	}
	
	
	//-----------------------------------맛집모임-------------------
	@RequestMapping(value="/food.action", method=RequestMethod.GET)
	public String Food(Model model)
	{
		String view = "WEB-INF/views/Food.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("FoodGroupList", dao.FoodGroupList());
		
		return view;
	}
	
	@RequestMapping(value="/restaurant.action", method=RequestMethod.GET)
	public String restraunt(Model model)
	{
		String view = "WEB-INF/views/Restaurant.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("RestaurantGroupList", dao.RestaurantGroupList());
		
		return view;
	}
	
	@RequestMapping(value="/cafe.action", method=RequestMethod.GET)
	public String Cafe(Model model)
	{
		String view = "WEB-INF/views/Cafe.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("CafeGroupList", dao.CafeGroupList());
		
		return view;
	}
	
	//-----------------------------------테마별모임-------------------
	//-----------------------------------------------인기모임(default)
	@RequestMapping(value="/theme.action", method=RequestMethod.GET)
	public String HotGroup(Model model)
	{
		String view = "WEB-INF/views/HotGroup.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("HotGroupListAll", dao.HotGroupListAll());
		
		return view;
	}
	 
	//----------------------------------------------------신규모임
	@RequestMapping(value="/newgroup.action", method=RequestMethod.GET)
	public String Theme(Model model)
	{
		String view = "WEB-INF/views/NewGroup.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("NewGroupListAll", dao.NewGroupListAll());
		
		return view;
	}
	
	//----------------------------------------------------인기호스트
	@RequestMapping(value="/hothost.action", method=RequestMethod.GET)
	public String HotHost(Model model)
	{
		String view = "WEB-INF/views/HotHost.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("HotHostListAll", dao.HotHostListAll());
		
		return view;
	}
	
	//---------------------------------------------------마감임박모임
	@RequestMapping(value="/closing.action", method=RequestMethod.GET)
	public String Closing(Model model)
	{
		String view = "WEB-INF/views/ClosingGroup.jsp";
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		  
		model.addAttribute("ClosingGroupListAll", dao.ClosingGroupListAll());
		
		return view;
	}
	
	//--------------------------------------------------------추천모임
		@RequestMapping(value="/recommend.action", method=RequestMethod.GET)
		public String Recommend(Model model)
		{
			String view = "WEB-INF/views/RecommendGroup.jsp";
			
			IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
			GroupDTO dto = new GroupDTO();
		    dto.setMemId("lee0528kr@naver.com");
		    
			model.addAttribute("ClosingGroupListAll", dao.ClosingGroupListAll());
			
			model.addAttribute("RecommendGroupListAll", dao.RecommendGroupListAll(dto.getMemId()));
			
			return view;
		}
	//----------------------------------------------------------테마별 모임 end
}

package com.toleisure.mybatis.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toleisure.mybatis.dto.GroupDTO;
import com.toleisure.mybatis.dto.MemberDTO;

@Controller
public class MainController
{
	@Autowired
	private SqlSession sqlsession;

	@RequestMapping(value = "/main.action", method = RequestMethod.GET)
	public String HotGroupList(Model model, HttpSession session)
	{
		session.getAttribute("member");
		
		String view = "WEB-INF/views/Main.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		GroupDTO dto = new GroupDTO();
		MemberDTO sessionDto = (MemberDTO)session.getAttribute("member");
		
		
		if(session.getAttribute("member")!=null)
		{
			dto.setMemId(sessionDto.getMemId());
		}
		else
		{
			dto.setMemId("SYSTEM@naver.com");
		}
		
		System.out.println("====== " + session.getAttribute("member"));
		
		model.addAttribute("HotGroupList", dao.testList(dto.getMemId()));
		model.addAttribute("NewGroupList", dao.NewGroupList());
		model.addAttribute("HotHostList", dao.HotHostList());
		model.addAttribute("ClosingGroupList", dao.ClosingGroupList());
		
		if(session.getAttribute("member")!=null)
		{
			dto.setMemId(sessionDto.getMemId());
		}
		
		//model.addAttribute("meetFavList", dao.meetFavList(dto.getMemId()));
		model.addAttribute("RecommendGroupList", dao.RecommendGroupList(dto.getMemId()));
		model.addAttribute("sessionInfo", session.getAttribute("member"));
		
		return view;
	}

	// -----------------------------------전체 모임 출력-------------------
	@RequestMapping(value = "/all.action", method = RequestMethod.GET)
	public String AllMeeting(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/AllMeeting.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("AllGroupList", dao.AllGroupList());

		return view;
	}

	// -----------------------------------문화생활 모임-------------------
	@RequestMapping(value = "/culture.action", method = RequestMethod.GET)
	public String Culture(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/Culture.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("CultureGroupList", dao.CultureGroupList());

		return view;
	}

	@RequestMapping(value = "/exhibit.action", method = RequestMethod.GET)
	public String Exhibit(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/Exhibit.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("ExhibitGroupList", dao.ExhibitGroupList());

		return view;
	}

	@RequestMapping(value = "/show.action", method = RequestMethod.GET)
	public String Performance(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/Show.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("ShowGroupList", dao.ShowGroupList());

		return view;
	}

	@RequestMapping(value = "/play.action", method = RequestMethod.GET)
	public String Play(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/Play.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("PlayGroupList", dao.PlayGroupList());

		return view;
	}

	// -----------------------------------맛집모임-------------------
	@RequestMapping(value = "/food.action", method = RequestMethod.GET)
	public String Food(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/Food.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("FoodGroupList", dao.FoodGroupList());

		return view;
	}

	@RequestMapping(value = "/restaurant.action", method = RequestMethod.GET)
	public String restraunt(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/Restaurant.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("RestaurantGroupList", dao.RestaurantGroupList());

		return view;
	}

	@RequestMapping(value = "/cafe.action", method = RequestMethod.GET)
	public String Cafe(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/Cafe.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("CafeGroupList", dao.CafeGroupList());

		return view;
	}

	// -----------------------------------테마별모임-------------------
	// -----------------------------------------------인기모임(default)
	@RequestMapping(value = "/theme.action", method = RequestMethod.GET)
	public String HotGroup(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/HotGroup.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("HotGroupListAll", dao.HotGroupListAll());

		return view;
	}

	// ----------------------------------------------------신규모임
	@RequestMapping(value = "/newgroup.action", method = RequestMethod.GET)
	public String Theme(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/NewGroup.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("NewGroupListAll", dao.NewGroupListAll());

		return view;
	}

	// ----------------------------------------------------인기호스트
	@RequestMapping(value = "/hothost.action", method = RequestMethod.GET)
	public String HotHost(Model model, HttpSession session)
	{
		String view = "WEB-INF/views/HotHost.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("HotHostListAll", dao.HotHostListAll());

		return view;
	}

	// ---------------------------------------------------마감임박모임
	@RequestMapping(value = "/closing.action", method = RequestMethod.GET)
	public String Closing(Model model, HttpSession session)
	{
		String view = "WEB-INF/views/ClosingGroup.jsp";
		session.getAttribute("member");

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);

		model.addAttribute("ClosingGroupListAll", dao.ClosingGroupListAll());

		return view;
	}

	// --------------------------------------------------------추천모임
	@RequestMapping(value = "/recommend.action", method = RequestMethod.GET)
	public String Recommend(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/RecommendGroup.jsp";

		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		GroupDTO dto = new GroupDTO();
		dto.setMemId("lee0528kr@naver.com");

		model.addAttribute("ClosingGroupListAll", dao.ClosingGroupListAll());

		model.addAttribute("RecommendGroupListAll", dao.RecommendGroupListAll(dto.getMemId()));
		
		/* model.addAttribute("AvgStar", dao.AvgStar(dto.getGrCode())); */

		return view;
	}
	// ----------------------------------------------------------테마별 모임 end

	
	// ---------------------------------------------------------- 메인바 → 회원가입
	@RequestMapping(value = "/join.action", method = RequestMethod.GET)
	public String Join(Model model)
	{
		String view = "WEB-INF/views/FileTest2.jsp";

		return view;
	}
	
	// ---------------------------------------------------------- 메인바 → 로그인
	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String Login(Model model)
	{
		String view = "WEB-INF/views/login.jsp";

		return view;
	}
	
	// ---------------------------------------------------------- 모임 상세 페이지 내용
	@RequestMapping(value = "/groupdetail.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String GroupContent(int ngCode, GroupDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/meetingContent.jsp";
		session.getAttribute("member");
		
		System.out.println("===========  " + ngCode);
		
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		
		//dao.groupContent(ngCode);
		
		List<GroupDTO> groupContent = dao.groupContent(ngCode);
		List<GroupDTO> contentReview = dao.ContentReview(ngCode);
		List<GroupDTO> contentGBoard = dao.ContentGBoard(ngCode);
		List<GroupDTO> contentMember = dao.ContentMember(ngCode);
		
		model.addAttribute("groupContent", groupContent);
		model.addAttribute("contentReview", contentReview);
		model.addAttribute("contentGBoard", contentGBoard);
		model.addAttribute("contentMember", contentMember);
		
		session.setAttribute("ngCode", dto.getNgCode());
		
		return view;
		
	}
	
	// ---------------------------------------------------------- 찜 모임 여부
	@RequestMapping(value = "/meetfavoritefind.action", method = {RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String favoriteMeetYN(GroupDTO dto, Model model, HttpSession session)
	{
		session.getAttribute("member");
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		String isFavYn = dao.meetFavCheck(dto);
		
		System.out.println("==================");
		System.out.println("==== isMemYn = "+isFavYn);
		System.out.println("==================");
		
		return isFavYn;
	}
	

	// ---------------------------------------------------------- 찜 모임 추가
	@RequestMapping(value = "/meetfavoriteinsert.action", method = {RequestMethod.POST,RequestMethod.GET})
	public String favoriteMeetInsert(GroupDTO dto, Model model, HttpSession session, HttpServletRequest request)
	{
		session.getAttribute("member");
		IMainDAO dao = sqlsession.getMapper(IMainDAO.class);
		
		System.out.println("========  " + dto.getMemId());
		System.out.println("========  " + dto.getNgCode());
		
		dao.meetFavInsert(dto);
		
		return "redirect:main.action";
	}
	
}
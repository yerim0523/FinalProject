package com.toleisure.mybatis.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.toleisure.mybatis.dto.BoardDTO;
import com.toleisure.mybatis.dto.MemberDTO;
import com.toleisure.mybatis.dto.NoticeVo;
import com.toleisure.mybatis.dto.PagingDTO;

@Controller
public class BoardController
{
	@Autowired
	private SqlSession sqlsession;

	@RequestMapping(value = "/center.action", method = RequestMethod.GET)
	public String center(Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "/WEB-INF/views/center.jsp";

		return view;
	}

	@RequestMapping(value = "/event.action") // �씠踰ㅽ듃 由ъ뒪�듃 �샇異�
	public String eventList(BoardDTO event, @RequestParam(defaultValue = "1") int curPage,
			Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/event.jsp";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		int listCnt = dao.eventListCount();
		PagingDTO paging = new PagingDTO(listCnt, curPage);
		event.setStartIndex(paging.getStartIndex());
		event.setEndIndex(paging.getEndIndex());

		List<BoardDTO> eventList = dao.eventList(event);

		model.addAttribute("eventList", eventList);
		model.addAttribute("listCnt", listCnt);
		model.addAttribute("paging", paging);
		return view;
	}

	@RequestMapping(value = "/eventdetail.action", method = RequestMethod.GET) // �씠踰ㅽ듃 �긽�꽭 紐⑸줉 �샇異�
	public String eventDetail(int boardNum, int curPage, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/eventDetail.jsp";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		int listCnt = dao.newsListCount();

		dao.updateEventHitCount(boardNum);

		PagingDTO paging = new PagingDTO(listCnt, curPage);

		List<BoardDTO> eventSelect = dao.eventSelect(boardNum);

		model.addAttribute("eventSelect", eventSelect);
		model.addAttribute("paging", paging);

		return view;
	}

	@RequestMapping(value = "/eventinsertform.action")		// �씠踰ㅽ듃 �엯�젰 �뤌 �샇異�
	public String eventInsertForm(HttpSession session)
	{
		session.getAttribute("member");
		String view = "/WEB-INF/views/EventInsertForm.jsp";

		return view;
	}

	@RequestMapping(value = "/eventinsert.action", method ={ RequestMethod.GET, RequestMethod.POST }) // �씠踰ㅽ듃 �엯�젰 �떎�뻾
	public String eventInsert(HttpSession session, BoardDTO dto)
	{
		String view = "event.action";
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		dao.eventInsert(dto);

		return view;
	}

	@RequestMapping(value = "/eventupdateform.action", method ={ RequestMethod.GET, RequestMethod.POST }) // �씠踰ㅽ듃 �닔�젙 �뤌 �샇異�
	public String eventUpdateForm(int boardNum, HttpSession session, BoardDTO dto, Model model)
	{
		String view = "/WEB-INF/views/EventUpdateForm.jsp";

		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		List<BoardDTO> eventUpdate = dao.eventSelect(boardNum);

		model.addAttribute("eventUpdate", eventUpdate);

		return view;
	}

	@RequestMapping(value = "/eventupdate.action", method ={ RequestMethod.GET, RequestMethod.POST })   // �씠踰ㅽ듃 �뾽�뜲�씠�듃 �떎�뻾
	public String eventUpdate(HttpSession session, BoardDTO dto)
	{
		String view = "event.action";
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		int boardNum = dto.getBoardNum();

		int result = dao.EventNoticeCheck(boardNum);
		int check = dto.getCheck();

		dto.setEventNoticeCheck(result);

		if (dto.getEventNoticeCheck() != 0) // �썝�옒 怨듭�濡� �릺�뼱�엳�떎硫�
		{
			if (check != 0) // �삉 怨듭�濡� �벑濡앹씠硫�
			{
				dao.eventUpdate(dto);
			}

			else // 怨듭�瑜� �빐�젣�븳�떎硫�
			{
				dao.eventUpdate(dto);
				dao.EventNoticeDelete(dto);
			}
		} else // 怨듭�媛� �븘�땲�뿀�떎硫�
		{
			if (check != 0) // �깉濡�寃� 怨듭��벑濡앹씠硫�
			{
				dao.eventUpdate(dto);
				dao.InsertEventNotice(dto);
			} else // 怨듭�媛� �븘�땲�씪硫�
			{
				dao.eventUpdate(dto);
			}
		}
		return view;
	}

	@RequestMapping(value = "/eventdelete.action", method ={ RequestMethod.GET, RequestMethod.POST })  // �씠踰ㅽ듃 �궘�젣 �떎�뻾
	public String eventDelete(int boardNum, HttpSession session)
	{
		String view = "event.action";
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		session.getAttribute("member");

		dao.eventDelete(boardNum);

		return view;

	}

	@RequestMapping(value = "/news.action")
	public String newsList(@ModelAttribute("NEWS") BoardDTO news, @RequestParam(defaultValue = "1") int curPage,
			Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/news.jsp";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		int listCnt = dao.newsListCount();
		PagingDTO paging = new PagingDTO(listCnt, curPage); // 珥� �뜲�씠�꽣媛쒖닔, �쁽�옱�럹�씠吏�
		news.setStartIndex(paging.getStartIndex());
		news.setEndIndex(paging.getEndIndex());

		List<BoardDTO> newsList = dao.newsList(news);

		model.addAttribute("newsList", newsList);
		model.addAttribute("listCnt", listCnt);
		model.addAttribute("paging", paging);
		return view;
	}

	@RequestMapping(value = "/newsdetail.action", method = RequestMethod.GET)
	public String newsDetail(int boardNum, int curPage, Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "/WEB-INF/views/newsDetail.jsp";
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		int listCnt = dao.newsListCount();

		dao.updateNewsHitCount(boardNum);

		PagingDTO paging = new PagingDTO(listCnt, curPage);

		List<BoardDTO> newsSelect = dao.newsSelect(boardNum);

		model.addAttribute("newsSelect", newsSelect);
		model.addAttribute("paging", paging);
		return view;
	}

	@RequestMapping(value = "/newsinsertform.action")
	public String newsInsertForm()
	{
		String view = "/WEB-INF/views/NewsInsertForm.jsp";

		return view;
	}

	@RequestMapping(value = "/newsinsert.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String newsInsert(HttpSession session, BoardDTO dto)
	{
		String view = "news.action";
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		dao.newsInsert(dto);

		return view;
	}

	@RequestMapping(value = "/newsupdateform.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String newsUpdateForm(int boardNum, HttpSession session, BoardDTO dto, Model model)
	{
		String view = "/WEB-INF/views/NewsUpdateForm.jsp";

		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		List<BoardDTO> newsUpdate = dao.newsSelect(boardNum);

		model.addAttribute("newsUpdate", newsUpdate);

		return view;
	}

	@RequestMapping(value = "/newsupdate.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String newsUpdate(HttpSession session, BoardDTO dto)
	{
		String view = "news.action";
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		int boardNum = dto.getBoardNum();

		int result = dao.NewsNoticeCheck(boardNum);
		int check = dto.getCheck();

		dto.setNewsNoticeCheck(result);

		if (dto.getNewsNoticeCheck() != 0) // �썝�옒 怨듭�濡� �릺�뼱�엳�떎硫�
		{
			if (check != 0) // �삉 怨듭�濡� �벑濡앹씠硫�
			{
				dao.newsUpdate(dto);
			}

			else // 怨듭�瑜� �빐�젣�븳�떎硫�
			{
				dao.newsUpdate(dto);
				dao.NewsNoticeDelete(dto);
			}
		} else // 怨듭�媛� �븘�땲�뿀�떎硫�
		{
			if (check != 0) // �깉濡�寃� 怨듭��벑濡앹씠硫�
			{
				dao.newsUpdate(dto);
				dao.InsertNewsNotice(dto);
			} else // 怨듭�媛� �븘�땲�씪硫�
			{
				dao.newsUpdate(dto);
			}
		}
		return view;
	}

	@RequestMapping(value = "/newsdelete.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String newsDelete(int boardNum, HttpSession session)
	{
		String view = "news.action";
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		session.getAttribute("member");

		dao.newsDelete(boardNum);

		return view;

	}

	@RequestMapping(value = "/faq.action")
	public String faqList(BoardDTO faq, @RequestParam(defaultValue = "1") int curPage,
			Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/faq.jsp";
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		
		String id=dto.getMemId();	
		
		faq.setFaqId(id);
		String faqId= faq.getFaqId();
		System.out.println(faqId);
		System.out.println(id);
		
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		
		int listCnt = dao.qnaListCount(id);
		System.out.println(listCnt);
		
		PagingDTO paging = new PagingDTO(listCnt, curPage);
		
		faq.setStartIndex(paging.getStartIndex());
		faq.setEndIndex(paging.getEndIndex());
		
		System.out.println(faq.getStartIndex());
		System.out.println(faq.getEndIndex());
		
		List<BoardDTO> faqList = dao.faqList(faq);
		List<BoardDTO> qnaList = dao.qnaList(faq);

		
		model.addAttribute("faqList", faqList);
		model.addAttribute("qnaList", qnaList);
		model.addAttribute("listCnt", listCnt);
		model.addAttribute("paging", paging);
		
		return view;
	}
	
	@RequestMapping(value = "/faqetc.action")
	public String faqEtcList(@ModelAttribute("FAQ") BoardDTO faq,Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/faqEtc.jsp";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);


		List<BoardDTO> faqEtcList = dao.faqEtcList(faq);

		model.addAttribute("faqEtcList", faqEtcList);
		return view;
	}
	
	@RequestMapping(value = "/faqpay.action")
	public String faqPayList(@ModelAttribute("FAQ") BoardDTO faq,Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/faqPay.jsp";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);


		List<BoardDTO> faqPayList = dao.faqPayList(faq);

		model.addAttribute("faqPayList", faqPayList);
		return view;
	}
	
	@RequestMapping(value = "/faquse.action")
	public String faqUseList(@ModelAttribute("FAQ") BoardDTO faq,Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/faqUse.jsp";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);


		List<BoardDTO> faqUseList = dao.faqUseList(faq);

		model.addAttribute("faqUseList", faqUseList);
		return view;
	}
	
	@RequestMapping(value = "/faquser.action")
	public String faqUserList(@ModelAttribute("FAQ") BoardDTO faq,Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/faqUser.jsp";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);


		List<BoardDTO> faqUserList = dao.faqUserList(faq);

		model.addAttribute("faqUserList", faqUserList);
		return view;
	}
	
	

	@RequestMapping(value = "/faqinsertform.action")
	public String faqInsertForm()
	{
		String view = "/WEB-INF/views/FAQInsertForm.jsp";

		return view;
	}

	@RequestMapping(value = "/faqinsert.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String faqInsert(HttpSession session, BoardDTO dto)
	{
		String view = "faq.action";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		dao.faqInsert(dto);

		return view;
	}

	@RequestMapping(value = "/faqupdateform.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String faqUpdateForm(int boardNum, HttpSession session, BoardDTO dto, Model model)
	{
		String view = "/WEB-INF/views/FAQUpdateForm.jsp";

		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		List<BoardDTO> faqUpdate = dao.faqUpdateForm(boardNum);

		model.addAttribute("faqUpdate", faqUpdate);

		return view;
	}

	@RequestMapping(value = "/faqupdate.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String faqUpdate(HttpSession session, BoardDTO dto)
	{
		String view = "faq.action";
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		dao.faqUpdate(dto);

		return view;
	}

	@RequestMapping(value = "/faqdelete.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String faqDelete(int boardNum, HttpSession session)
	{
		String view = "faq.action";
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		session.getAttribute("member");

		dao.faqDelete(boardNum);

		return view;

	}
	
	
	
	
	@RequestMapping(value = "/qnainsert.action", method =
		{ RequestMethod.GET, RequestMethod.POST })
		public String qnaInsert(HttpSession session, BoardDTO dto)
		{
			String view = "faq.action";
			session.getAttribute("member");

			IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

			dao.qnaInsert(dto);

			return view;
		}
	

}

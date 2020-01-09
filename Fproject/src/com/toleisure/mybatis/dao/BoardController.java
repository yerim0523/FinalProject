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

	@RequestMapping(value = "/event.action") // 
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

	@RequestMapping(value = "/eventdetail.action", method = RequestMethod.GET) // 
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

	@RequestMapping(value = "/eventinsertform.action")		// 
	public String eventInsertForm(HttpSession session)
	{
		session.getAttribute("member");
		String view = "/WEB-INF/views/EventInsertForm.jsp";

		return view;
	}

	@RequestMapping(value = "/eventinsert.action", method ={ RequestMethod.GET, RequestMethod.POST }) // 
	public String eventInsert(HttpSession session, BoardDTO dto)
	{
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		dao.eventInsert(dto);

		return "redirect:event.action";
	}

	@RequestMapping(value = "/eventupdateform.action", method ={ RequestMethod.GET, RequestMethod.POST }) // 
	public String eventUpdateForm(int boardNum, HttpSession session, BoardDTO dto, Model model)
	{
		String view = "/WEB-INF/views/EventUpdateForm.jsp";

		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class); 

		List<BoardDTO> eventUpdate = dao.eventSelect(boardNum);

		model.addAttribute("eventUpdate", eventUpdate);

		return view;
	}

	@RequestMapping(value = "/eventupdate.action", method ={ RequestMethod.GET, RequestMethod.POST })   //
	public String eventUpdate(HttpSession session, BoardDTO dto)
	{
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		int boardNum = dto.getBoardNum();

		int result = dao.EventNoticeCheck(boardNum);
		int check = dto.getCheck();

		dto.setEventNoticeCheck(result);

		if (dto.getEventNoticeCheck() != 0) // 
		{
			if (check != 0) //
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
		return "redirect:event.action";
	}

	@RequestMapping(value = "/eventdelete.action", method ={ RequestMethod.GET, RequestMethod.POST })  // 
	public String eventDelete(int boardNum, HttpSession session)
	{
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		session.getAttribute("member");

		dao.eventDelete(boardNum);

		return "redirect:event.action";

	}

	@RequestMapping(value = "/news.action")
	public String newsList(@ModelAttribute("NEWS") BoardDTO news, @RequestParam(defaultValue = "1") int curPage,
			Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/news.jsp";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		int listCnt = dao.newsListCount();
		PagingDTO paging = new PagingDTO(listCnt, curPage); // 
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
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		dao.newsInsert(dto);

		return "redirect:news.action";
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
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		int boardNum = dto.getBoardNum();

		int result = dao.NewsNoticeCheck(boardNum);
		int check = dto.getCheck();

		dto.setNewsNoticeCheck(result);

		if (dto.getNewsNoticeCheck() != 0) // 
		{
			if (check != 0) // 
			{
				dao.newsUpdate(dto);
			}

			else // 
			{
				dao.newsUpdate(dto);
				dao.NewsNoticeDelete(dto);
			}
		} else // 
		{
			if (check != 0) // 
			{
				dao.newsUpdate(dto);
				dao.InsertNewsNotice(dto);
			} else // 
			{
				dao.newsUpdate(dto);
			}
		}
		return "redirect:news.action";
	}

	@RequestMapping(value = "/newsdelete.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String newsDelete(int boardNum, HttpSession session)
	{
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		session.getAttribute("member");

		dao.newsDelete(boardNum);

		return "redirect:news.action";

	}

	@RequestMapping(value = "/faq.action")
	public String faqList(BoardDTO faq,Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/faq.jsp";
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		
		if(dto != null)
		{
			String id=dto.getMemId();
			
			List<BoardDTO> faqList = dao.faqList(faq);
			model.addAttribute("faqList", faqList);
			
			
			int mode = (int)session.getAttribute("mode");
			System.out.println(mode);
			
			faq.setFaqId(id);
			String faqId= faq.getFaqId();
			System.out.println(faqId);
			System.out.println(id);
			
			
			int listCnt = dao.qnaListCount(id);
			
			System.out.println(listCnt);

			
			
			List<BoardDTO> qnaList = dao.qnaList(faq);

			
			
			model.addAttribute("qnaList", qnaList);
			model.addAttribute("listCnt", listCnt);
		}
		else
		{
			List<BoardDTO> faqList = dao.faqList(faq);
			model.addAttribute("faqList", faqList);
			
			
			view ="/WEB-INF/views/Basicfaq.jsp";
			return view;
		}
		

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
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		dao.faqInsert(dto);

		return "redirect:faq.action";
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
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		dao.faqUpdate(dto);

		return "redirect:faq.action";
	}

	@RequestMapping(value = "/faqdelete.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String faqDelete(int boardNum, HttpSession session)
	{
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		session.getAttribute("member");

		dao.faqDelete(boardNum);

		return "redirect:faq.action";

	}
	
	
	
	
	@RequestMapping(value = "/qnainsert.action", method =
		{ RequestMethod.GET, RequestMethod.POST })
		public String qnaInsert(HttpSession session, BoardDTO faq)
		{
			session.getAttribute("member");
			MemberDTO dto = (MemberDTO)session.getAttribute("member");
			
			String id=dto.getMemId();	
			
			faq.setFaqId(id);
			
			
			IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

			dao.qnaInsert(faq);

			return "redirect:faq.action";
		}
	
	@RequestMapping(value = "/qnadetail.action", method =
		{ RequestMethod.GET, RequestMethod.POST })
		public String QNADetail(HttpSession session, BoardDTO faq)
		{
			String view = "faq.action";
			session.getAttribute("member");
			MemberDTO dto = (MemberDTO)session.getAttribute("member");
			
			String id=dto.getMemId();	
			faq.setFaqId(id);
			
			int mode = (int)session.getAttribute("mode");
			System.out.println(mode);
			
			IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

			dao.qnaInsert(faq);

			return view;
		}
	
	@RequestMapping(value = "/answer.action")
	public String answerList(BoardDTO answer, @RequestParam(defaultValue = "1") int curPage,
			Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/Answer.jsp";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		int listCnt = dao.answerListCount();
		
		PagingDTO paging = new PagingDTO(listCnt, curPage); // 珥� �뜲�씠�꽣媛쒖닔, �쁽�옱�럹�씠吏�
		
		answer.setStartIndex(paging.getStartIndex());
		answer.setEndIndex(paging.getEndIndex());

		List<BoardDTO> answerList = dao.answerList(answer);

		model.addAttribute("answerList", answerList);
		model.addAttribute("listCnt", listCnt);
		model.addAttribute("paging", paging);
		return view;
	}
	
	
	
	@RequestMapping(value = "/answerinsertform.action", method = { RequestMethod.GET, RequestMethod.POST })// �씠踰ㅽ듃 �긽�꽭 紐⑸줉 �샇異�
	public String answerDetailForm(int boardNum, BoardDTO dto,Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/AnswerInsertForm.jsp";
		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		List<BoardDTO> answerDetail = dao.answerDetail(boardNum);
		


		model.addAttribute("answerDetail", answerDetail);
		return view;
	}
	
	@RequestMapping(value = "/answerinsert.action", method ={ RequestMethod.GET, RequestMethod.POST })   // �씠踰ㅽ듃 �뾽�뜲�씠�듃 �떎�뻾
	public String answerInsert(HttpSession session, BoardDTO dto)
	{
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		
		String id=mem.getMemId();	
		
		
		dto.setMemId(id);
		
		dao.answerInsert(dto);
		
		return "redirect:answer.action";
	}
	
	
	@RequestMapping(value = "/answerupdateform.action", method =
		{ RequestMethod.GET, RequestMethod.POST })
		public String answerUpdateForm(int boardNum, HttpSession session, BoardDTO dto, Model model)
		{
			String view = "/WEB-INF/views/AnswerUpdateForm.jsp";

			session.getAttribute("member");

			IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
			
			List<BoardDTO> answerDetail = dao.answerDetail(boardNum);
			List<BoardDTO> answerUpdate = dao.answerUpdateForm(boardNum);

			model.addAttribute("answerUpdate", answerUpdate);
			model.addAttribute("answerDetail", answerDetail);
			return view;
		}
	
	

	@RequestMapping(value = "/answerupdate.action", method =
	{ RequestMethod.GET, RequestMethod.POST })
	public String answerUpdate(HttpSession session, BoardDTO dto)
	{
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		MemberDTO mem = (MemberDTO)session.getAttribute("member");
		
		String id=mem.getMemId();	
		
		
		dto.setMemId(id);
		
		
		dao.answerUpdate(dto);

		return "redirect:answer.action";
	}
	
	
	@RequestMapping(value = "/answerform.action", method =
		{ RequestMethod.GET, RequestMethod.POST })
		public String answerForm(int boardNum, HttpSession session, BoardDTO dto, Model model)
		{
			String view = "/WEB-INF/views/AnswerForm.jsp";

			session.getAttribute("member");

			IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
			
			List<BoardDTO> answerDetail = dao.answerDetail(boardNum);
			List<BoardDTO> answerUpdate = dao.answerUpdateForm(boardNum);

			model.addAttribute("answerUpdate", answerUpdate);
			model.addAttribute("answerDetail", answerDetail);
			return view;
		}
	
	@RequestMapping(value = "/mainboard.action")
	public String mainboardList(@ModelAttribute("MAINBOARD") BoardDTO mainboard, @RequestParam(defaultValue = "1") int curPage,
								Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/mainboard.jsp";
		session.getAttribute("member");
		
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		
		int listCnt = dao.mainboardListCont();
		PagingDTO paging = new PagingDTO(listCnt, curPage);
		mainboard.setStartIndex(paging.getStartIndex());
		mainboard.setEndIndex(paging.getEndIndex());
		
		List<BoardDTO> mainboardList = dao.mainboardList(mainboard);
		
		model.addAttribute("mainboardList", mainboardList);
		model.addAttribute("listCnt", listCnt);
		model.addAttribute("paging", paging);
		
		return view;
	}
	
	@RequestMapping(value = "/mainboarddetail.action", method = RequestMethod.GET)
	public String mainboardDetail(int boardNum, int curPage, Model model, HttpSession session)
	{
		session.getAttribute("member");
		String view = "WEB-INF/views/mainboardDetail.jsp";
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		int listCnt = dao.mainboardListCont();
		
		System.out.println(boardNum);
		
		dao.updateMainBoardHitCount(boardNum);
		
		PagingDTO paging = new PagingDTO(listCnt, curPage);
		
		List<BoardDTO> mainboardSelect = dao.mainboardSelect(boardNum);
		
		model.addAttribute("mainboardSelect", mainboardSelect);
		model.addAttribute("paging", paging);
		
		return view;
	}
	
	@RequestMapping(value = "/mainboardinsertform.action")
	public String mainboardInsertForm()
	{
		String view = "/WEB-INF/views/mainboardInsertForm.jsp";
		
		return view;
	}
	
	@RequestMapping(value = "/mainboardinsert.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String mainboardInsert(HttpSession session, BoardDTO dto)
	{
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		
		dao.mainboardInsert(dto);
		
		return "redirect:mainboard.action";
	}
	
	@RequestMapping(value = "/mainboarddelete.action", method ={ RequestMethod.GET, RequestMethod.POST })
	public String mainboardDelete(int boardNum, HttpSession session)
	{
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		session.getAttribute("member");

		dao.mainboardDelete(boardNum);

		return "redirect:mainboard.action";

	} 
	
	@RequestMapping(value = "/mainboardupdateform.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String mainboardUpdateForm(int boardNum, HttpSession session, BoardDTO dto, Model model)
	{
		String view = "/WEB-INF/views/mainboardUpdateForm.jsp";

		session.getAttribute("member");

		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		List<BoardDTO> mainboardUpdate = dao.mainboardSelect(boardNum);

		model.addAttribute("mainboardUpdate", mainboardUpdate);

		return view;
	}
	
	@RequestMapping(value = "/mainboardupdate.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String mainboardUpdate(HttpSession session, BoardDTO dto)
	{
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);

		int boardNum = dto.getBoardNum();
		System.out.println(boardNum);

		int result = dao.mainboardNoticeCheck(boardNum);
		int check = dto.getCheck();

		dto.setMainboardNoticeCheck(result);

		if (dto.getMainboardNoticeCheck() != 0) 
		{
			if (check != 0)
			{
				dao.mainboardUpdate(dto);
			}

			else 
			{
				dao.mainboardUpdate(dto);
				dao.mainboardNoticeDelete(dto);
			}
		} else 
		{
			if (check != 0) 
			{
				dao.mainboardUpdate(dto);
				dao.InsertMainboardNotice(dto);
			} else 
			{
				dao.mainboardUpdate(dto);
			}
		}
		return "redirect:mainboard.action";
	}
	
	@RequestMapping(value = "/reportinsert.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String reviewReport(BoardDTO dto, Model model, HttpSession session)
	{
		session.getAttribute("member");
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		int ngCode = (int)session.getAttribute("ngCode");
		dto.setNgCode(ngCode);
		
		dao.reviewReport(dto); 
		
		return "redirect:groupdetail.action?ngCode="+dto.getNgCode();
	}
	
	@RequestMapping(value = "/allreportpage.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String allReportPage(BoardDTO dto, Model model, HttpSession session)
	{
		String view = "/WEB-INF/views/ReviewReport.jsp";
		
		return view;
	}
	
	@RequestMapping(value = "allreportinsert.action", method = {RequestMethod.GET, RequestMethod.POST})
	public String allReportInsert(BoardDTO dto, Model model, HttpSession session)
	{
		session.getAttribute("member");
		
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		
		int ngCode = (int)session.getAttribute("ngCode");
		int grCode = (int)session.getAttribute("grCode"); 
		dto.setNgCode(ngCode);
		dto.setGrCode(grCode);
		
		dao.reviewReport(dto);
		
		return "redirect:reviewmeeting.action?grCode="+dto.getGrCode();
	}
}

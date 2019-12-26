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
import com.toleisure.mybatis.dto.NoticeVo;
import com.toleisure.mybatis.dto.PagingDTO;

@Controller
public class BoardController
{
	@Autowired
	private SqlSession sqlsession;
	
	
   @RequestMapping(value="/center.action", method=RequestMethod.GET)
	public String center(Model model, HttpSession session)
	{
	   session.getAttribute("member");
		String view = "/WEB-INF/views/center.jsp";

		return view;
	}
		
	@RequestMapping(value = "/news.action")
    public String newsList(@ModelAttribute("NEWS") BoardDTO news,
                            @RequestParam(defaultValue="1") int curPage,
                            Model model, HttpSession session
                                ) {
	 String view = "/WEB-INF/views/news.jsp";
	 session.getAttribute("member");
	 
	 IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	 
        int listCnt = dao.newsListCount();       
        PagingDTO paging = new PagingDTO(listCnt, curPage); // 총 데이터개수, 현재페이지
        news.setStartIndex(paging.getStartIndex());
        news.setEndIndex(paging.getEndIndex());
        
      
             
        List<BoardDTO> newsList=dao.newsList(news);
        
        model.addAttribute("newsList",newsList);
        model.addAttribute("listCnt", listCnt);
        model.addAttribute("paging", paging);
        return view;
    }

	 @RequestMapping(value = "/faq.action")
	    public String faqList(@ModelAttribute("FAQ") BoardDTO faq,
	                            @RequestParam(defaultValue="1") int curPage,
	                            Model model, HttpSession session
	                                ) {
		 String view = "/WEB-INF/views/faq.jsp";
		 session.getAttribute("member");
		 
		 IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	        int listCnt = dao.faqListCount();
	        PagingDTO paging = new PagingDTO(listCnt, curPage);
	     
	        faq.setStartIndex(paging.getStartIndex());
	        faq.setCntPerPage(paging.getPageSize());
	             
	        List<BoardDTO> faqList=dao.faqList(faq);
	        
	        model.addAttribute("faqList",faqList);
	        model.addAttribute("listCnt", listCnt);
	        model.addAttribute("paging", paging);
	        return view;
	    }
	 
 
	 @RequestMapping(value = "/event.action")
	    public String eventList(@ModelAttribute("Notice") BoardDTO event,
	                            @RequestParam(defaultValue="1") int curPage,
	                            Model model, HttpSession session
	                                ) {
		 String view = "/WEB-INF/views/event.jsp";
		 session.getAttribute("member");
		 
		 IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	        int listCnt = dao.eventListCount();
	        PagingDTO paging = new PagingDTO(listCnt, curPage);
	        event.setStartIndex(paging.getStartIndex());
	        event.setEndIndex(paging.getEndIndex());
	             
	        List<BoardDTO> eventList=dao.eventList(event);
	        
	        model.addAttribute("eventList",eventList);
	        model.addAttribute("listCnt", listCnt);
	        model.addAttribute("paging", paging);
	        return view;
	    }
	 
	 @RequestMapping(value = "/eventdetail.action", method = RequestMethod.GET) 
	  public String eventDetail(int boardNum,int curPage, Model model, HttpSession session) 
	  { 
		  String view ="/WEB-INF/views/eventDetail.jsp"; 
		  session.getAttribute("member");
		  
		  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		  int listCnt = dao.newsListCount();
		  
		  
		  dao.updateEventHitCount(boardNum);
		  
		  
		  PagingDTO paging = new PagingDTO(listCnt, curPage);
		  
		  List<BoardDTO> eventSelect =dao.eventSelect(boardNum);
		  
	      model.addAttribute("eventSelect",eventSelect);
	      model.addAttribute("paging", paging);
	      
	  return view; 
	  }
	 
	 
	 @RequestMapping(value = "/newsdetail.action", method = RequestMethod.GET) 
	  public String newsDetail(int boardNum,int curPage, Model model, HttpSession session) 
	  { 
		 session.getAttribute("member");
		  String view ="/WEB-INF/views/newsDetail.jsp"; 
		  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		  int listCnt = dao.newsListCount();
		  
		  dao.updateNewsHitCount(boardNum);
		  
		  PagingDTO paging = new PagingDTO(listCnt, curPage);
		  
		  List<BoardDTO> newsSelect =dao.newsSelect(boardNum);
		  
	      model.addAttribute("newsSelect",newsSelect);
	      model.addAttribute("paging", paging);
	  return view; 
	  }
	/*
	 * @RequestMapping(value = "/noticeDetail/{notice_id}") public String
	 * noticeEdit(@PathVariable String notice_id, Model model) { String view
	 * ="/WEB-INF/views/noticeList.jsp"; IBoardDAO dao =
	 * sqlsession.getMapper(IBoardDAO.class);
	 * 
	 * model.addAttribute("notice",dao.eventSelect(notice_id));
	 * 
	 * return "notice/noticeDetail"; }
	 * 
	 * @RequestMapping(value = "/noticeRegi") public String noticeRegi() { return
	 * "notice/noticeDetail";
	 * 
	 * }
	 */
	 @RequestMapping(value = "/eventinsertform.action")
	  public String eventInsertForm(HttpSession session) 
	 {
		 session.getAttribute("member");
	  String view = "/WEB-INF/views/EventInsertForm.jsp"; 
	  
	  return view; 
	  
	  
	  }
	  
	 @RequestMapping(value = "/eventinsert.action",method={RequestMethod.GET, RequestMethod.POST}) 
	  public String eventInsert(HttpSession session,BoardDTO dto) 
	 {
	  String view = "event.action";
	  session.getAttribute("member");
		
		session.getAttribute("member");
	  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	  
	  dao.eventInsert(dto);
	  
	  return view; 
	  
	  
	  }
	 
	@RequestMapping(value = "/newsinsertform.action")
	  public String newsInsertForm() 
	 {
	  String view = "/WEB-INF/views/NewsInsertForm.jsp"; 
	  
	  return view;   
	  }
	  
	
	
	 @RequestMapping(value = "/newsinsert.action",method={RequestMethod.GET, RequestMethod.POST}) 
	  public String newsInsert(HttpSession session,BoardDTO dto) 
	 {
	  String view = "news.action";
		session.getAttribute("member");
	  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	  
	  dao.newsInsert(dto);
	  
	  return view; 	  
	  }
	 
	 @RequestMapping(value = "/faqinsertform.action")
	  public String faqInsertForm() 
	 {
	  String view = "/WEB-INF/views/FAQInsertForm.jsp"; 
	  
	  return view;   
	  }
	 
	 
	 @RequestMapping(value = "/faqinsert.action",method={RequestMethod.GET, RequestMethod.POST}) 
	  public String faqInsert(HttpSession session,BoardDTO dto) 
	 {
	  String view = "faq.action";
	  session.getAttribute("member");
		
	  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	  
	  dao.faqInsert(dto);
	  
	  return view; 	  
	  }
	 
	 
	 
	 
	 @RequestMapping(value = "/eventupdateform.action",method={RequestMethod.GET, RequestMethod.POST}) 
	  public String eventUpdateForm(int boardNum,HttpSession session,BoardDTO dto,Model model) 
	 {
	  String view = "/WEB-INF/views/EventUpdateForm.jsp";
	  
	  session.getAttribute("member");
		
	  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	  
	  
	  List<BoardDTO> eventUpdate =dao.eventSelect(boardNum);
	  
      model.addAttribute("eventUpdate",eventUpdate);
	  
	  return view; 	  
	  }
	 
	 
	 @RequestMapping(value = "/eventupdate.action",method={RequestMethod.GET, RequestMethod.POST}) 
	  public String eventUpdate(HttpSession session,BoardDTO dto) 
	 {
	  String view = "event.action";
		session.getAttribute("member");
	  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	  
	  int boardNum = dto.getBoardNum();
	  
	 int result = dao.EventNoticeCheck(boardNum);
	 int check = dto.getCheck();
	 
	 dto.setEventNoticeCheck(result);
	 
	 if(dto.getEventNoticeCheck()!=0) // 원래 공지로 되어있다면
	 {
		 if(check!=0)			// 또 공지로 등록이면
		 {
		 dao.eventUpdate(dto);
		 }
		 
		 else					// 공지를 해제한다면
		 {
		 dao.eventUpdate(dto);
		 dao.EventNoticeDelete(dto);
		 }
	 }
	 else						// 공지가 아니었다면
	 {
		 if(check!=0)			// 새롭게 공지등록이면
		 {
		 dao.eventUpdate(dto);
		 dao.InsertEventNotice(dto);
		 }
		 else					// 공지가 아니라면
		 {
			 dao.eventUpdate(dto);
		 }
	 }
	  return view; 	  
	  }
	 
	 
	 @RequestMapping(value = "/newsupdateform.action",method={RequestMethod.GET, RequestMethod.POST}) 
	  public String newsUpdateForm(int boardNum,HttpSession session,BoardDTO dto,Model model) 
	 {
	  String view = "/WEB-INF/views/NewsUpdateForm.jsp";
	  
	  session.getAttribute("member");
		
	  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	  
	  
	  List<BoardDTO> newsUpdate =dao.newsSelect(boardNum);
	  
     model.addAttribute("newsUpdate",newsUpdate);
	  
	  return view; 	  
	  }
	 
	 
	 @RequestMapping(value = "/newsupdate.action",method={RequestMethod.GET, RequestMethod.POST}) 
	  public String newsUpdate(HttpSession session,BoardDTO dto) 
	 {
	  String view = "news.action";
		session.getAttribute("member");
	  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	  
	  int boardNum = dto.getBoardNum();
	  
	  
	 int result = dao.NewsNoticeCheck(boardNum);
	 int check = dto.getCheck();
	 
	 dto.setNewsNoticeCheck(result);

	 
	 if(dto.getNewsNoticeCheck()!=0) // 원래 공지로 되어있다면
	 {
		 if(check!=0)			// 또 공지로 등록이면
		 {
		 dao.newsUpdate(dto);
		 }
		 
		 else					// 공지를 해제한다면
		 {
		 dao.newsUpdate(dto);
		 dao.NewsNoticeDelete(dto);
		 }
	 }
	 else						// 공지가 아니었다면
	 {
		 if(check!=0)			// 새롭게 공지등록이면
		 {
		 dao.newsUpdate(dto);
		 dao.InsertNewsNotice(dto);
		 }
		 else					// 공지가 아니라면
		 {
			 dao.newsUpdate(dto);
		 }
	 }
	  return view; 	  
	  }
	  @RequestMapping(value = "/newsdelete.action", method={RequestMethod.GET, RequestMethod.POST})
	  public String newsDelete(int boardNum, HttpSession session) 
	  {
		  String view = "news.action";
	  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	  session.getAttribute("member");
	  
	  dao.newsDelete(boardNum);
	  
	 return view;
	 
	  }
	  
	  @RequestMapping(value = "/eventdelete.action", method={RequestMethod.GET, RequestMethod.POST})
	  public String eventDelete(int boardNum, HttpSession session) 
	  {
		  String view = "event.action";
	  IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	  session.getAttribute("member");
	  
	   dao.eventDelete(boardNum);
	  
	 return view;
	 
	  }
	
	

}

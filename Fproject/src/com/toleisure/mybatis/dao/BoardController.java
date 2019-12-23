package com.toleisure.mybatis.dao;

import java.util.List;

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
	public String center(Model model)
	{
		String view = "/WEB-INF/views/center.jsp";
		
		
		
		return view;
	}
	
	
	@RequestMapping(value="/news.action", method=RequestMethod.GET)
	public String newsList(Model model)
	{
		String view = "/WEB-INF/views/news.jsp";
		
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		
		model.addAttribute("news", dao.news());		
		
		return view;
	}
	
	/*
	 * @RequestMapping(value="/event.action", method = RequestMethod.GET) public
	 * String eventList(Model model) { String view = "/WEB-INF/views/event.jsp";
	 * 
	 * IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	 * 
	 * model.addAttribute("event", dao.event(start,end));
	 * 
	 * return view;
	 * 
	 * }
	 */
	
	@RequestMapping(value="/faq.action", method = RequestMethod.GET)
	public String faqList(Model model)
	{
		String view = "/WEB-INF/views/faq.jsp";
		
		IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
		
		model.addAttribute("faq", dao.faq());
		model.addAttribute(dao.getfaqMaxNum());
		
		return view;
	}
	
	/*
	 * @RequestMapping(value = "/noticelist.action",method = RequestMethod.GET)
	 * public String noticeList(@ModelAttribute("Notice") NoticeVo notice,
	 * 
	 * @RequestParam(defaultValue="1") int curPage, Model model ) {
	 * 
	 * String view = "/WEB-INF/views/noticeList.jsp";
	 * 
	 * IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	 * 
	 * int listCnt = dao.eventListCount(); PagingDTO paging = new PagingDTO(listCnt,
	 * curPage);
	 * 
	 * notice.setStartIndex(paging.getStartIndex());
	 * notice.setCntPerPage(paging.getPageSize());
	 * 
	 * List<NoticeVo> noticeList=dao.eventList(notice);
	 * 
	 * model.addAttribute("noticeList", noticeList); model.addAttribute("listCnt",
	 * listCnt); model.addAttribute("paging", paging); return view; }
	 */
	 
	 @RequestMapping(value = "/eventlist.action")
	    public String noticeList(@ModelAttribute("Notice") BoardDTO event,
	                            @RequestParam(defaultValue="1") int curPage,
	                            Model model
	                                ) {
		 String view = "/WEB-INF/views/event.jsp";
		 
		 IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	        int listCnt = dao.eventListCount();
	        PagingDTO paging = new PagingDTO(listCnt, curPage);
	        event.setStartIndex(paging.getStartIndex());
	        event.setCntPerPage(paging.getPageSize());
	             
	        List<BoardDTO> eventList=dao.eventList(event);
	        
	        model.addAttribute("eventList",eventList);
	        model.addAttribute("listCnt", listCnt);
	        model.addAttribute("paging", paging);
	        return view;
	    }
	/*
	 * @RequestMapping(value = "/noticeRegi") public String noticeRegi() { return
	 * "notice/noticeDetail"; }
	 * 
	 * @RequestMapping(value = "/noticeDetail/{notice_id}") public String
	 * noticeEdit(@PathVariable String notice_id, Model model) { String view =
	 * "/WEB-INF/views/noticeList.jsp"; IBoardDAO dao =
	 * sqlsession.getMapper(IBoardDAO.class);
	 * 
	 * model.addAttribute("notice",dao.getNoticeOne(notice_id));
	 * 
	 * return "notice/noticeDetail"; }
	 * 
	 * @RequestMapping(value = "/noticeinsert.action", method=RequestMethod.POST)
	 * public int noticeInsert(NoticeVo notice) {
	 * 
	 * IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	 * 
	 * return dao.NoticeInsert(notice); }
	 * 
	 * 
	 * @RequestMapping(value = "/noticeupdate.action", method=RequestMethod.POST)
	 * public int noticeUpdate(NoticeVo notice) {
	 * 
	 * IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	 * 
	 * return dao.NoticeUpdate(notice); }
	 * 
	 * @RequestMapping(value = "/noticedelete.action", method=RequestMethod.POST)
	 * public int noticeDelete(NoticeVo notice) {
	 * 
	 * IBoardDAO dao = sqlsession.getMapper(IBoardDAO.class);
	 * 
	 * return dao.NoticeDelete(notice.getNotice_id()); }
	 */
	

}

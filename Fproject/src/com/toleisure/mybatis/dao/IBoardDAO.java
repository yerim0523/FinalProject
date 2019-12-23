package com.toleisure.mybatis.dao;

import java.util.ArrayList;
import java.util.List;

import com.toleisure.mybatis.dto.BoardDTO;
import com.toleisure.mybatis.dto.NoticeVo;

public interface IBoardDAO
{
	public ArrayList<BoardDTO> news();
	
	 public int eventListCount();
	
	public ArrayList<BoardDTO> faq();
	
	public int getfaqMaxNum();
	
	public int geteventMaxNum();
	
	public int geteventDataCount();
	
	public BoardDTO getfaqReadData(int faqNum);
	
	public BoardDTO geteventReadData(int eventNum);
	
	
	 
	 public NoticeVo getNoticeOne(String notice_id);
	 public int NoticeInsert(NoticeVo notice);
	 public int NoticeUpdate(NoticeVo notice);
	 public int NoticeDelete(String notice_id);

	public List<BoardDTO> eventList(BoardDTO event);
	
	
}

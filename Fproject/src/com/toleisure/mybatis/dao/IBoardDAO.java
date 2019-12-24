package com.toleisure.mybatis.dao;

import java.util.ArrayList;
import java.util.List;

import com.toleisure.mybatis.dto.BoardDTO;
import com.toleisure.mybatis.dto.NoticeVo;

public interface IBoardDAO
{
	 
	 
	 public List<BoardDTO> eventSelect(String boardNum);
	 public List<BoardDTO> newsSelect(String boardNum);
	 public List<BoardDTO> faqSelect(String boardNum);

	public List<BoardDTO> eventList(BoardDTO event);
	
	public List<BoardDTO> faqList(BoardDTO faq);
	
	public List<BoardDTO> newsList(BoardDTO news);
	
	 public int eventListCount();
	 
	 public int faqListCount();
	 
	 public int newsListCount();
	
	
	/*
	public int getfaqMaxNum();
	
	public int geteventMaxNum();
	
	public int geteventDataCount();
	
	public BoardDTO getfaqReadData(int faqNum);
	
	public BoardDTO geteventReadData(int eventNum);*/
	
	
	 
	
	 
	 public int NoticeInsert(NoticeVo notice);
	 public int NoticeUpdate(NoticeVo notice);
	 public int NoticeDelete(String notice_id);

	
	
	
}

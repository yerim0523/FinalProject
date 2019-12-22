package com.toleisure.mybatis.dto;

public class BoardDTO
{
	private int newsNum, adminCode, newsHits;
	private String newsTitle, newsCont, newsDate, memName;
	
	private int eventNum, eventHits;
	private String eventTitle, eventCont, eventDate;
	
	private int faqNum;
	private String faqTitle, faqCont, faqDate;
	
	// getter / setter (소식 게시판)
	public int getNewsNum()
	{
		return newsNum;
	}
	public void setNewsNum(int newsNum)
	{
		this.newsNum = newsNum;
	}
	public int getAdminCode()
	{
		return adminCode;
	}
	public void setAdminCode(int adminCode)
	{
		this.adminCode = adminCode;
	}
	public int getNewsHits()
	{
		return newsHits;
	}
	public void setNewsHits(int newsHits)
	{
		this.newsHits = newsHits;
	}
	public String getNewsTitle()
	{
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle)
	{
		this.newsTitle = newsTitle;
	}
	public String getNewsCont()
	{
		return newsCont;
	}
	public void setNewsCont(String newsCont)
	{
		this.newsCont = newsCont;
	}
	public String getNewsDate()
	{
		return newsDate;
	}
	public void setNewsDate(String newsDate)
	{
		this.newsDate = newsDate;
	}
	public String getMemName()
	{
		return memName;
	}
	public void setMemName(String memName)
	{
		this.memName = memName;
	}
	
	// getter / setter (이벤트 게시판 추가)
	public int getEventNum()
	{
		return eventNum;
	}
	public void setEventNum(int eventNum)
	{
		this.eventNum = eventNum;
	}
	public int getEventHits()
	{
		return eventHits;
	}
	public void setEventHits(int eventHits)
	{
		this.eventHits = eventHits;
	}
	public String getEventTitle()
	{
		return eventTitle;
	}
	public void setEventTitle(String eventTitle)
	{
		this.eventTitle = eventTitle;
	}
	public String getEventCont()
	{
		return eventCont;
	}
	public void setEventCont(String eventCont)
	{
		this.eventCont = eventCont;
	}
	public String getEventDate()
	{
		return eventDate;
	}
	public void setEventDate(String eventDate)
	{
		this.eventDate = eventDate;
	}
	
	
	// getter / setter (FAQ 게시판 추가)
	
	public int getFaqNum()
	{
		return faqNum;
	}
	public void setFaqNum(int faqNum)
	{
		this.faqNum = faqNum;
	}
	public String getFaqTitle()
	{
		return faqTitle;
	}
	public void setFaqTitle(String faqTitle)
	{
		this.faqTitle = faqTitle;
	}
	public String getFaqCont()
	{
		return faqCont;
	}
	public void setFaqCont(String faqCont)
	{
		this.faqCont = faqCont;
	}
	public String getFaqDate()
	{
		return faqDate;
	}
	public void setFaqDate(String faqDate)
	{
		this.faqDate = faqDate;
	}
	
	
	
}

package com.toleisure.mybatis.dto;

public class BoardDTO
{
	private int adminCode, newsHits, rNum, check;

	private int eventNoticeCheck=0;
	private int newsNoticeCheck=0;
	private int mainboardNoticeCheck=0;
	
	private String newsNum, newsTitle, newsCont, newsMem, newsDate, memPwd;

	private int faqCate, checkCode;


	
	
	private String answerCont,faqNum, faqName,faqTitle, faqCont, faqDate, faqMem , faqId,memId;

	

	

	private int endIndex;
	private int startIndex;
	private int cntPerPage;

	private int eventHits;


	private String eventNum, eventTitle, eventCont, eventMem, eventDate;

	private int boardHits, boardNum,boardNotice;
	

	private String boardTitle, boardCont, boardMem, boardDate;
	
	
	
	
	private String comNum, comTitle, comTont, comDate;
	private int comHits;

	
	public String getComNum()
	{
		return comNum;
	}

	public void setComNum(String comNum)
	{
		this.comNum = comNum;
	}

	public String getComTitle()
	{
		return comTitle;
	}

	public void setComTitle(String comTitle)
	{
		this.comTitle = comTitle;
	}

	public String getComTont()
	{
		return comTont;
	}

	public void setComTont(String comTont)
	{
		this.comTont = comTont;
	}

	public String getComDate()
	{
		return comDate;
	}

	public void setComDate(String comDate)
	{
		this.comDate = comDate;
	}

	public int getComHits()
	{
		return comHits;
	}

	public void setComHits(int comHits)
	{
		this.comHits = comHits;
	}
	
	public int getEventNoticeCheck()
	{
		return eventNoticeCheck;
	}

	public void setEventNoticeCheck(int eventNoticeCheck)
	{
		this.eventNoticeCheck = eventNoticeCheck;
	}
	
	public int getBoardHits()
	{
		return boardHits;
	}

	public void setBoardHits(int boardHits)
	{
		this.boardHits = boardHits;
	}

	public int getBoardNum()
	{
		return boardNum;
	}

	public void setBoardNum(int boardNum)
	{
		this.boardNum = boardNum;
	}

	public String getBoardTitle()
	{
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle)
	{
		this.boardTitle = boardTitle;
	}

	public String getBoardCont()
	{
		return boardCont;
	}

	public void setBoardCont(String boardCont)
	{
		this.boardCont = boardCont;
	}

	public String getBoardMem()
	{
		return boardMem;
	}

	public void setBoardMem(String boardMem)
	{
		this.boardMem = boardMem;
	}

	public String getBoardDate()
	{
		return boardDate;
	}

	public void setBoardDate(String boardDate)
	{
		this.boardDate = boardDate;
	}

	public String getNewsNum()
	{
		return newsNum;
	}

	public void setNewsNum(String newsNum)
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

	public String getNewsMem()
	{
		return newsMem;
	}

	public void setNewsMem(String newsMem)
	{
		this.newsMem = newsMem;
	}

	public String getMemPwd()
	{
		return memPwd;
	}

	public void setMemPwd(String memPwd)
	{
		this.memPwd = memPwd;
	}

	public int getEventHits()
	{
		return eventHits;
	}

	public void setEventHits(int eventHits)
	{
		this.eventHits = eventHits;
	}

	public String getEventNum()
	{
		return eventNum;
	}

	public void setEventNum(String eventNum)
	{
		this.eventNum = eventNum;
	}

	public String getEventMem()
	{
		return eventMem;
	}

	public void setEventMem(String eventMem)
	{
		this.eventMem = eventMem;
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

	public String getFaqNum()
	{
		return faqNum;
	}

	public void setFaqNum(String faqNum)
	{
		this.faqNum = faqNum;
	}

	public String getFaqMem()
	{
		return faqMem;
	}

	public void setFaqMem(String faqMem)
	{
		this.faqMem = faqMem;
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

	public int getStartIndex()
	{
		return startIndex;
	}

	public void setStartIndex(int startIndex)
	{
		this.startIndex = startIndex;
	}

	public int getCntPerPage()
	{
		return cntPerPage;
	}

	public void setCntPerPage(int cntPerPage)
	{
		this.cntPerPage = cntPerPage;
	}

	public void setEndIndex(int endIndex)
	{
		this.endIndex = endIndex;

	}

	public int getEndIndex()
	{
		return endIndex;
	}

	public int getrNum()
	{
		return rNum;
	}

	public void setrNum(int rNum)
	{
		this.rNum = rNum;
	}

	public int getCheck()
	{
		return check;
	}

	public void setCheck(int check)
	{
		this.check = check;
	}

	public int getNewsNoticeCheck()
	{
		return newsNoticeCheck;
	}

	public void setNewsNoticeCheck(int newsNoticeCheck)
	{
		this.newsNoticeCheck = newsNoticeCheck;
	}

	public int getFaqCate()
	{
		return faqCate;
	}

	public void setFaqCate(int faqCate)
	{
		this.faqCate = faqCate;
	}
	
	public String getFaqName()
	{
		return faqName;
	}

	public void setFaqName(String faqName)
	{
		this.faqName = faqName;
	}
	
	public int getBoardNotice()
	{
		return boardNotice;
	}

	public void setBoardNotice(int boardNotice)
	{
		this.boardNotice = boardNotice;
	}
	
	public String getFaqId()
	{
		return faqId;
	}

	public void setFaqId(String faqId)
	{
		this.faqId = faqId;
	}

	public String getMemId()
	{
		return memId;
	}

	public void setMemId(String memId)
	{
		this.memId = memId;
	}
	
	public int getCheckCode()
	{
		return checkCode;
	}

	public void setCheckCode(int checkCode)
	{
		this.checkCode = checkCode;
	}
	
	public String getAnswerCont()
	{
		return answerCont;
	}

	public void setAnswerCont(String answerCont)
	{
		this.answerCont = answerCont;
	}

	public int getMainboardNoticeCheck()
	{
		return mainboardNoticeCheck;
	}

	public void setMainboardNoticeCheck(int mainboardNoticeCheck)
	{
		this.mainboardNoticeCheck = mainboardNoticeCheck;
	}
	


}
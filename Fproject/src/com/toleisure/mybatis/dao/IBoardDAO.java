package com.toleisure.mybatis.dao;

import java.util.ArrayList;
import java.util.List;

import com.toleisure.mybatis.dto.BoardDTO;
import com.toleisure.mybatis.dto.NoticeVo;

public interface IBoardDAO
{
	 public List<BoardDTO> eventList(BoardDTO event);	// 게시글 리스트 불러오기
	 public List<BoardDTO> eventSelect(int boardNum);   // 상세목록 불러오기
	 public int eventListCount();						// 게시판 데이터 개수 반환 
	 public int updateEventHitCount(int boardNum);	    // 조회수 갱신
	 public int eventInsert(BoardDTO board);			// 게시글 추가
	 public int eventUpdate(BoardDTO board);			// 게시글 수정
	 public int eventDelete(int boardNum);				// 게시글 삭제
	 public int EventNoticeCheck(int boardNum);			// 공지여부 체크
	 public void InsertEventNotice(BoardDTO dto);		// 공지로 등록
	 public void EventNoticeDelete(BoardDTO dto);		// 공지 제거
	 
	 public List<BoardDTO> newsList(BoardDTO news);
	 public List<BoardDTO> newsSelect(int boardNum);
	 public int newsListCount();
	 public int updateNewsHitCount(int boardNum);
	 public int newsInsert(BoardDTO board);
	 public int newsUpdate(BoardDTO board);
	 public int newsDelete(int boardNum);
	 public int NewsNoticeCheck(int boardNum);
	 public void InsertNewsNotice(BoardDTO dto);
	 public void NewsNoticeDelete(BoardDTO dto);
	 	 
	 public List<BoardDTO> faqList(BoardDTO faq);
	 public List<BoardDTO> faqSelect(int boardNum);
	 public List<BoardDTO> faqUpdateForm(int boardNum);
	 public int faqListCount();
	 public int faqInsert(BoardDTO board);
	 public int faqDelete(int boardNum);
	 public void faqUpdate(BoardDTO dto);
	public List<BoardDTO> faqEtcList(BoardDTO faq);
	public List<BoardDTO> faqPayList(BoardDTO faq);
	public List<BoardDTO> faqUseList(BoardDTO faq);
	public List<BoardDTO> faqUserList(BoardDTO faq);
	
	
	public List<BoardDTO> announceList(BoardDTO announce);
	public List<BoardDTO> qnaList(BoardDTO dto);
	public int qnaListCount(String id);
	public void qnaInsert(BoardDTO dto);
	
	public int answerListCount();
	public List<BoardDTO> answerList(BoardDTO answer);
	public List<BoardDTO> answerDetail(int boardNum);
	public void answerInsert(BoardDTO dto);
	public List<BoardDTO> answerUpdateForm(int boardNum);
	public void answerUpdate(BoardDTO dto);
	
	public int mainboardListCont();
	public List<BoardDTO> mainboardList(BoardDTO mainboard);
	public List<BoardDTO> mainboardSelect(int boardNum);
	public int updateMainBoardHitCount(int boardNum);
	/* public int mainboardInsert(BoardDTO board); */
	
	
}

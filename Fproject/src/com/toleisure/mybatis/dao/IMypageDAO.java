/*==================
  IMypageDAO.java
===================*/


package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import com.toleisure.mybatis.dto.GroupDTO;
import com.toleisure.mybatis.dto.MemberDTO;
import com.toleisure.mybatis.dto.PayDTO;

public interface IMypageDAO
{
	public MemberDTO myInfo(String memId);						// 세션아이디를 통해 myPage 에 정보를 띄워주기 위한 메소드
	public int infoUpdate(MemberDTO m);							// 개인정보 수정시 수행되는 메소드
	public int updatePw(MemberDTO dto);							// 패스워드 변경 메소드
	public String pwCheck(MemberDTO dto);						// 패스워드 확인 메소드
	public int changeMyPw(MemberDTO dto);						// 마이페이지 패스워드 변경 메소드
	public ArrayList<GroupDTO> myCalendar(String memId); 		// 내가 가지고 있는 일정을 모두 가져오는 메소드
	
	//public ArrayList<PayDTO> payList(String memId);				// 본인의 결제, 환불내역을 모두 가져오는 method
	public ArrayList<GroupDTO> myNextCalendar(MemberDTO mine);
	
	public ArrayList<GroupDTO> hostMeetFind(String memId);		// 현재 호스트가 관리중인 모임의 grCode 가져오는 메소드
	public GroupDTO genderChart(int grCode);					// 호스트가 관리중인 grCode 의 성별 별 인원 수 가져오는 메소드
	public ArrayList<GroupDTO> ageChart(GroupDTO dto);			// 호스트가 관리중인 grCode 의 나이 별 인원 수 가져오는 메소드
	public ArrayList<PayDTO> payList(String memId);				// 마이페이지 결제 내역 
	public GroupDTO genderChart(int grCode);
}
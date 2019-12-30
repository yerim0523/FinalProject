package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import com.toleisure.mybatis.dto.GroupDTO;

public interface IGroupDAO
{
	// 모임 정보 INSERT 메소드 구현
	public int newGroup(GroupDTO g);	// 신규 개설
	public int addGroup(GroupDTO g);	// 기존 개설
	
	// 호스트ID 에 따른 모임 정보 모두 출력 (모임개설 시 리스트 표시)
	public ArrayList<GroupDTO> grSearch(String hostId);
	
	// grCode 에 따른 모임의 가장 최근 정보 가져오기
	public GroupDTO groupFormInfo(int grCode);
	
	// 메이트 ID 에 따른 찜 모임 리스트 출력 (마이페이지 - 찜 목록)
	public ArrayList<GroupDTO> jjimGroup(String memId);
	
	// 메이트 ID 에 따른 찜 호스트 리스트 출력 (마이페이지 - 찜 목록)
	public ArrayList<GroupDTO> jjimHost(String memId);
	
	// 메이트 ID 에 따른 현재 참여중인 모임 리스트 출력 (마이페이지 - 참여모임) 
	public ArrayList<GroupDTO> myNowGroup(String memId);
	
	// 메이트 ID 에 따른 현재 종료된 모임/탈퇴당한 모임 리스트 출력 (마이페이지 - 종료모임)
	public ArrayList<GroupDTO> myEndGroup(String memId);
	
	// 피드백 참여했는지 여부 확인 (마이페이지 - 참여모임 - 피드백)
	public String feedCheck(GroupDTO dto);
	
	// 모임 정보 DELETE 메소드 구현 (관리자만 가능)
	public int removeGroup(int grCode);
	
	// 모임명으로 검색 
	public ArrayList<GroupDTO> searchGroup(String gName);
	
	// 호스트명으로 검색
	public ArrayList<GroupDTO> searchHost(String hName);
	
	// 분위기명으로 검색
	public ArrayList<GroupDTO> searchMood(String mName);

	// 결제 금액 조회
	public int cost(int ngCode);
	
	// 카드결제 INSERT
	public int cardPay(GroupDTO dto);
	
	// 핸드폰결제 INSERT
	public int phonePay(GroupDTO dto);
	
	
}
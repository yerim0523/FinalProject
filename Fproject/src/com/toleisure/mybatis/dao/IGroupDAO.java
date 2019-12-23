package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import com.toleisure.mybatis.dto.GroupDTO;

public interface IGroupDAO
{
	// 모임 정보 INSERT 메소드 구현
	public int addGroup(GroupDTO g);
	
	// 호스트ID 에 따른 모임 정보 모두 출력 (모임개설 시 리스트 표시)
	public ArrayList<GroupDTO> grSearch(String hostId);
	
	// grCode 에 따른 모임의 가장 최근 정보 가져오기
	public GroupDTO groupList(int grCode);
	
	// 모임 정보 DELETE 메소드 구현 (관리자만 가능)
	public int removeGroup(int grCode);
	
	// 모임명으로 검색 
	public ArrayList<GroupDTO> searchGroup(String gName);
	
	// 호스트명으로 검색
	public ArrayList<GroupDTO> searchHost(String hName);
	
	// 분위기명으로 검색
	public ArrayList<GroupDTO> searchMood(String mName);
	
}
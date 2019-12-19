package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import com.toleisure.mybatis.dto.GroupingDTO;

public interface IGroupDAO
{
	// 모임 정보 INSERT 메소드 구현
	public int addGroup(GroupingDTO g);
	
	// 호스트ID 에 따른 모임 정보 모두 출력 (모임개설 시 리스트 표시)
	public ArrayList<GroupingDTO> grSearch(String memId);
	
	// grCode 에 따른 모임의 가장 최근 정보 가져오기
	public GroupingDTO groupList(int grCode);
	
	// 모임 정보 DELETE 메소드 구현 (관리자만 가능)
	public int removeGroup(int grCode);
	
	// 
}
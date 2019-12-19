package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import com.toleisure.mybatis.dto.GroupDTO;

public interface IGroupDAO
{
	// 모임 정보 INSERT 메소드 구현
	public int add(GroupDTO g);
	
	// 호스트ID 정보에 따른 grCode 모두 검색
	public int[] grCodeSearch(String memId);
	
	// grCode 에 따른 모임 정보 출력
	public ArrayList<GroupDTO> groupList(int grCode);
	
}
package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import com.toleisure.mybatis.dto.GroupDTO;

public interface IMainDAO
{
	// ----------------메인화면 출력 리스트들 
	public ArrayList<GroupDTO> HotGroupList();
	 public ArrayList<GroupDTO> NewGroupList(); 
	 public ArrayList<GroupDTO> HotHostList(); 
	 public ArrayList<GroupDTO> ClosingGroupList(); 
	 public ArrayList<GroupDTO> RecommendGroupList(String memId);
	// ----------------메인화면 출력 리스트들 
	 
	 
	 //-- 전체 그룹 출력 리스트----------------
	 public ArrayList<GroupDTO> AllGroupList();
	
}

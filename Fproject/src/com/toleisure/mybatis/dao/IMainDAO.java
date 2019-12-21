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
	 
	 
	 //-- 문화 출력 리스트----------------
	 public ArrayList<GroupDTO> CultureGroupList();
	 public ArrayList<GroupDTO> ExhibitGroupList();
	 public ArrayList<GroupDTO> PlayGroupList();
	 public ArrayList<GroupDTO> ShowGroupList();
	 
	 //-- 맛집 출력 리스트----------------
	 public ArrayList<GroupDTO> FoodGroupList();
	 public ArrayList<GroupDTO> RestaurantGroupList();
	 public ArrayList<GroupDTO> CafeGroupList();
	 
	 //-- 테마별 출력 리스트 ---------------------
     public ArrayList<GroupDTO> HotGroupListAll();
	 public ArrayList<GroupDTO> NewGroupListAll();
	 public ArrayList<GroupDTO> HotHostListAll();
	 public ArrayList<GroupDTO> ClosingGroupListAll();
	 public ArrayList<GroupDTO> RecommendGroupListAll(String memId);
	
}

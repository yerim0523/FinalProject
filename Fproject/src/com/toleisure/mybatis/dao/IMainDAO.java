package com.toleisure.mybatis.dao;

import java.util.ArrayList;
import java.util.List;

import com.toleisure.mybatis.dto.GroupDTO;

public interface IMainDAO
{
	// ----------------메인화면 출력 리스트들 
	public ArrayList<GroupDTO> HotGroupList();
	public ArrayList<GroupDTO> testList(String string);
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
	public ArrayList<GroupDTO> AvgStar(int starCode);
	 
	//-- 모임 상세 페이지 내용
	public ArrayList<GroupDTO> groupContent(int ngCode);
	public List<GroupDTO> groupContent(GroupDTO dto);
	public ArrayList<GroupDTO> ContentReview(int ngCode);
	public ArrayList<GroupDTO> ContentGBoard(int ngCode);
	public ArrayList<GroupDTO> ContentMember(int ngCode);
	
	 
	//-- 찜 여부 확인
	public String meetFavCheck(GroupDTO dto);
	public String hostFavCheck(GroupDTO dto);
	
	//-- 찜 목록 확인
	public String meetFavList(String memId); 
	
	//-- 찜 모임 추가
	public void meetFavInsert(GroupDTO dto);
	
	//-- 검색 기능
	public ArrayList<GroupDTO> search(String searchval);
}

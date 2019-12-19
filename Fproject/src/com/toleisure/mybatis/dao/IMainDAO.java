package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import com.toleisure.mybatis.dto.GroupDTO;

public interface IMainDAO
{
	public ArrayList<GroupDTO> HotGroupList();
	
	
	 public ArrayList<GroupDTO> NewGroupList(); 
	 public ArrayList<GroupDTO> HotHostList(); 
	 public ArrayList<GroupDTO> ClosingGroupList(); 
	 public ArrayList<GroupDTO> RecommendGroupList();
	
	
}

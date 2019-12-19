package com.toleisure.mybatis.dto;

public class MainHotGroupDTO
{
	private String groupName,hostName;
	private int maxnum,like;
	public String getGroupName()
	{
		return groupName;
	}
	public void setGroupName(String groupName)
	{
		this.groupName = groupName;
	}
	public String getHostName()
	{
		return hostName;
	}
	public void setHostName(String hostName)
	{
		this.hostName = hostName;
	}
	public int getMaxnum()
	{
		return maxnum;
	}
	public void setMaxnum(int maxnum)
	{
		this.maxnum = maxnum;
	}
	public int getLike()
	{
		return like;
	}
	public void setLike(int like)
	{
		this.like = like;
	}
}

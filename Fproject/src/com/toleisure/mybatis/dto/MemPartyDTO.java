/*======================================================
   MemPartyDTO.java
   - 특정 모임에 참여중인 메이트에 대한 정보를 가진 DTO
=======================================================*/


package com.toleisure.mybatis.dto;

public class MemPartyDTO
{
	private String memId, memName, memPic;		// 참여중인 메이트 목록을 가져올 때 사용
	private int memCount;						// 현재 신청한 인원수 가져올 때 사용
	
	
	public String getMemId()
	{
		return memId;
	}
	public void setMemId(String memId)
	{
		this.memId = memId;
	}
	public String getMemName()
	{
		return memName;
	}
	public void setMemName(String memName)
	{
		this.memName = memName;
	}
	public String getMemPic()
	{
		return memPic;
	}
	public void setMemPic(String memPic)
	{
		this.memPic = memPic;
	}
	public int getMemCount()
	{
		return memCount;
	}
	public void setMemCount(int memCount)
	{
		this.memCount = memCount;
	}
	
	
}

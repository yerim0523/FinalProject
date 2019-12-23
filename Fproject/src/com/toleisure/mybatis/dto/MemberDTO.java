package com.toleisure.mybatis.dto;


public class MemberDTO
{
	private String memId, memPw, memName, memTel;

	public String getMemPw()
	{
		return memPw;
	}

	public void setMemPw(String memPw)
	{
		this.memPw = memPw;
	}

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

	public String getMemTel()
	{
		return memTel;
	}

	public void setMemTel(String memTel)
	{
		this.memTel = memTel;
	}
	
	
}

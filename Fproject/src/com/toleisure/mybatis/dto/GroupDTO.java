package com.toleisure.mybatis.dto;

public class GroupDTO
{
	private String memId, grName, grPre, grNotice;
	private int grCode, cateCode1, cateCode2;
	
	// setter / getter 구성
	public String getMemId()
	{
		return memId;
	}
	public void setMemId(String memId)
	{
		this.memId = memId;
	}
	public String getGrName()
	{
		return grName;
	}
	public void setGrName(String grName)
	{
		this.grName = grName;
	}
	public String getGrPre()
	{
		return grPre;
	}
	public void setGrPre(String grPre)
	{
		this.grPre = grPre;
	}
	public String getGrNotice()
	{
		return grNotice;
	}
	public void setGrNotice(String grNotice)
	{
		this.grNotice = grNotice;
	}
	public int getGrCode()
	{
		return grCode;
	}
	public void setGrCode(int grCode)
	{
		this.grCode = grCode;
	}
	public int getCateCode1()
	{
		return cateCode1;
	}
	public void setCateCode1(int cateCode1)
	{
		this.cateCode1 = cateCode1;
	}
	public int getCateCode2()
	{
		return cateCode2;
	}
	public void setCateCode2(int cateCode2)
	{
		this.cateCode2 = cateCode2;
	}
	
	
}

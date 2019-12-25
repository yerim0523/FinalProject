package com.toleisure.mybatis.dto;


public class MemberDTO
{
	private String memId, memPw, memName, memTel, memPic, newPw;
	private String memGen, memComp, memIntro, memDate;
	private int memGender, memCate1, memCate2;

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

	public String getMemPic()
	{
		return memPic;
	}

	public void setMemPic(String memPic)
	{
		this.memPic = memPic;
	}

	public String getMemIntro()
	{
		return memIntro;
	}

	public void setMemIntro(String memIntro)
	{
		this.memIntro = memIntro;
	}

	public int getMemGender()
	{
		return memGender;
	}

	public void setMemGender(int memGender)
	{
		this.memGender = memGender;
	}

	public int getMemCate1()
	{
		return memCate1;
	}

	public void setMemCate1(int memCate1)
	{
		this.memCate1 = memCate1;
	}

	public int getMemCate2()
	{
		return memCate2;
	}

	public void setMemCate2(int memCate2)
	{
		this.memCate2 = memCate2;
	}

	public String getMemGen()
	{
		return memGen;
	}

	public void setMemGen(String memGen)
	{
		this.memGen = memGen;
	}

	public String getMemComp()
	{
		return memComp;
	}

	public void setMemComp(String memComp)
	{
		this.memComp = memComp;
	}

	public String getMemDate()
	{
		return memDate;
	}

	public void setMemDate(String memDate)
	{
		this.memDate = memDate;
	}
	
	public String getNewPw()
	{
		return newPw;
	}

	public void setNewPw(String newPw)
	{
		this.newPw = newPw;
	}
	
}

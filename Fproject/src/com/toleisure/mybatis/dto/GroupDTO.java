package com.toleisure.mybatis.dto;

public class GroupDTO
{

	private String memId, grName, grPre, grNotice , grCate1Name, grCate2Name;
	

	private int grCode, grCate1, grCate2;

	private int ngCode, ngMax, ngMin, ngCost;
	private String ngPic, ngStart, ngEnd, ngLocation, ngIntro, nyMyIntro;

	private String ngStart1, ngStart2, ngEnd1, ngEnd2;

	private int grCount, grStarCount;
	private double grStarAvg;

	// setter / getter 구성 (TBL_GROUP 테이블)
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

	public int getGrCate1()
	{
		return grCate1;
	}

	public void setGrCate1(int grCate1)
	{
		this.grCate1 = grCate1;
	}

	public int getGrCate2()
	{
		return grCate2;
	}

	public void setGrCate2(int grCate2)
	{
		this.grCate2 = grCate2;
	}

	public String getGrCate1Name()
	{
		return grCate1Name;
	}

	public void setGrCate1Name(String grCate1Name)
	{
		this.grCate1Name = grCate1Name;
	}

	public String getGrCate2Name()
	{
		return grCate2Name;
	}

	public void setGrCate2Name(String grCate2Name)
	{
		this.grCate2Name = grCate2Name;
	}


	// setter / getter 구성 (NOW_GROUP 테이블)
	public int getNgCode()
	{
		return ngCode;
	}

	public void setNgCode(int ngCode)
	{
		this.ngCode = ngCode;
	}

	public int getNgMax()
	{
		return ngMax;
	}

	public void setNgMax(int ngMax)
	{
		this.ngMax = ngMax;
	}

	public int getNgMin()
	{
		return ngMin;
	}

	public void setNgMin(int ngMin)
	{
		this.ngMin = ngMin;
	}

	public int getNgCost()
	{
		return ngCost;
	}

	public void setNgCost(int ngCost)
	{
		this.ngCost = ngCost;
	}

	public String getNgPic()
	{
		return ngPic;
	}

	public void setNgPic(String ngPic)
	{
		this.ngPic = ngPic;
	}

	public String getNgStart()
	{
		return ngStart;
	}

	public void setNgStart(String ngStart)
	{
		this.ngStart = ngStart;
	}

	public String getNgEnd()
	{
		return ngEnd;
	}

	public void setNgEnd(String ngEnd)
	{
		this.ngEnd = ngEnd;
	}

	public String getNgLocation()
	{
		return ngLocation;
	}

	public void setNgLocation(String ngLocation)
	{
		this.ngLocation = ngLocation;
	}

	public String getNgIntro()
	{
		return ngIntro;
	}

	public void setNgIntro(String ngIntro)
	{
		this.ngIntro = ngIntro;
	}

	public int getGrCount()
	{
		return grCount;
	}

	public void setGrCount(int grCount)
	{
		this.grCount = grCount;
	}

	public int getGrStarCount()
	{
		return grStarCount;
	}

	public void setGrStarCount(int grStarCount)
	{
		this.grStarCount = grStarCount;
	}

	public double getGrStarAvg()
	{
		return grStarAvg;
	}

	public void setGrStarAvg(double grStarAvg)
	{
		this.grStarAvg = grStarAvg;
	}

	public String getNyMyIntro()
	{
		return nyMyIntro;
	}

	public void setNyMyIntro(String nyMyIntro)
	{
		this.nyMyIntro = nyMyIntro;
	}

	public String getNgStart1()
	{
		return ngStart1;
	}

	public void setNgStart1(String ngStart1)
	{
		this.ngStart1 = ngStart1;
	}

	public String getNgStart2()
	{
		return ngStart2;
	}

	public void setNgStart2(String ngStart2)
	{
		this.ngStart2 = ngStart2;
	}

	public String getNgEnd1()
	{
		return ngEnd1;
	}

	public void setNgEnd1(String ngEnd1)
	{
		this.ngEnd1 = ngEnd1;
	}

	public String getNgEnd2()
	{
		return ngEnd2;
	}

	public void setNgEnd2(String ngEnd2)
	{
		this.ngEnd2 = ngEnd2;
	}

}
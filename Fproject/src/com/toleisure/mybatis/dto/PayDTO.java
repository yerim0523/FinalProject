/*==================
    PayDTO.java
===================*/


package com.toleisure.mybatis.dto;

public class PayDTO
{
	private int payCode, ngCode, grCount, ngCost, rfCode, rNum;
	private String memId, grName, pmName, pmDetail, payDate, rfDate;
	
 	// getter / setter 구성
	public int getPayCode()
	{
		return payCode;
	}
	public void setPayCode(int payCode)
	{
		this.payCode = payCode;
	}
	public int getNgCode()
	{
		return ngCode;
	}
	public void setNgCode(int ngCode)
	{
		this.ngCode = ngCode;
	}
	public int getGrCount()
	{
		return grCount;
	}
	public void setGrCount(int grCount)
	{
		this.grCount = grCount;
	}
	public int getNgCost()
	{
		return ngCost;
	}
	public void setNgCost(int ngCost)
	{
		this.ngCost = ngCost;
	}
	public int getRfCode()
	{
		return rfCode;
	}
	public void setRfCode(int rfCode)
	{
		this.rfCode = rfCode;
	}
	
	// String 형
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
	public String getPmName()
	{
		return pmName;
	}
	public void setPmName(String pmName)
	{
		this.pmName = pmName;
	}
	public String getPayDate()
	{
		return payDate;
	}
	public void setPayDate(String payDate)
	{
		this.payDate = payDate;
	}
	public String getRfDate()
	{
		return rfDate;
	}
	public void setRfDate(String rfDate)
	{
		this.rfDate = rfDate;
	}
	public int getrNum()
	{
		return rNum;
	}
	public void setrNum(int rNum)
	{
		this.rNum = rNum;
	}
	public String getPmDetail()
	{
		return pmDetail;
	}
	public void setPmDetail(String pmDetail)
	{
		this.pmDetail = pmDetail;
	}
	
	
	
}

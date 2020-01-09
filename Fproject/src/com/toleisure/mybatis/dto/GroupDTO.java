package com.toleisure.mybatis.dto;

public class GroupDTO
{

	private String memId, memName, grName, grPre, grNotice, grPic, grCate1Name, grCate2Name,search;
	private String hostId, hostName, hostPic, reviewComCont, reviewComDate;
	private int men,women,unknown,grCode, grCate1, grCate2,starCode,payCode;

	private int oneCnt, twoCnt, thrCnt, fourCnt, etc;
	

	private int ngCode, ngMax, ngMin, ngCost, ngFavorite, joinCode;
	private String memPic, memIntro, ngPic, ngIntro, ngMyIntro;

	private String ngLocation, ngLocation1, ngLocation2;

	private String ngStart, ngStart1, ngStart2, ngEnd, ngEnd1, ngEnd2, ngDate;
	private String year, month, day;
	
	private String reviewCont, reviewDate;
	private double reviewStar;
	
	private String boardCont, boardDate;
	private int boardNum, reviewNum;

	private int grCount, grStarCount,jjimcheck, memCount;
	private double grStarAvg,xlocation,ylocation;
	
	

	private String grGender, grAge;
	private int genCount, ageCount;
	
	private String payDetail;

	
	// setter / getter 구성 (TBL_GROUP 테이블 - String)
	public String getMemId()
	{
		return memId;
	}

	public void setMemId(String memId)
	{
		this.memId = memId;
	}
	
	public int getPayCode() {
		return payCode;
	}

	public void setPayCode(int payCode) {
		this.payCode = payCode;
	}

	public double getXlocation() {
		return xlocation;
	}

	public void setXlocation(double xlocation) {
		this.xlocation = xlocation;
	}

	public double getYlocation() {
		return ylocation;
	}

	public void setYlocation(double ylocation) {
		this.ylocation = ylocation;
	}
	public String getGrName()
	{
		return grName; 
	}
	
	public int getJjimcheck()
	{
		return jjimcheck;
	}

	public void setJjimcheck(int jjimcheck)
	{
		this.jjimcheck = jjimcheck;
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

	// setter / getter 구성 (TBL_GROUP 테이블 - Int)
	public int getGrCode()
	{
		return grCode;
	}
	public int getMen()
	{
		return men;
	}

	public void setMen(int men)
	{
		this.men = men;
	}

	public int getWomen()
	{
		return women;
	}

	public void setWomen(int women)
	{
		this.women = women;
	}

	public int getUnknown()
	{
		return unknown;
	}

	public void setUnknown(int unknown)
	{
		this.unknown = unknown;
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


	// setter / getter 구성 (NOW_GROUP 테이블 - Int)
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
	
	public int getNgFavorite()
	{
		return ngFavorite;
	}

	public void setNgFavorite(int ngFavorite)
	{
		this.ngFavorite = ngFavorite;
	}

	// setter / getter 구성 (NOW_GROUP 테이블 - String)
	public String getNgPic()
	{
		return ngPic;
	}

	public void setNgPic(String ngPic)
	{
		this.ngPic = ngPic;
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

	// setter / getter 구성 (TBL_GROUP 테이블 - 별점, 별점인원)
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



	public String getNgMyIntro()
	{
		return ngMyIntro;
	}

	public void setNgMyIntro(String ngMyIntro)
	{
		this.ngMyIntro = ngMyIntro;
	}
	
	public String getNgStart()
	{
		return ngStart;
	}

	public void setNgStart(String ngStart)
	{
		this.ngStart = ngStart;
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
	
	public String getNgEnd()
	{
		return ngEnd;
	}

	public void setNgEnd(String ngEnd)
	{
		this.ngEnd = ngEnd;
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
	
	public String getMemIntro()
	{
		return memIntro;
	}

	public void setMemIntro(String memIntro)
	{
		this.memIntro = memIntro;
	}

	public String getNgLocation1()
	{
		return ngLocation1;
	}
	
	public String getNgLocation()
	{
		return ngLocation;
	}

	public void setNgLocation(String ngLocation)
	{
		this.ngLocation = ngLocation;
	}

	public void setNgLocation1(String ngLocation1)
	{
		this.ngLocation1 = ngLocation1;
	}

	public String getNgLocation2()
	{
		return ngLocation2;
	}

	public void setNgLocation2(String ngLocation2)
	{
		this.ngLocation2 = ngLocation2;
	}
	
	public int getStarCode()
	{
		return starCode;
	}

	public void setStarCode(int starCode)
	{
		this.starCode = starCode;
	}

	public String getNgDate()
	{
		return ngDate;
	}

	public void setNgDate(String ngDate)
	{
		this.ngDate = ngDate;
	}

	public String getGrPic()
	{
		return grPic;
	}

	public void setGrPic(String grPic)
	{
		this.grPic = grPic;
	}
	
	//------------------------------------Review
	public String getReviewCont()
	{
		return reviewCont;
	}

	public void setReviewCont(String reviewCont)
	{
		this.reviewCont = reviewCont;
	}

	public String getReviewDate()
	{
		return reviewDate;
	}

	public void setReviewDate(String reviewDate)
	{
		this.reviewDate = reviewDate;
	}

	public double getReviewStar()
	{
		return reviewStar;
	}

	public void setReviewStar(double reviewStar)
	{
		this.reviewStar = reviewStar;
	}
	
	//-----------------------------------------GUESTBOARD
	public String getBoardCont()
	{
		return boardCont;
	}
	public void setBoardCont(String boardCont)
	{
		this.boardCont = boardCont;
	}

	public String getBoardDate()
	{
		return boardDate;
	}
	public void setBoardDate(String boardDate)
	{
		this.boardDate = boardDate;
	}

	public int getBoardNum()
	{
		return boardNum;
	}
	public void setBoardNum(int boardNum)
	{
		this.boardNum = boardNum;
	}

	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}

	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}

	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	
	public String getPayDetail()
	{
		return payDetail;
	}
	public void setPayDetail(String payDetail)
	{
		this.payDetail = payDetail;
	}

	public int getJoinCode() {
		return joinCode;
	}
	public void setJoinCode(int joinCode) {
		this.joinCode = joinCode;
	}

	public String getHostName()
	{
		return hostName;
	}
	public void setHostName(String hostName)
	{
		this.hostName = hostName;
	}

	public String getHostId()
	{
		return hostId;
	}
	public void setHostId(String hostId)
	{
		this.hostId = hostId;
	}

	public String getHostPic()
	{
		return hostPic;
	}
	public void setHostPic(String hostPic)
	{
		this.hostPic = hostPic;
	}

	public String getReviewComDate()
	{
		return reviewComDate;
	}
	public void setReviewComDate(String reviewComDate)
	{
		this.reviewComDate = reviewComDate;
	}

	public String getReviewComCont()
	{
		return reviewComCont;
	}
	public void setReviewComCont(String reviewComCont)
	{
		this.reviewComCont = reviewComCont;
	}

	public String getSearch()
	{
		return search;
	}
	public void setSearch(String search)
	{
		this.search = search;
	}
	
	public int getMemCount()
	{
		return memCount;
	}
	public void setMemCount(int memCount)
	{
		this.memCount = memCount;
	}

	public String getGrGender()
	{
		return grGender;
	}

	public void setGrGender(String grGender)
	{
		this.grGender = grGender;
	}

	public String getGrAge()
	{
		return grAge;
	}

	public void setGrAge(String grAge)
	{
		this.grAge = grAge;
	}

	public int getGenCount()
	{
		return genCount;
	}

	public void setGenCount(int genCount)
	{
		this.genCount = genCount;
	}

	public int getAgeCount()
	{
		return ageCount;
	}

	public void setAgeCount(int ageCount)
	{
		this.ageCount = ageCount;
	}

	public int getReviewNum()
	{
		return reviewNum;
	}

	public void setReviewNum(int reviewNum)
	{
		this.reviewNum = reviewNum;
	}

	public int getOneCnt()
	{
		return oneCnt;
	}

	public void setOneCnt(int oneCnt)
	{
		this.oneCnt = oneCnt;
	}

	public int getTwoCnt()
	{
		return twoCnt;
	}

	public void setTwoCnt(int twoCnt)
	{
		this.twoCnt = twoCnt;
	}

	public int getThrCnt()
	{
		return thrCnt;
	}

	public void setThrCnt(int thrCnt)
	{
		this.thrCnt = thrCnt;
	}

	public int getFourCnt()
	{
		return fourCnt;
	}

	public void setFourCnt(int fourCnt)
	{
		this.fourCnt = fourCnt;
	}

	public int getEtc()
	{
		return etc;
	}

	public void setEtc(int etc)
	{
		this.etc = etc;
	}
	
	
}
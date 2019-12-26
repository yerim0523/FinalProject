package com.toleisure.mybatis.dao;

import com.toleisure.mybatis.dto.MemberDTO;

public interface IMemberDAO
{
	public int add(MemberDTO m);				// 회원가입 시 필요한 메소드
	public int infoUpdate(MemberDTO m);			// 개인정보 수정시 수행되는 메소드 --
	public String efind(MemberDTO m);			// 이메일찾기 메소드
	public String selectMem(MemberDTO dto);		// 회원 정보 있는지 탐색하는 메소드 (Y/N)
	public String searchMem(MemberDTO dto);		// 로그인 처리를 위한 메소드 (Y/N)
	public MemberDTO login(MemberDTO dto);		// 로그인 세션에 값을 담기 위한 메소드
	public String idCheck(MemberDTO dto);		// 이메일 중복 검사 메소드
	public MemberDTO myInfo(String memId);		// 세션아이디를 통해 myPage 에 정보를 띄워주기 위한 메소드 --
	public MemberDTO password(MemberDTO dto);	// 패스워드찾기 메소드 
	public String selectPmp(MemberDTO dto);		// 패스워드 관련 회원 정보 있는지 탐색하는 메소드 (Y/N)
	public int updatePw(MemberDTO dto);			// 패스워드 변경 메소드 --
	
	public String pwCheck(MemberDTO dto);		// 패스워드 확인 메소드 --
	public int changeMyPw(MemberDTO dto);		// 마이페이지 패스워드 변경 메소드 --
	
	
}

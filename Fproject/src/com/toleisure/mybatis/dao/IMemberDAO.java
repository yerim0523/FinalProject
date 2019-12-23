package com.toleisure.mybatis.dao;

import com.toleisure.mybatis.dto.MemberDTO;

public interface IMemberDAO
{
	public int add(MemberDTO m);				// 회원가입 시 필요한 메소드
	public String efind(MemberDTO m);			// 이메일찾기 메소드
	public String selectMem(MemberDTO dto);		// 회원 정보 있는지 탐색하는 메소드 ( Y/N )
	public String searchMem(MemberDTO dto);		// 로그인 처리를 위한 메소드( Y/N )
	public MemberDTO login(MemberDTO dto);		// 로그인 세션에 값을 담기 위한 메소드
	public MemberDTO myInfo(String memId);		// 세션아이디를 통해 myPage 에 정보를 띄워주기 위한 메소드
}

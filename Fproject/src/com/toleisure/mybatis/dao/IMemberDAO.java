package com.toleisure.mybatis.dao;

import java.util.ArrayList;


import com.toleisure.mybatis.dto.MemberDTO;

public interface IMemberDAO
{
	public int add(MemberDTO m);				// 회원가입 시 필요한 메소드
	
	public ArrayList<MemberDTO> list();			// 회원 리스트 출력 메소드
	
	public String efind(MemberDTO m);			// 이메일찾기 메소드

	public String selectEmp(MemberDTO dto);		// 회원 정보 있는지 탐색하는 메소드
	
	public String search(MemberDTO dto);		// 로그인 처리를 위한 메소드
}

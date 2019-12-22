package com.toleisure.mybatis.dao;

import java.util.ArrayList;


import com.toleisure.mybatis.dto.MemberDTO;

public interface IMemberDAO
{
	public int add(MemberDTO m);
	
	public ArrayList<MemberDTO> list();
	
	public String efind(MemberDTO m);

	public String selectEmp(MemberDTO dto);
}

package com.toleisure.mybatis.dao;

import org.springframework.beans.factory.annotation.Autowired;

import com.toleisure.mybatis.dto.MemberDTO;

public class MemberServiceImpl implements MemberService
{
	@Autowired
	private IMemberDAO dao;
	
	@Override
	public MemberDTO login(MemberDTO dto)
	{
		return dao.login(dto);
	}

}

package com.test.mybatis;

import java.util.ArrayList;

public interface IMemberDAO
{
	public int add(MemberDTO m);
	public ArrayList<MemberDTO> list();
}

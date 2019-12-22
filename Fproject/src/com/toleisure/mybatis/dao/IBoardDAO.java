package com.toleisure.mybatis.dao;

import java.util.ArrayList;

import com.toleisure.mybatis.dto.BoardDTO;

public interface IBoardDAO
{
	public ArrayList<BoardDTO> news();
	
	public ArrayList<BoardDTO> event();
	
	public ArrayList<BoardDTO> faq();
	
	
}

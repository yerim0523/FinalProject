package com.test.mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

public class TestDAO implements ITestDAO
{
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource)
	{
		this.dataSource = dataSource;
	}

	@Override
	public ArrayList<TestDTO> list() throws SQLException
	{
		ArrayList<TestDTO> lists = new ArrayList<TestDTO>();
		
		 Connection conn = dataSource.getConnection();
		
		String sql = "SELECT MEM_ID AS MEMID, MEM_PW AS MEMPW, MEM_NAME AS MEMNAME, MEM_TEL AS MEMTEL FROM MEMBER";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next())
		{
			TestDTO dto = new TestDTO();
			
			dto.setMemId(rs.getString("MEMID"));
			dto.setMemPw(rs.getString("MEMPW"));
			dto.setMemName(rs.getString("MEMNAME"));
			dto.setMemTel(rs.getString("MEMTEL"));
			
			lists.add(dto);
		}
		
		rs.close();
		pstmt.close();
		
		return lists;
	}
	
	
}

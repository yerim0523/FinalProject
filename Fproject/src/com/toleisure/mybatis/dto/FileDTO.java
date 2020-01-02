package com.toleisure.mybatis.dto;

public class FileDTO
{
	private String file_name,file_sysname,file_path;
	private long file_size;

	public long getFile_size()
	{
		return file_size;
	}

	public void setFile_size(int file_size)
	{
		this.file_size = file_size;
	}

	public String getFile_name()
	{
		return file_name;
	}

	public void setFile_name(String file_name)
	{
		this.file_name = file_name;
	}

	public String getFile_sysname()
	{
		return file_sysname;
	}

	public void setFile_sysname(String file_sysname)
	{
		this.file_sysname = file_sysname;
	}

	public String getFile_path()
	{
		return file_path;
	}

	public void setFile_path(String file_path)
	{
		this.file_path = file_path;
	}

	public void setFile_size(long size)
	{
		// TODO Auto-generated method stub
		
	} 
}

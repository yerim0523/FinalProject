package com.test.mvc;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ITestDAO
{
	public ArrayList<TestDTO> list() throws SQLException;
}

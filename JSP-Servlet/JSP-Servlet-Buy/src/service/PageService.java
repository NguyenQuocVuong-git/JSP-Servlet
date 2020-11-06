package service;

import java.sql.SQLException;

import dto.Student;

public interface PageService {
	public Student checkLogin(String username, String password) throws SQLException;
}

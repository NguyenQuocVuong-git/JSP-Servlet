package serviceimpl;

import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import daoImpl.StudentsDAOImpl;
import dto.Student;
import service.PageService;

public class PageServiceImpl implements PageService{

	@Override
	public Student checkLogin(String username, String password) throws SQLException {
		StudentsDAOImpl stud = new StudentsDAOImpl();
		Student stud1 = stud.findStudentByUserAndPassword(username, password);
		return stud1;
		
		
	}

}

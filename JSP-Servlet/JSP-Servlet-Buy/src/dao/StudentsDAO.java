package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.Student;



public interface StudentsDAO {
	public ArrayList<Student> getAllStudents() throws SQLException ; 
	public void insertStudent(Student student) throws SQLException;
	public void updateStudent(Student student) throws SQLException;
	public void deleteStudent(int studentID) throws SQLException;
	public Student findStudentByUserAndPassword(String username , String password) throws SQLException;
	public void createStudent(Student student) throws SQLException;
	public void createStudentByAdmin(Student student) throws SQLException;
	public Student getStudentById(int id) throws SQLException;
	public boolean addNewStudent(Student student) throws SQLException;
}

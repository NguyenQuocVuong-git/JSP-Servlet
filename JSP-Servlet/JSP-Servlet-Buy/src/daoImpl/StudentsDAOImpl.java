package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;

import org.apache.taglibs.standard.extra.spath.Step;

import dao.StudentsDAO;
import dbconnection.ConnectionFactory;
import dto.Borrows;
import dto.CheckUser;
import dto.HistoryBook;
import dto.Student;

public class StudentsDAOImpl implements StudentsDAO {
	private Connection connection;
	private PreparedStatement preparedStatement;
	private ResultSet resultSet;
	private Statement statement;

	//disconnet phương thức connection và preparedStatement
	private void DisconnectConnectionPreparedStatement() throws SQLException {
		if(connection!=null && preparedStatement!=null) {
			connection.close();
			preparedStatement.close();
		}
	}
	//disconnet phương thức connection và statement
	private void DisconnectConnectionStatement() throws SQLException {
		if(connection!=null && statement!=null) {
			connection.close();
			statement.close();
		}
	}
	//disconnet phương thức connection và statement và resulteSet
		private void DisconnectConnectionStatementResultSet() throws SQLException {
			if(connection!=null && statement!=null && resultSet!=null ) {
				connection.close();
				statement.close();
				resultSet.close();
			}
		}
	@Override
	public ArrayList<Student> getAllStudents() throws SQLException {
		 connection = null;
		 statement = null;
		 resultSet = null;
		String sql = " SELECT * FROM students";
		ArrayList<Student> liststudents = new ArrayList<Student>();
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				Student stu = new Student();
				stu.setStudentID(resultSet.getInt("studentID"));
				stu.setName(resultSet.getString("nameStudent"));
				stu.setAge(resultSet.getInt("age"));
				stu.setGender(resultSet.getInt("gender"));
				stu.setRole(resultSet.getString("role"));
				stu.setUsername(resultSet.getString("username"));
				stu.setPassword(resultSet.getString("password"));
				liststudents.add(stu);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionStatementResultSet();
		return liststudents;
	}

	@Override
	public void insertStudent(Student student) throws SQLException {
		connection = null;
		preparedStatement = null;
		String sql = " INSERT INTO students(nameStudent,age,gender,role,username,password) VALUES(?,?,?,?,?,?)";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, student.getName());
			preparedStatement.setInt(2, student.getAge());
			preparedStatement.setInt(3, student.getGender());
			preparedStatement.setString(4, student.getRole());
			preparedStatement.setInt(5, 1);
			preparedStatement.setInt(6,1);

		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();
	}

	@Override
	public void updateStudent(Student student) throws SQLException {
		 connection = null;
		 preparedStatement = null;
		String sql = " UPDATE students SET nameStudent=?,age=?,gender=?,role=?,password=? WHERE studentId=?";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, student.getName());
			preparedStatement.setInt(2, student.getAge());
			preparedStatement.setInt(3,student.getGender());
			preparedStatement.setString(4, student.getRole());
			preparedStatement.setString(5, student.getPassword());
			preparedStatement.setInt(6,student.getStudentID());
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();

	}

	@Override
	public void deleteStudent(int studentID) throws SQLException {
		connection = null;
		 preparedStatement = null;
		String sql = "DELETE FROM students WHERE studentId="+studentID;
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();
	}

	@Override
	public Student findStudentByUserAndPassword(String userName, String passWord) throws SQLException {
	 connection = null;
	 preparedStatement = null;
		//luôn luôn dùng rs khi hàm trả về 1 đối tượng khi query
	 resultSet = null;
		String sql="SELECT * FROM students WHERE username=? AND password=?";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userName);
			preparedStatement.setString(2, passWord);
			resultSet=preparedStatement.executeQuery();
			while(resultSet.next()) {
				Student stu = new Student();
				stu.setStudentID(resultSet.getInt("studentID"));
				stu.setName(resultSet.getString("nameStudent"));
				stu.setAge(resultSet.getInt("age"));
				stu.setGender(resultSet.getInt("gender"));
				stu.setRole(resultSet.getString("role"));
				stu.setUsername(resultSet.getString("username"));
				stu.setPassword(resultSet.getString("password"));
				return stu;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionStatementResultSet();
		return null;
	}

	@Override
	public void createStudent(Student student) throws SQLException {
		 connection = null;
		 preparedStatement = null;
		String sql = " INSERT INTO students(nameStudent,age,gender,username,password) VALUES (?,?,?,?,?)";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, student.getName());
			preparedStatement.setInt(2, student.getAge());
			preparedStatement.setInt(3, student.getGender());
			preparedStatement.setString(4, student.getUsername());
			preparedStatement.setString(5, student.getPassword());
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();
	}

	@Override
	public void createStudentByAdmin(Student student) throws SQLException {
	connection = null;
	preparedStatement = null; 
		String sql = " INSERT INTO students(nameStudent,age,gender,role,username,password) VALUES (?,?,?,?,?,?)";
		
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, student.getName());
			preparedStatement.setInt(2, student.getAge());
			preparedStatement.setInt(3, student.getGender());
			preparedStatement.setString(4, student.getRole());
			preparedStatement.setString(5, student.getUsername());
			preparedStatement.setString(6, student.getPassword());
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();

	}
	//SELECT DATEDIFF(day, '2011/08/25', '2011/08/28') AS DateDiff;
	public List<HistoryBook> listMuonSach(String dateBefore, String dateAfter) throws SQLException{
		List<HistoryBook> list = new ArrayList<HistoryBook>();
		connection = null;
		preparedStatement = null;
		String sql  = "SELECT s.nameStudent, b.name , br.BorrowDate, br.quantity\r\n" + 
				"FROM students as s join\r\n" + 
				"(SELECT bookId, StudentID,BorrowDate,quantity FROM borrows  where (SELECT DATEDIFF(BorrowDate, ?))>=0 AND (SELECT DATEDIFF(BorrowDate, ?))<=0)\r\n" + 
				" as br on br.studentID = s.studentId join books as b on br.bookID = b.bookID;";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, dateBefore);
			preparedStatement.setString(2, dateAfter);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				String stuName = resultSet.getString("nameStudent");
				String booName = resultSet.getString("name");
				Date date = resultSet.getDate("BorrowDate");
				int sl = resultSet.getInt("quantity");
				HistoryBook hb = new HistoryBook(stuName, booName, date, sl);
				list.add(hb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();
		return list;
	}

	@Override
	public Student getStudentById(int id) throws SQLException {
		connection = null;
		statement = null;
		resultSet = null;
		String sql = " SELECT * FROM students WHERE studentID = "+id;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				Student st = new Student();
				st.setStudentID(id);
				st.setName(resultSet.getString("nameStudent"));
				st.setAge(resultSet.getInt("age"));
				st.setGender(resultSet.getInt("gender"));
				st.setRole(resultSet.getString("role"));
				st.setUsername(resultSet.getString("username"));
				st.setPassword(resultSet.getString("password"));
				return st;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionStatement();
		return null;
	}

	@Override
	public boolean addNewStudent(Student student) throws SQLException {
		 connection = null;
		 preparedStatement = null;
		boolean result = true;
		String sql = " INSERT INTO students(nameStudent,age,gender,role,username,password) VALUES (?,?,?,?,?,?)";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, student.getName());
			preparedStatement.setInt(2, student.getAge());
			preparedStatement.setInt(3, student.getGender());
			preparedStatement.setString(4, "student");
			preparedStatement.setString(5, student.getUsername());
			preparedStatement.setString(6, student.getPassword());
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
			result = false; 
		}
		DisconnectConnectionPreparedStatement();
		return result;
	}
	public CheckUser checkUser(String userName) throws SQLException {
	 connection = null;
	 preparedStatement = null;
		boolean result = true;
		ResultSet  rs = null;
		String sql ="SELECT COUNT(*) AS CNT FROM students WHERE username = ?;";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, userName);
			rs = preparedStatement.executeQuery();
			while(rs.next()) {
				CheckUser ch = new CheckUser();
				
				ch.setNumber(rs.getInt("CNT"));
				return ch;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();
		return null;


	}


}

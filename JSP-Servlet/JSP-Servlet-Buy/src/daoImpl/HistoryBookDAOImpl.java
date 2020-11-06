package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import dao.HistoryBooks;
import dbconnection.ConnectionFactory;
import dto.HistoryBook;
import dto.SearchForm;

public class HistoryBookDAOImpl implements HistoryBooks {
	
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
	@Override
	public List<HistoryBook> danhSachMuonSach(int id) throws SQLException {
		connection = null;
		preparedStatement = null;
		resultSet = null;
		List<HistoryBook> listHBook = new ArrayList<HistoryBook>();
		String sql ="SELECT s.nameStudent,b.name,br.BorrowDate, br.quantity " + 
				"FROM students s, borrows br, books b\r\n" + 
				"where s.studentId = br.studentID \r\n" + 
				"AND b.bookID = br.bookID\r\n" + 
				"AND br.StudentID=?";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				HistoryBook hb = new HistoryBook();
				hb.setBookName(resultSet.getString("name"));
				hb.setStudentName(resultSet.getString("nameStudent"));
				hb.setDateBorrows(resultSet.getDate("BorrowDate"));
				hb.setQuantity(resultSet.getInt("quantity"));
				listHBook.add(hb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();
		return listHBook;
	}

	@Override
	public List<HistoryBook> getAllBookOnBorrow() throws SQLException {
		connection = null;
		statement = null;
		resultSet = null;
		List<HistoryBook> listHBook = new ArrayList<HistoryBook>();
		String sql = "SELECT s.nameStudent,b.name,br.BorrowDate, br.quantity\r\n" + 
				"FROM students s, borrows br, books b\r\n" + 
				"where s.studentId = br.studentID \r\n" + 
				"AND b.bookID = br.bookID;";
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				HistoryBook hb = new HistoryBook();
				hb.setBookName(resultSet.getString("name"));
				hb.setStudentName(resultSet.getString("nameStudent"));
				hb.setDateBorrows(resultSet.getDate("BorrowDate"));
				hb.setQuantity(resultSet.getInt("quantity"));
				listHBook.add(hb);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionStatement();
		return listHBook;
	}
	@Override
	public List<SearchForm> SearchFormByInfo(String sqlString) {
		connection = null;
		statement = null;
		resultSet = null;
		List<SearchForm> listSearch = new ArrayList<SearchForm>();
		String sql = sqlString;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				SearchForm sf = new SearchForm();
				sf.setbookID(resultSet.getInt("BookID"));
				sf.setNameBook(resultSet.getString("nameSach1"));
				sf.setBookDate(resultSet.getDate("BorrowDate"));
				sf.setStudentID(resultSet.getInt("studentID"));
				sf.setNameStudents(resultSet.getString("nameStudent"));
				sf.setQuantity(resultSet.getInt("Quantity"));
				listSearch.add(sf);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listSearch;
	}


}

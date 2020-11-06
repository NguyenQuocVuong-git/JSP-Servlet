package daoImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.text.html.HTMLDocument.HTMLReader.PreAction;
import dao.BooksDAO;
import dbconnection.ConnectionFactory;
import dto.Books;
import dto.HistoryBook;
import dto.Student;
public class BookDAOImpl implements BooksDAO {

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
	public ArrayList<Books> getAllBooks() throws SQLException {
		connection = null;
		statement = null;
		resultSet = null;
		ArrayList<Books> araylistbook = new ArrayList<Books>();
		String sql = "SELECT * FROM books ";
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet =statement.executeQuery(sql);
			while(resultSet.next()) {
				Books book = new Books();
				book.setBookID(resultSet.getInt("bookID"));
				book.setName(resultSet.getString("name"));
				book.setTotalPage(resultSet.getInt("totalPage"));
				book.setType(resultSet.getString("type"));
				book.setQuantity(resultSet.getInt("quantity"));
				araylistbook.add(book);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionStatementResultSet();
		return araylistbook;
	}
	@Override
	public void insertBook(Books books) throws SQLException {
		connection = null;
		preparedStatement = null;
		String sql = " INSERT INTO books(name,totalPage,type,quantity) VALUES (?,?,?,?) ";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, books.getName());
			preparedStatement.setInt(2, books.getTotalPage());
			preparedStatement.setString(3,books.getType());
			preparedStatement.setInt(4, books.getQuantity());
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();

	}
	@Override
	public void updateBook(Books books) throws SQLException {
		connection = null;
		preparedStatement = null;
		String sql = " UPDATE books SET name=? , totalPage=? , type=? , quantity=?  WHERE bookID=?  ";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, books.getName());
			preparedStatement.setInt(2, books.getTotalPage());
			preparedStatement.setString(3,books.getType());
			preparedStatement.setInt(4, books.getQuantity());
			preparedStatement.setInt(5, books.getBookID());
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();

	}
	@Override
	public void deleteBook(int bookID) throws SQLException {
		connection = null;
		statement = null;
		String sql = "DELETE FROM books WHERE bookID="+bookID;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			statement.executeUpdate(sql);
		}catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionStatement();

	}

	@Override
	public void updateBorrows(int ids, int id, String date, int soLuongMuon) throws SQLException {
		connection = null;
		preparedStatement = null;
		String sql = " INSERT INTO Borrows(StudentID,BookID,BorrowDate,Quantity) VALUES(?,?,?,?)";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, ids);
			preparedStatement.setInt(2, id);
			preparedStatement.setString(3, date);
			preparedStatement.setInt(4, soLuongMuon);
			preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();

	}
	@Override
	public Books getBooksById(int id) throws SQLException {
		connection = null;
		statement = null;
		resultSet = null;
		String sql = " SELECT * FROM books WHERE bookID="+id;
		try {
			connection = ConnectionFactory.getConnection();
			statement = connection.createStatement();
			resultSet=statement.executeQuery(sql);
			while(resultSet.next()) {
				Books book = new Books();
				book.setBookID(resultSet.getInt("bookID"));
				book.setName(resultSet.getString("name"));
				book.setTotalPage(resultSet.getInt("totalPage"));
				book.setType(resultSet.getString("type"));
				book.setQuantity(resultSet.getInt("quantity"));
				return book;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionStatement();
		return null;
	}
	@Override
	public int SCL(int id) throws SQLException {
		connection = null;
		preparedStatement = null;
		ResultSet rs = null;
		int a = 0;
		String sql = "  SELECT (SUM(bo.quantity) - br.tong) AS tongsoconglai FROM books bo ,(SELECT BookID,SUM(br.quantity) tong FROM  borrows br WHERE  br.BookID = ?) br WHERE br.BookID = bo.BookID";
		try {
			connection = ConnectionFactory.getConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			rs = preparedStatement.executeQuery();
			while(rs.next()) {
				a = rs.getInt("tongsoconglai");
				return a ;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		DisconnectConnectionPreparedStatement();
		return 0;
	}



}

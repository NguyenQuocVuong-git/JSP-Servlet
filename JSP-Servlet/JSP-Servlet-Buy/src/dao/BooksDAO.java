package dao;

import java.sql.SQLException;
import java.util.ArrayList;

import dto.Books;
import dto.HistoryBook;



public interface BooksDAO {
	public ArrayList<Books> getAllBooks() throws SQLException ;
	public void insertBook(Books books) throws SQLException;
	public void updateBook(Books books) throws SQLException;
	public void deleteBook(int bookID) throws SQLException;
	public void updateBorrows(int ids,int id , String date,int soLuongMuon) throws SQLException;
	public Books getBooksById(int id) throws SQLException;
	public int SCL (int id) throws SQLException;
}

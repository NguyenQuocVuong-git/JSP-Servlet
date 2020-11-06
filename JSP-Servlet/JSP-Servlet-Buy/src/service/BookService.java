package service;

import java.sql.SQLException;
import java.util.List;

import dto.Books;

public interface BookService {
	List<Books> getAllBooks() throws SQLException;
	Books getBooksById(int id) throws SQLException;
	boolean updateBorrows(int idMuon, int id, int soLuongMuon) throws SQLException;
}

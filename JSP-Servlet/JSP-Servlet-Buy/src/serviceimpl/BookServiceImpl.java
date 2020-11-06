package serviceimpl;

import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import daoImpl.BookDAOImpl;
import dto.Books;
import service.BookService;

public class BookServiceImpl implements BookService {

	final BookDAOImpl bookDao = new BookDAOImpl() ;
	@Override
	public List<Books> getAllBooks() throws SQLException {
		List<Books> listBook = bookDao.getAllBooks();
		return listBook;
	}

	@Override
	public Books getBooksById(int id) throws SQLException {
		Books book = bookDao.getBooksById(id);
		return book;
	}

	@Override
	public boolean updateBorrows(int idMuon, int id, int soLuongMuon) throws SQLException {
		LocalDateTime localDateTime = LocalDateTime.now();
		DateTimeFormatter formatterFull = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String localDate = localDateTime.format(formatterFull);
		int soLuongConLai = bookDao.SCL(id);
		if(soLuongConLai-soLuongMuon > 0) {
			bookDao.updateBorrows(idMuon, id, localDate, soLuongMuon);
			return true;
		}
		return false;
	}

}

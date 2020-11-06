package dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.HistoryBook;
import dto.SearchForm;

public interface HistoryBooks {
	public List<HistoryBook> danhSachMuonSach(int id) throws SQLException;
	public List<HistoryBook> getAllBookOnBorrow() throws SQLException;
	public List<SearchForm> SearchFormByInfo(String sqlString);
}

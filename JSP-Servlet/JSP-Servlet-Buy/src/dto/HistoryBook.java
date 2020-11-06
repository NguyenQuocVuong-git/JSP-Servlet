package dto;

import java.util.Date;

public class HistoryBook {
	private String studentName;
	private String bookName;
	private Date dateBorrows;
	private int quantity;
	
	public HistoryBook() {
		super();
	}

	public HistoryBook(String studentName, String bookName, Date dateBorrows, int quantity) {
		super();
		this.studentName = studentName;
		this.bookName = bookName;
		this.dateBorrows = dateBorrows;
		this.quantity = quantity;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public Date getDateBorrows() {
		return dateBorrows;
	}

	public void setDateBorrows(Date dateBorrows) {
		this.dateBorrows = dateBorrows;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}

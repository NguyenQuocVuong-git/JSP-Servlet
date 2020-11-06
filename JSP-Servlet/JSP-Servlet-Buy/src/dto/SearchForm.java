package dto;

import java.util.Date;

public class SearchForm {
	private int bookID;
	private String nameBook;
	private Date bookDate;
	private int studentID;
	private String nameStudents;
	private int quantity;
	
	
	public SearchForm() {
		super();
	}


	public SearchForm(int borrowID, String nameBook, Date bookDate, int studentID, String nameStudents, int quantity) {
		super();
		this.bookID = bookID;
		this.nameBook = nameBook;
		this.bookDate = bookDate;
		this.studentID = studentID;
		this.nameStudents = nameStudents;
		this.quantity = quantity;
	}


	public int getbookID() {
		return bookID;
	}


	public void setbookID(int borrowID) {
		this.bookID = borrowID;
	}


	public String getNameBook() {
		return nameBook;
	}


	public void setNameBook(String nameBook) {
		this.nameBook = nameBook;
	}


	public Date getBookDate() {
		return bookDate;
	}


	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}


	public int getStudentID() {
		return studentID;
	}


	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}


	public String getNameStudents() {
		return nameStudents;
	}


	public void setNameStudents(String nameStudents) {
		this.nameStudents = nameStudents;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	
	
}

package dto;

import java.util.Date;

public class Borrows {
	private int borrowsID;
	private int studentID;
	private int bookID;
	private Date bookDate;
	private int amount;
	
	public Borrows() {
	}
	

	public Borrows(int borrowsID, int studentID, int bookID, Date bookDate, int amount) {
		super();
		this.borrowsID = borrowsID;
		this.studentID = studentID;
		this.bookID = bookID;
		this.bookDate = bookDate;
		this.amount = amount;
	}


	public int getBorrowsID() {
		return borrowsID;
	}

	public void setBorrowsID(int borrowsID) {
		this.borrowsID = borrowsID;
	}

	public int getStudentID() {
		return studentID;
	}

	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}

	public int getBookID() {
		return bookID;
	}

	public void setBookID(int bookID) {
		this.bookID = bookID;
	}

	public Date getBookDate() {
		return bookDate;
	}

	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
	
}

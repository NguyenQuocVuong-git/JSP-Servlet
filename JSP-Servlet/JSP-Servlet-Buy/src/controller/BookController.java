package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import daoImpl.BookDAOImpl;
import daoImpl.HistoryBookDAOImpl;
import daoImpl.StudentsDAOImpl;
import dto.Books;
import dto.HistoryBook;
import dto.Student;
import serviceimpl.BookServiceImpl;

/**
 * Servlet implementation class BookController
 */
@WebServlet("/BookController")
public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action") != null ? request.getParameter("action") : "none";
		BookServiceImpl bookServiceImpl = new BookServiceImpl();
		try {
			switch (action) {

			case "redirectCreateBook":
				RequestDispatcher rd1 = request.getRequestDispatcher("createBook.jsp");
				rd1.forward(request, response);

				break;
			case "createBook":
				this.createBook(request, response);
				break;
			case "booksManager":
				List<Books> listBooks = bookServiceImpl.getAllBooks();
				request.setAttribute("listBooks", listBooks);
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/bookManager.jsp");
				dispatcher.forward(request, response);
				break;
			case "editbook":
				request.setCharacterEncoding("UTF-8"); 
				String ids = request.getParameter("idBooks");
				//int id2 = Integer.parseInt(ids);

				//BookDAOImpl bookDAO2 = new BookDAOImpl();
				//Books book = bookDAO2.getBooksById(id2);
				Books book = bookServiceImpl.getBooksById(Integer.parseInt(ids));
				request.setAttribute("listBooks", book);
				RequestDispatcher rd2 = request.getRequestDispatcher("editBooks.jsp");
				rd2.forward(request, response);
				break;
			case "editBookManipulation":
				request.setCharacterEncoding("UTF-8"); 
				String ids1 = request.getParameter("id");
				int id3 = Integer.parseInt(ids1);
				String name = request.getParameter("name");
				String to = request.getParameter("totalPage");
				int totalPage = Integer.parseInt(to);
				String type = request.getParameter("type");
				String quan = request.getParameter("quanity");
				int quanity = Integer.parseInt(quan);
				BookDAOImpl boo = new BookDAOImpl();
				Books books4 = new Books(id3, name, totalPage, type, quanity);
				boo.updateBook(books4);
				response.sendRedirect(request.getContextPath() + "/BookController?action=booksManager");
				break;
			case "deleteBook":
				String ids2 = request.getParameter("idBooks");
				int id4 = Integer.parseInt(ids2);
				BookDAOImpl boo1 = new BookDAOImpl();
				boo1.deleteBook(id4);
				response.sendRedirect(request.getContextPath() + "/BookController?action=booksManager");
				break;

			case "searchDay":
				RequestDispatcher rd8 = request.getRequestDispatcher("searchDay.jsp");
				rd8.forward(request, response);
				break;
			case "searchDayManipulation":
				this.searchDayManipulation(request, response);
				break;
			case "booksQuanLy":
				HistoryBookDAOImpl hs = new HistoryBookDAOImpl();
				List<HistoryBook> listHistory = hs.getAllBookOnBorrow();
				request.setAttribute("listHistory", listHistory);
				RequestDispatcher rd9 = request.getRequestDispatcher("quanlySach.jsp");
				rd9.forward(request, response);
				break;
			default:
				break;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private void createBook(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("nameBook");
		String to = request.getParameter("totalPage");
		int totalPage = Integer.parseInt(to);
		String type = request.getParameter("type");
		String qu = request.getParameter("quantity");
		int quantity = Integer.parseInt(qu);
		Books b = new Books();
		b.setName(name);
		b.setTotalPage(totalPage);
		b.setType(type);
		b.setQuantity(quantity);
		BookDAOImpl book = new BookDAOImpl();
		book.insertBook(b);
		response.sendRedirect(request.getContextPath() + "/BookController?action=booksManager");
	}
	private void searchDayManipulation(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		String bef = request.getParameter("bf");
		String aff = request.getParameter("at");
		StudentsDAOImpl stu = new StudentsDAOImpl();
		List<HistoryBook> listMuon = stu.listMuonSach(bef, aff);
		request.setAttribute("listMuon", listMuon);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/searchDayResultSet.jsp");
		dispatcher.forward(request, response);

	}



}

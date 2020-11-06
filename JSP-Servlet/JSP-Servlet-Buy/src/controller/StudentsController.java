package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
import dto.CheckUser;
import dto.HistoryBook;
import dto.Student;

/**
 * Servlet implementation class StudentsController
 */
@WebServlet("/StudentsController")
public class StudentsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentsController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action") != null ? request.getParameter("action") : "none";
		try {
			switch (action) {
			case "studentManager":
				StudentsDAOImpl stu = new StudentsDAOImpl();
				List<Student> listStudent = stu.getAllStudents();
				request.setAttribute("listStudent", listStudent);
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/studentManager.jsp");
				dispatcher.forward(request, response);
				break;
				//
			case "editStudents":
				String id = request.getParameter("idStudent");
				int idStudent = Integer.parseInt(id);
				StudentsDAOImpl students = new StudentsDAOImpl();
				Student stu2 = students.getStudentById(idStudent);
				request.setAttribute("Student", stu2);
				RequestDispatcher rd = request.getRequestDispatcher("editStudent.jsp");
				rd.forward(request, response);
				//còn tiếp 
				break;
			case "editStudentsManipulation":
				request.setCharacterEncoding("UTF-8"); 
				String ids = request.getParameter("id");
				int id5 = Integer.valueOf(ids);
				String name = request.getParameter("name");
				// khai báo reguxlar ko phải kiểu số 0-9
//				String pattern = "[^0-9]";
//				// Create a Pattern object
//
//				Pattern r = Pattern.compile(pattern);
//				// so sánh pattern với kiểu truyền vào
//				Matcher m = r.matcher(name);
				// tìm kiếm trong kiểu truyền vào có tồn tại số hay ko
				if (!isFullname(name)) {
					System.out.println("i here");
					request.setAttribute("errormessage", "co so roi");
					StudentsDAOImpl studentss = new StudentsDAOImpl();
					Student stu3 = studentss.getStudentById(id5);
					stu3.setName("");
					request.setAttribute("Student", stu3);
					RequestDispatcher rd1 = request.getRequestDispatcher("/editStudent.jsp");
					rd1.forward(request, response);
				}else {
					String ag = request.getParameter("age");
					int age = Integer.parseInt(ag);
					String gen = request.getParameter("gender");
					String role = request.getParameter("role");
					String passWord = request.getParameter("password");
					Student stu3 = new Student();
					stu3.setName(name);
					stu3.setStudentID(id5);
					stu3.setRole(role);
					stu3.setPassword(passWord);
					stu3.setAge(age);
					StudentsDAOImpl stuDAO = new StudentsDAOImpl();
					stuDAO.updateStudent(stu3);
					response.sendRedirect(request.getContextPath() + "/StudentsController?action=studentManager");
				}
				break;
			case "deleteStudents":
				String ids6 = request.getParameter("idStudent");
				int id6 = Integer.parseInt(ids6);
				StudentsDAOImpl stuDao = new StudentsDAOImpl();
				stuDao.deleteStudent(id6);
				response.sendRedirect(request.getContextPath() + "/StudentsController?action=studentManager");
				break;
			case "CreateStudentByAdmin":
				RequestDispatcher rd5 = request.getRequestDispatcher("createStudentByAdmin.jsp");
				rd5.forward(request, response);
				break;
			case "CreateStudentByAdminTT":
				this.CreateStudentByAdminTT(request, response);
				break;
		
				//			case "":
				//				break;
				//			case "":
				//				break;
				//			case "":
				//				break;

			default:

				break;
			}
		} catch(SQLException e) {
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
	private void CreateStudentByAdminTT(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		request.setCharacterEncoding("UTF-8"); 
		String fName = request.getParameter("fullname");
		String uName = request.getParameter("username");
		int age = Integer.parseInt(request.getParameter("age"));
		int gDer = Integer.parseInt(request.getParameter("gender"));
		String rolle = request.getParameter("role");
		String pas = request.getParameter("password");
		Student stu4 = new Student();
		stu4.setName(fName);
		stu4.setUsername(uName);
		stu4.setAge(age);
		stu4.setGender(gDer);
		stu4.setPassword(pas);
		stu4.setRole(rolle);
		StudentsDAOImpl stud = new StudentsDAOImpl();
		stud.createStudentByAdmin(stu4);
		response.sendRedirect(request.getContextPath() + "/StudentsController?action=studentManager");
	}
	
	
	public static boolean isFullname(String str) {
	    String expression = "^[a-zA-Z\\s]+"; 
	    return str.matches(expression);        
	}
}

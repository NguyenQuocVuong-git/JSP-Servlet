package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.mysql.cj.result.Row;

import daoImpl.StudentsDAOImpl;
import dto.Student;

/**
 * Servlet implementation class ExportController
 */
@WebServlet("/ExportController")
public class ExportController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExportController() {
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
				case "login":
					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
					break;
				case "loginTT":
				
					break;
				default:
					break;
				}
			} catch (Exception e) {
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
	public class WriteExcelExample {
		public static final int COLUMN_INDEX_ID         = 0;
	    public static final int COLUMN_INDEX_TITLE      = 1;
	    public static final int COLUMN_INDEX_PRICE      = 2;
	    public static final int COLUMN_INDEX_QUANTITY   = 3;
	    public static final int COLUMN_INDEX_TOTAL      = 4;
	    private static CellStyle cellStyleFormatNumber = null;
	     
	    public void main(String[] args) throws IOException {
	        final List<Book1> books = getBooks();
	        final String excelFilePath = "D:/books.xlsx";
	        writeExcel(books, excelFilePath);
	    }
	    // Create workbook
	    private Workbook getWorkbook(String excelFilePath) throws IOException {
	        Workbook workbook = null;
	 
	        if (excelFilePath.endsWith("xlsx")) {
	            workbook = new XSSFWorkbook();
	        } else if (excelFilePath.endsWith("xls")) {
	            workbook = new HSSFWorkbook();
	        } else {
	            throw new IllegalArgumentException("The specified file is not Excel file");
	        }
	 
	        return workbook;
	    }
	    
		public static void writeExcel(List<Book1> books, String excelFilePath) throws IOException {
	    	// Create Workbook
	        Workbook workbook = getWorkbook(excelFilePath);
	 
	        // Create sheet
	        Sheet sheet = workbook.createSheet("books"); // Create sheet with sheet name
	 
	        int rowIndex = 0;
	         
	        // Write header
	        writeHeader(sheet, rowIndex);
	 
	        // Write data
	        rowIndex++;
	        for (Book1 book : books) {
	            // Create row
	            Row row = sheet.createRow(rowIndex);
	            // Write data on row
	            writeBook(book, row);
	            rowIndex++;
	        }
	         
	        // Write footer
//	        writeFooter(sheet, rowIndex);
	 
	        // Auto resize column witdth
	        int numberOfColumn =  sheet.getRow(0).getPhysicalNumberOfCells();
	        autosizeColumn(sheet, numberOfColumn);
	 
	        // Create file excel
	        createOutputFile(workbook, excelFilePath);
	        System.out.println("Done!!!");
	    }
	 
	    // Create dummy data
	    private static List<Book1> getBooks() {
	        List<Book1> listBook = new ArrayList<>();
	        //Book1 book;
	        Book1 b1 = new Book1(1, "bongda", 1, 10000);
	        Book1 b2 = new Book1(2, "phapluat", 2, 20000);
	        Book1 b3 = new Book1(3, "thethao", 3, 2000);
	        Book1 b4 = new Book1(4, "bcd", 4, 2000);
	        // truyền thế này là để khi get ra trong table sẽ duyệt qua từng giá trị
	        // khi gán giá trị cứng rồi thì cần như thế này thôi
	        //        for (int i = 1; i <= 5; i++) {
//	            book = new Book1(i, "Book " + i, i * 2, i * 1000);
//	            listBook.add(book);
//	        }
	        listBook.add(b1);
	        listBook.add(b2);
	        listBook.add(b3);
	        listBook.add(b4);
	        return listBook;
	    }
	 
	    // Write header with format
	    private static void writeHeader(Sheet sheet, int rowIndex) {
	        // create CellStyle
	        CellStyle cellStyle = createStyleForHeader(sheet);
	         
	        // Create row
	        Row row = ((org.apache.poi.ss.usermodel.Sheet) sheet).createRow(rowIndex);
	         
	        // Create cells
	        Cell cell = row.createCell(COLUMN_INDEX_ID);
	        cell.setCellStyle(cellStyle);
	        cell.setCellValue("Id");
	 
	        cell = row.createCell(COLUMN_INDEX_TITLE);
	        cell.setCellStyle(cellStyle);
	        cell.setCellValue("Title");
	 
	        cell = row.createCell(COLUMN_INDEX_PRICE);
	        cell.setCellStyle(cellStyle);
	        cell.setCellValue("Price");
	 
	        cell = row.createCell(COLUMN_INDEX_QUANTITY);
	        cell.setCellStyle(cellStyle);
	        cell.setCellValue("Quantity");
	 
//	        cell = row.createCell(COLUMN_INDEX_TOTAL);
//	        cell.setCellStyle(cellStyle);
//	        cell.setCellValue("Total money");
	    }
	 
	    // Write data
	    private static void writeBook(Book1 book, Row row) {
	        if (cellStyleFormatNumber == null) {
	            // Format number
	            short format = (short)BuiltinFormats.getBuiltinFormat("#,##0");
	            // DataFormat df = workbook.createDataFormat();
	            // short format = df.getFormat("#,##0");
	             
	            //Create CellStyle
	            Workbook workbook = row.getSheet().getWorkbook();
	            cellStyleFormatNumber = workbook.createCellStyle();
	            cellStyleFormatNumber.setDataFormat(format);
	        }
	         
	        Cell cell = row.createCell(COLUMN_INDEX_ID);
	        cell.setCellValue(book.getId());
	 
	        cell = row.createCell(COLUMN_INDEX_TITLE);
	        cell.setCellValue(book.getTitle());
	 
	        cell = row.createCell(COLUMN_INDEX_PRICE);
	        cell.setCellValue(book.getPrice());
	        cell.setCellStyle(cellStyleFormatNumber);
	 
	        cell = row.createCell(COLUMN_INDEX_QUANTITY);
	        cell.setCellValue(book.getQuantity());
	         
	        // Create cell formula
	        // totalMoney = price * quantityFORMULA
//	        cell = row.createCell(COLUMN_INDEX_TOTAL);
//	        cell.setCellStyle(cellStyleFormatNumber);
//	        int currentRow = row.getRowNum() + 1;
//	        String columnPrice = CellReference.convertNumToColString(COLUMN_INDEX_PRICE);
//	        String columnQuantity = CellReference.convertNumToColString(COLUMN_INDEX_QUANTITY);
//	        cell.setCellFormula(columnPrice + currentRow + "*" + columnQuantity + currentRow);
	    }
	 
	    // Create CellStyle for header
	    private static CellStyle createStyleForHeader(Sheet sheet) {
	        // Create font
	        org.apache.poi.ss.usermodel.Font font = sheet.getWorkbook().createFont();
	        ((org.apache.poi.ss.usermodel.Font) font).setFontName("Times New Roman"); 
	        ((org.apache.poi.ss.usermodel.Font) font).setBold(true);
	        ((org.apache.poi.ss.usermodel.Font) font).setFontHeightInPoints((short) 14); // font size
	        ((org.apache.poi.ss.usermodel.Font) font).setColor(IndexedColors.WHITE.getIndex()); // text color
	 
	        // Create CellStyle
	        CellStyle cellStyle = sheet.getWorkbook().createCellStyle();
	        cellStyle.setFont((org.apache.poi.ss.usermodel.Font) font);
	        cellStyle.setFillForegroundColor(IndexedColors.BLUE.getIndex());
	        cellStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
	        cellStyle.setBorderBottom(BorderStyle.THIN);
	        return cellStyle;
	    }
	     
	    // Write footer
//	    private static void writeFooter(Sheet sheet, int rowIndex) {
//	        // Create row
//	        Row row = sheet.createRow(rowIndex);
//	        Cell cell = row.createCell(COLUMN_INDEX_TOTAL);
//	        cell.setCellFormula("SUM(E2:E6)");
//	    }
	     
	    // Auto resize column width
	    private static void autosizeColumn(Sheet sheet, int lastColumn) {
	        for (int columnIndex = 0; columnIndex < lastColumn; columnIndex++) {
	            ((org.apache.poi.ss.usermodel.Sheet) sheet).autoSizeColumn(columnIndex);
	        }
	    }
	     
	    // Create output file
	    private static void createOutputFile(Workbook workbook, String excelFilePath) throws IOException {
	        try (OutputStream os = new FileOutputStream(excelFilePath)) {
	            workbook.write(os);
	        }
	    }
	}

}

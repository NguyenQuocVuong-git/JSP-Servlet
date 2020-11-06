package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class PermissionsFilter
 */
@WebFilter(filterName = "PermissionsFilter", urlPatterns= {"/StudentsController","/BookController"})
public class PermissionsFilter implements Filter {

    /**
     * Default constructor. 
     */
    public PermissionsFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpSession session = httpReq.getSession(false);
		if (session != null && session.getAttribute("role")!= null && session.getAttribute("role").equals("admin")) {
			chain.doFilter(request,response); 
		} else {
			RequestDispatcher dispatcher = httpReq.getServletContext().getRequestDispatcher("/accessDenied.jsp");
	        dispatcher.forward(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}

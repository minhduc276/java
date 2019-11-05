package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class maytinhcuhuoiServlet
 */
@WebServlet("/maytinhcuhuoiServlet")
public class maytinhcuhuoiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public maytinhcuhuoiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		Long a,b,kq=(long)0;
		String aa = request.getParameter("txta");
		String bb = request.getParameter("txtb");
		String nut = request.getParameter("but1");
		
		if(aa!=null && bb!= null) {
			a = Long.parseLong(aa);
			b = Long.parseLong(bb);
			if(nut.equals("+")){
				kq = a+b;	
			}else if(nut.equals("-")){
				kq = a-b;
			}	
		}
		request.setAttribute("aa", aa);
		request.setAttribute("bb", bb);
		request.setAttribute("kq", kq);
		RequestDispatcher rd = request.getRequestDispatcher("may-tinh-cu-chuoi.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package note;

import DAO.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ValidateOtp
 */
@WebServlet("/ValidateOtp")
public class ValidateOtp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
        @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{       
		int value=Integer.parseInt(request.getParameter("otp"));
		HttpSession session=request.getSession();
		int otp=(int)session.getAttribute("otp");		
		RequestDispatcher dispatcher=null;		
		if (value==otp) 
		{               String email=request.getParameter("email");
				request.setAttribute("email", email);
				request.setAttribute("status", "success");
                                AccountDAO dao=new AccountDAO();
                                int id = dao.getAccountByEmail(email).getAccountID();
                                request.setAttribute("id", id);
			  dispatcher=request.getRequestDispatcher("newPassword.jsp");
			dispatcher.forward(request, response);
			
		}
		else
		{
			request.setAttribute("message","wrong otp");
			
		   dispatcher=request.getRequestDispatcher("EnterOtp.jsp");
			dispatcher.forward(request, response);
		
		}
		
	}

}

package Customer;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class BidderServlet
 */
@WebServlet("/BidderServlet")
public class BidderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	private CustomerDbUtil CustomerdbUtil;
	
	@Resource(name="jdbc/web_student_tracker")
	private DataSource dataSource;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	@Override
    public void init() throws ServletException {
        super.init();
        
        //create our CustomerdbUtil ... and pass in the conn datasource
        try {
        	CustomerdbUtil= new CustomerDbUtil(dataSource);
        }
        catch(Exception exc) {
        	throw new ServletException(exc);
        }
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String theCommand=request.getParameter("command");
			switch(theCommand) {
				case "ADD":
					addCustomer(request,response);
					break;
				
				case "VALIDITY":
					customerapplication(request,response);
					break;
				
				case "VIEW":
					customerview(request,response);
					break;
				
				case "DELETE":
					deleteCustomer(request,response);
				
				case "LOGIN":
					customerlogin(request,response);
					break;
					
				case "VIEWCARS":
					carsview(request,response);
					break;
			
			}
			
			
		}
		catch(Exception exc) {
			throw new ServletException(exc);
		}
	}

	private void carsview(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException,ServletException{
		
		List<RepossessedCars> cars= CustomerdbUtil.getRepossessedCars();
		request.setAttribute("CARS_LIST", cars);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/viewcars.jsp");
		dispatcher.forward(request, response);
		
		
	}

	private void customerlogin(HttpServletRequest request, HttpServletResponse response) throws SQLException,ServletException,IOException{
		
		String BankID=request.getParameter("BankId");
		String password=request.getParameter("password");
		
		CustomerDetails theCustomer= new CustomerDetails(BankID,password);
		int check=CustomerdbUtil.checkcustomer(theCustomer);
		if(check==1)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/cars.jsp");
			dispatcher.forward(request, response);
		}
		else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/fail.jsp");
			dispatcher.forward(request, response);
		}
		
	}

	private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws SQLException,ServletException, IOException {
		String BankId=request.getParameter("BankId");
		CustomerApplication theCustomer=new CustomerApplication(BankId);
		CustomerdbUtil.deleteCustomer(theCustomer);	
		RequestDispatcher dispatcher = request.getRequestDispatcher("/delete-page.jsp");
		dispatcher.forward(request, response);
		
	}

	private void customerview(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		List<CustomerApplication> customers=CustomerdbUtil.getCustomer();
		
		request.setAttribute("CUSTOMER-LIST",customers);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/customer-list.jsp");
		dispatcher.forward(request, response);
	}

	private void customerapplication(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String BankID=request.getParameter("BankId");
		String AadharID=request.getParameter("AadharId");
		String Age=request.getParameter("age");
		String Address=request.getParameter("address");
		String Salary=request.getParameter("salary");
		
		CustomerApplication theCustomer= new CustomerApplication(BankID,AadharID,Age,Address,Salary);
		CustomerdbUtil.addApplication(theCustomer);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Application.jsp");
		dispatcher.forward(request, response);
		
		
	}

	

	private void addCustomer(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String BankID=request.getParameter("BankId");
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String DOB=request.getParameter("DOB");
		String AadharID=request.getParameter("AadharId");
		
		//create new Customer Object
		CustomerDetails theCustomer= new CustomerDetails(firstName,lastName,email,DOB,password,BankID,AadharID);
		
		//add the bidder to database
		CustomerdbUtil.addBidder(theCustomer);
		RequestDispatcher dispatcher =request.getRequestDispatcher("/CustomerRegistration.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

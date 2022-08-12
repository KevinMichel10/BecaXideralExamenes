package com.luv2code.web.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class XideralPrueba
 */
@WebServlet("/XideralPrueba")
public class XideralPrueba extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc/web_student_tracker")
	private DataSource dataSource;
    /**
     * @see HttpServlet#HttpServlet()
     */
    //public XideralPrueba() {
      //  super();
        // TODO Auto-generated constructor stub
    //}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// Step 1:  Set up the printwriter
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		
		// Step 2:  Get a connection to the database
		//Connection myConn = null;
		//Statement myStmt = null;
		//ResultSet myRs = null;
		
		try(Connection myConn=dataSource.getConnection();
				Statement myStmt= myConn.createStatement();
				ResultSet myRs=myStmt.executeQuery("select * from estudiante")) {
			//myConn = dataSource.getConnection();
			
			// Step 3:  Create a SQL statements
			//String sql = "select * from estudiante";
			//myStmt = myConn.createStatement();
			
			// Step 4:  Execute SQL query
			//myRs = myStmt.executeQuery(sql);
			
			// Step 5:  Process the result set
			while (myRs.next()) {
				String nombre = myRs.getString("nombre");
				String apellido = myRs.getString("apellido");
				String email = myRs.getString("email");
				String escuela = myRs.getString("escuela");
				out.println(nombre+" "+apellido+" "+email+" "+escuela);
				//out.println(apellido);
				
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	//}

}

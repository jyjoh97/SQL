package kr.go.goyang.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCustomerCtrl")
public class DeleteCustomerCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteCustomerCtrl() {
        super();

    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charaset=utf-8");
		
		
		String u_id = request.getParameter("u_id");
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		int cnt = 0;
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
			sql = "delete from customer where u_id=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, u_id);
			cnt = pstmt.executeUpdate();
			
			
			if(cnt>0) { 
				response.sendRedirect("GetCustomerListCtrl");
			} else {
				response.sendRedirect("index.jsp");
			}
		} catch(Exception e) {
			e.getStackTrace();
		} finally {
			try {
				
			} catch(Exception e) {
				e.getStackTrace();
			}
		}
	}

}

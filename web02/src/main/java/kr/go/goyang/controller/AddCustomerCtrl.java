package kr.go.goyang.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddCustomerCtrl")
public class AddCustomerCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddCustomerCtrl() {
        super();
        
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		String u_name = request.getParameter("u_name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		int cnt = 0;
		
		try { 
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
			sql = "insert into customer(u_name,u_id,u_pw,tel,email,address,birth) values(?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, u_name);
			pstmt.setString(2, u_id);
			pstmt.setString(3, u_pw);
			pstmt.setString(4, tel);
			pstmt.setString(5, email);
			pstmt.setString(6, address);
			pstmt.setString(7, birth);	
			cnt = pstmt.executeUpdate();
			
			if(cnt>0) { 
				response.sendRedirect("index.jsp");			
			} else{
				response.sendRedirect("addCustomer.jsp");
			}		
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

}

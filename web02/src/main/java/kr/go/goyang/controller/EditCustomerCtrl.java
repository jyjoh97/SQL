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


@WebServlet("/EditCustomerCtrl")
public class EditCustomerCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
    public EditCustomerCtrl() {
        super();

    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int cnt = 0;
		
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		String u_name = request.getParameter("u_name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		try {
			Class.forName("oracle.jdpc.dirver.OracleDriver");
			conn = DriverManager.getConnection("");
			sql = "update customer set u_name=?, u_pw?, tel=?, email=?, address=?, birth=? where u_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,"u_name");
			pstmt.setString(2,"u_pw");
			pstmt.setString(3,"tel");
			pstmt.setString(4,"email");
			pstmt.setString(5,"address");
			pstmt.setString(6,"birth");
			
			
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.getStackTrace();
		} finally {
			try { 
			
			} catch(Exception e) {
				e.getStackTrace();
			}
		} 
	}

}

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
		PrintWriter out = response.getWriter();
		
		int cnt = 0;
		
		String u_name = request.getParameter("u_name");
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth");
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";		
		try {
			
			
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
			sql = "update customer set u_name=?, u_pw=?, tel=?, email=?, address=?, birth=? where u_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, u_name);
			pstmt.setString(2, u_pw);
			pstmt.setString(3, tel);
			pstmt.setString(4, email);
			pstmt.setString(5, address);
			pstmt.setString(6, birth);
			pstmt.setString(7, u_id);
			
			
			cnt = pstmt.executeUpdate();
			if(cnt>=1){ //성공
				response.sendRedirect("GetCustomerListCtrl");
            } else {    //실패
                out.println("no");
            }

		} catch (Exception e) {
			e.getStackTrace();
		} finally {
			try { 
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				e.getStackTrace();
			}
		} 
	}

}

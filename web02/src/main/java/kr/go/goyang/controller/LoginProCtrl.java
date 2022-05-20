package kr.go.goyang.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginProCtrl")
public class LoginProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginProCtrl() {
        super();
        
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
			sql = "select * from customer where u_id=?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, u_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {  //회원아이디가 있는 경우
				String id = rs.getString("u_id");
				String pw = rs.getString("u_pw");
				if(u_pw.equals(pw) || u_pw==pw){ 	;//로그인 성공
					session.setAttribute("u_id", id);		
					session.setAttribute("u_pw", pw);			
					response.sendRedirect("index.jsp");
				} else {
					//비밀번호가 틀렸을 경우
					response.sendRedirect("login.jsp");
				}
			} else {
				//입력한 아이디가 회원가입이 되어 있지 않은 경우(customer 테이블에 해당 u_id가 존재하지 않음)
				response.sendRedirect("login.jsp");
			}
		} catch(Exception e) {
			e.getStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				e.getStackTrace();
			}
		}
	}

}

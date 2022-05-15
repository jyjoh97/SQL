package kr.go.goyang.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.goyang.model.CustomerVO;

@WebServlet("/GetCustomerCtrl")
public class GetCustomerCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetCustomerCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		String u_name = request.getParameter("u_name");
		String tel = request.getParameter("tel");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String birth = request.getParameter("birth");
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
			
			sql = "select * from customer where u_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "u_id");
			
			rs = pstmt.executeQuery();
			CustomerVO ctv = new CustomerVO();
			if(rs.next()) {
				ctv.setU_name(rs.getString("u_name"));
				ctv.setU_pw(rs.getString("u_pw"));
				ctv.setU_id(rs.getString("u_id"));
				ctv.setTel(rs.getString("tel"));				
				ctv.setEmail(rs.getString("email"));
				ctv.setAddress(rs.getString("address"));
				ctv.setBirth(rs.getDate("birth"));
				
			}
			request.setAttribute("ctv", ctv);  //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("customer.jsp");  //보내질 곳 지정
			view.forward(request, response);   //지정된 곳에 저장된 요청데이터를 전송하기
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

}

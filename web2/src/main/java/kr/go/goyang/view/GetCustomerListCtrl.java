package kr.go.goyang.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.go.goyang.model.CustomerVO;


@WebServlet("/GetCustomerListCtrl")
public class GetCustomerListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GetCustomerListCtrl() {
        super();
    }




	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
			sql = "select * from customer";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
	
			
			List<CustomerVO> ctv = new ArrayList<CustomerVO>();
		
			while(rs.next()) { 
				System.out.println("wdw");
				CustomerVO vo = new CustomerVO();
				vo.setU_name(rs.getString("u_name"));
				vo.setU_id(rs.getString("u_id"));
				vo.setU_pw(rs.getString("u_pw"));
				vo.setTel(rs.getString("tel"));
				vo.setEmail(rs.getString("email"));
				vo.setAddress(rs.getString("address"));
				vo.setBirth(rs.getDate("birth"));
				ctv.add(vo);
			}			
			request.setAttribute("ctv", ctv);	//요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("customerList.jsp");	//보내질 곳 지정
			view.forward(request, response);	//지정된 곳에 저장된 요청데이터를 전송하기
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

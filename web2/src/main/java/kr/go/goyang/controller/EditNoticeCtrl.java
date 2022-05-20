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


@WebServlet("/EditNoticeCtrl")
public class EditNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditNoticeCtrl() {
        super();
        
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		
		
		int nno = Integer.parseInt(request.getParameter("nno")); 
		String ntitle = request.getParameter("ntitle");
		String ncontent = request.getParameter("ncontent");
		String nimg = request.getParameter("nimg");
		String ndata = request.getParameter("ndata");
		String nname = request.getParameter("nname");
		System.out.println("12345");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		int cnt = 0;
	
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
			sql = "update notice set ntitle=?, ncontent=?, nimg=?, ndata=?, nname=? where nno=?";
			pstmt = conn.prepareStatement(sql);			
			
			
			pstmt.setString(1, ntitle); 
			pstmt.setString(2, ncontent);
			pstmt.setString(3, nimg);
			pstmt.setString(4, ndata);
			pstmt.setString(5, nname);		System.out.println("0");
			pstmt.setInt(6, nno);		System.out.println("2");
			cnt = pstmt.executeUpdate();	System.out.println("3");
			
			if(cnt>=1) {
				response.sendRedirect("GetNoticeListCtrl");
			}
			System.out.println("4");
		} catch(Exception e) {
			e.getStackTrace();
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

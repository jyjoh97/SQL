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

import kr.go.goyang.model.TourlistVO;


@WebServlet("/GetTourListCtrl")
public class GetTourListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public GetTourListCtrl() {
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
			sql = "select * from tourlist";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			//ArrayList형의 제네릭 해당 VO로 객체 선언 : 해당 테이블의 정보를 저장할 리스트
			List<TourlistVO> tlv = new ArrayList<TourlistVO>();
			
			while(rs.next()) { 
				//레코드(튜플) 데이터를 하나씩 불러와 해당 VO객체에 저장
				TourlistVO tou = new TourlistVO();
				tou.setTno(rs.getInt("tno"));
				tou.setTid(rs.getString("tid"));
				tou.setTname(rs.getString("tname"));
				tou.setTtype(rs.getString("ttype"));
				tou.setTcontent(rs.getString("tcontent"));
				tou.setTimg1(rs.getString("timg1"));
				tou.setTimg2(rs.getString("timg2"));
				tou.setTimg3(rs.getString("timg3"));
				tou.setTimg4(rs.getString("timg4"));
				//저장된 객체(레코드 데이터)를 리스트에 추가
				tlv.add(tou);
			}
			request.setAttribute("tlv", tlv);//요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("tourlist.jsp");//보내질 곳을 지정하기
			view.forward(request, response);//지정된 곳에 저장된 요청 데이터를 전송하기
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

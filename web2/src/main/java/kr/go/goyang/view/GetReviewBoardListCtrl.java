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

import kr.go.goyang.model.ReviewBoardVO;

@WebServlet("/GetReviewBoardListCtrl")
public class GetReviewBoardListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetReviewBoardListCtrl() {
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
			sql = "select * from reviewboard";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			//ArrayList형의 제네릭 해당VO로 객체 선언 : 해당 테이블의 정보를 저장할 리스트
			List<ReviewBoardVO> rbv = new ArrayList<ReviewBoardVO>();
			while(rs.next()) {
				//레코드(튜플) 데이터를 하나씩 불러와 해당VO 객체에 저장
				ReviewBoardVO vo = new ReviewBoardVO();
				vo.setRno(rs.getInt("rno"));
				vo.setRtitle(rs.getNString("rtitle"));
				vo.setRplace(rs.getString("rplace"));
				vo.setRtodate(rs.getDate("rtodate"));
				vo.setRfromdate(rs.getDate("rfromdate"));
				vo.setRcontent(rs.getString("rcontent"));
				vo.setRimg1(rs.getString("rimg1"));
				vo.setRimg2(rs.getString("rimg2"));
				vo.setRid(rs.getString("rid"));
				vo.setRpw(rs.getString("rpw"));
				vo.setRdate(rs.getDate("rdate"));
				vo.setRcnt(rs.getInt("rcnt"));
				//저장된 객체(레코드 데이터)를 리스트에 추가
				rbv.add(vo);
			}
			request.setAttribute("rbv", rbv); //요청 저장소에 담기
			RequestDispatcher view = request.getRequestDispatcher("reviewboardList.jsp"); //보내질 곳을 지정하기
			view.forward(request, response);//지정된 곳에 저장된 요청 데이터를 전송하기
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
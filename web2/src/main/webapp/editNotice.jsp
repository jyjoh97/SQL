<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지글 수정</title>
   <style>
      .wrap ul li { list-style: none;}
   </style>
</head>

<body>
   <div class="wrap">
      <form action="EditNoticeCtrl" method="post">
         <table>
            <tbody>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String nno =  request.getParameter("nno");
	try{
	   Class.forName("oracle.jdbc.OracleDriver");
	   conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	   sql = "select * from notice where nno = ?";
	   pstmt = conn.prepareStatement(sql);
	   pstmt.setString(1, nno);
	   rs = pstmt.executeQuery();
	   while(rs.next()){
%>
		      <tr>
		       	 <td>글 제목 : </td>
		         <td><input type="text" name="ntitle" value="<%=rs.getString("ntitle") %>"></td>
		      </tr>   
		      <tr>
		         <td>글 내용 : </td>
		         <td><input type="text" name="ncontent" value="<%=rs.getString("ncontent") %>"></td>
		      </tr>
		      <tr>
		         <td>첨부 이미지 : </td>
		         <td><input type="text" name="nimg" value="<%=rs.getString("nimg") %>"></td>
		      </tr>
		      <tr>
		         <td>첨부 자료 : </td>
		         <td><input type="tel" name="ndata" value="<%=rs.getString("ndata") %>"></td>
		      </tr>
		      <tr>
		         <td>작성자 : </td>
		         <td><input type="text" name="nname" value="<%=rs.getString("nname") %>"></td>
		      </tr>
		      <tr>
		         <td>글 번호 : </td>
		         <td><input type="text" name="nno" value="<%=rs.getInt("nno") %>" readonly></td>
		      </tr>
<%
	   }
	}catch(Exception e){
	   e.printStackTrace();
	} finally{
	   try{
	      rs.close();
	      pstmt.close();
	      conn.close();
	   }catch(Exception e){
	   e.printStackTrace();
	   }
	   
	}
%>
         
              
            </tbody>
         </table>
         	<input type="submit" value="수정">
      </form>   
   </div>   
</body>
</html>
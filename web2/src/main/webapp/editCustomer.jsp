<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 수정</title>
   <style>
      .wrap ul li { list-style: none;}
   </style>
</head>

<body>
   <div class="wrap">
      <form action="EditCustomerCtrl" method="post">
         <table>
            <tbody>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String eid =  request.getParameter("eid");
	try{
	   Class.forName("oracle.jdbc.OracleDriver");
	   conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
	   sql = "select * from customer where u_id = ?";
	   pstmt = conn.prepareStatement(sql);
	   pstmt.setString(1, eid);
	   rs = pstmt.executeQuery();
	   while(rs.next()){
%>
       <tr>
                <td>이름 : </td>
                  <td><input type="text" name="u_name" value="<%=rs.getString("u_name") %>"></td>
               </tr>   
               <tr>
                  <td>아이디 : </td>
                  <td><input type="text" name="u_id" value="<%=rs.getString("u_id") %>" readonly></td>
               </tr>
               <tr>
                  <td>비밀번호 : </td>
                  <td><input type="text" name="u_pw" value="<%=rs.getString("u_pw") %>"></td>
               </tr>
               <tr>
                  <td>전화번호 : </td>
                  <td><input type="tel" name="tel" value="<%=rs.getString("tel") %>"></td>
               </tr>
               <tr>
                  <td>이메일 : </td>
                  <td><input type="text" name="email" value="<%=rs.getString("email") %>"></td>
               </tr>
               <tr>
                  <td>주소 : </td>
                  <td><input type="text" name="address" value="<%=rs.getString("address") %>"></td>
               </tr>
               <tr>
                  <td>생년월일 : </td>
                  <td><input type="date" name="birth" value="<%=rs.getDate("birth") %>"></td>
               </tr>
               <tr>
                  <td><input type="submit" value="수정"></td>
                  <td><input type="reset" value="취소"></td>
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
      </form>   
   </div>   
</body>
</html>
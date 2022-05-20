<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

	<style>
		
	</style>

</head>

<body>
	<div class="container">
		<header class="hd">
			<%@ include file="hd.jsp" %>
		</header>
	
		<div class="content" class="panel_body">
		<h2>회원가입</h2>
		<form action="AddCustomerCtrl" method="post">
			<table class="table">
				<tbody>
					<tr>
						<td class="necessary">이름 : </td>
						<td><input type="text" name="u_name" id="u_name" required></td>
					</tr>
					<tr>
						<td class="necessary">아이디 : </td>
						<td><input type="text" name="u_id" id="u_id"  required >
						</td>
					</tr>
					<tr>
						<td class="necessary">비밀번호 : </td>
						<td><input type="text" name="u_pw" id="u_pw" required></td>
					</tr>
					<tr>
						<td class="necessary">비밀번호 확인 : </td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td class="">전화번호 : </td>
						<td><input type="tel" name="tel" id="tel" required></td>
					</tr>
					<tr>
						<td class="">이메일 : </td>
						<td><input type="email" name="email" id="email" required></td>	
					</tr>	
					<tr>
						<td class="">주소 : </td>
						<td><input type="text" name="address" id="address" required></td>
					</tr>
					<tr>
						<td class="">생년월일</td>
						<td><input type="date" name="birth" id="birth"></td>
					</tr>
				</tbody>
			</table>
	
			<br>
			<input type="submit" value="가입"/> <input type="button" value="취소">
		</form>
	</div>	
		
	
		<footer class="ft">
			<%@ include file="ft.jsp" %>
		</footer>
	</div>
</body>
</html>
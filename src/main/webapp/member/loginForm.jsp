<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- 본문 시작 loginForm.jsp -->
<h3> 로 그 인 </h3>
																		 	      <!-- myscript.js -->
<form name="loginfrm" id="loginfrm" method="post" action="loginProc.jsp" onsubmit="return loginCheck()">
<table class="table">
	<tr>
		<td>
			<input type="text" name="id" id="id" placeholder="아이디" maxlength="10" required>
		</td>
		<td rowspan="2">
		    <!-- type=image는 기본속성이 submit -->
		    <input type="image" src="../images/bt_login.gif">
		</td>
	</tr>
	<tr>
		<td>
		    <input type="password" name="passwd" id="passwd" placeholder="비밀번호" maxlength="10" required>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		    <label><input type="checkbox" name="c_id"> ID저장</label>
		    &nbsp;&nbsp;&nbsp;
		    <a href="agreement.jsp">회원가입</a>
		    &nbsp;&nbsp;&nbsp;
		    <a href="findID.jsp">아이디/비밀번호찾기</a>			    
		</td>
	</tr>
</table>
</form>

<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>

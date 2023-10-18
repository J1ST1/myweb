<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- 본문 시작 bbsDel.jsp -->
<!-- 글번호(bbsno)와 비밀번호(passwd)가 일치하면 삭제 -->
<h3> 글 삭제 </h3>
<button type="button" class="btn btn-default btn-lg btn-block" onclick="location.href = 'bbsList.jsp'">
글 목록</button><br>
<%
	int bbsno = Integer.parseInt(request.getParameter("bbsno"));
%>												<!-- myscript.js -->
	<form method="post" action="bbsDelPorc.jsp" onsubmit="return pwCheck()">
		<input type="hidden" name="bbsno" value="<%=bbsno%>">
		<table class="table">
		<tr>
			<th class="th">비밀번호</th>
			<td><input type="password" class="form-control" name="passwd" id="passwd" required></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="삭제" class="btn btn-default">
			</td>
		</table>
	</form>


<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>

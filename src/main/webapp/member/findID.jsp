<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- 본문 시작 findID.jsp -->
<h3> 아이디 / 비번 찾기 </h3>
<form action="findIDProc.jsp" method="post" onsubmit="return findIDCheck()">
<table class="table">
	<tr>
	   <th>이름</th>
	   <td>
	      <input type="text" name="mname" id="mname" placeholder="이름" maxlength="20" class="form-control" placeholder="등록한 이름" required>
	   </td>
	</tr>
	<tr>
	   <th>이메일</th>
	   <td>
	      <input type="email" name="email" id="email" placeholder="이메일" class="form-control" placeholder="등록한 이메일" required>
	   </td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="아이디/비번찾기"  class="btn btn-primary">
			<input type="reset"  value="취소"  class="btn btn-primary">
		</td>
	</tr>
	</table>
</form>

<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- 본문 시작 noticeForm.jsp -->

<h3> 공지사항 작성 </h3>
<button type="button" class="btn btn-default btn-lg btn-block" onclick="location.href = 'noticeList.jsp'">
공지사항 목록</button><br>
																  		   <!-- myscript.js에 함수 작성함 -->
<form name="noticefrm" id="noticefrm" method="post" action="noticeIns.jsp" onsubmit="return noticeCheck()">
	<table class="table">
	<tr>
	   <th class="th">제목</th>
	   <td><input type="text" name="subject" id="subject" class="form-control" maxlength="100" required></td>
	</tr>
	<tr>
	   <th class="th">내용</th>
	   <td><textarea rows="5"  class="form-control" name="content" id="content"></textarea></td>
	</tr>
	<tr>
	   <th class="th">비밀번호</th>
	   <td><input type="password" name="passwd" id="passwd" class="form-control" maxlength="10" required></td>
	</tr>
	<tr>
	    <td colspan="2" align="center" >
	       <input type="submit" value="새글쓰기" class="btn btn-default">
	       <input type="reset"  value="취소" class="btn btn-default">
	    </td>
	</table>
</form>

<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>

<!-- 본문 시작 noticeList.jsp -->

<h3> 공지사항 목록 </h3>
<button type="button" class="btn btn-default btn-lg btn-block" onclick="location.href = 'noticeForm.jsp'">
공지사항 작성</button><br>

	<table class="table table-bordered">
	<thead>
		<tr>
		<th class="th">제목</th>
		<th class="th">조회수</th>
		<th class="th">작성일</th>
	</tr>
	</thead>
	<tbody>
	
	
	
	</tbody>
	</table>

<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>

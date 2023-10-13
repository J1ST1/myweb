<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 bbsList.jsp -->
<h3> 글 목록 </h3>
<button type="button" class="btn btn-default btn-lg btn-block" onclick="location.href = 'bbsForm.jsp'">
글쓰기</button>

	<table class="table table-bordered">
		<tr>
		<th>번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>조회수</th>
		<th>작성일</th>
		<th>들여쓰기</th>
	</tr>
<%
	ArrayList<BbsDTO> list =  dao.list();
	if(list == null) {
		out.println("<tr>");
		out.println("	<td colspan='5'>글 없음</td>");
		out.println("</tr>");
	}else{
		for(int i=0; i<list.size(); i++) {
			dto = list.get(i); //한 줄 가져오기
%>
			<tr>
				<td><%=dto.getBbsno()%></td>
				<td><%=dto.getWname() %></td>
				<td><%=dto.getSubject()%></td>
				<td><%=dto.getReadcnt()%></td>
				<td><%=dto.getRegdt().substring(0, 10)%></td>
				<td><%=dto.getIndent()%></td>
			</tr>

<%
		}//for end
	}//if end
%>	
	</table>

<!-- 본문 끝 -->
<%@ include file="../footer.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 template.jsp -->
<h3> 게시판 상세보기 </h3>

<div class="btn-group btn-group-justified">
  <a href="bbsForm.jsp" class="btn btn-default" >글쓰기</a>
  <a href="bbsList.jsp" class="btn btn-default">글목록</a>
</div>
<br>
<%
	int bbsno=Integer.parseInt(request.getParameter("bbsno"));
	dto = dao.read(bbsno);
	if(dto==null){
		out.println("해당 글 없음");
	}else{
		
		dao.incrementCnt(bbsno); //조회수 증가  
%>
		<table class="table">
		<tr>
			<th class="th">제목</th>
			<td><%=dto.getSubject() %></td>
		</tr>
		<tr>
			<th class="th">내용</th>
			<td>
<% 
				//특수문자 및 엔터를 <br>태그로 치환하기
				String content = dto.getContent();
				content = Utility.convertChar(content);
				out.print(content);
%>
			</td>
		</tr>
		<tr>
			<th class="th">조회수</th>
			<td><%=dto.getReadcnt() %></td>
		</tr>
		<tr>
			<th class="th">작성자</th>
			<td><%=dto.getWname() %></td>
		</tr>
		<tr>
			<th class="th">작성일</th>
			<td><%=dto.getRegdt() %></td>
		</tr>
		<tr>
			<th class="th">IP</th>
			<td><%=dto.getIp() %></td>
		</tr>
		</table>
		<br>
		<div class="btn-group">
		  <button type="button" class="btn btn-default" onclick="location.href='bbsReply.jsp?bbsno=<%=bbsno%>'">답변쓰기</button>
		  <button type="button" class="btn btn-default" onclick="location.href='bbsUpdate.jsp?bbsno=<%=bbsno%>'">수정</button>
		  <button type="button" class="btn btn-default" onclick="location.href='bbsDel.jsp?bbsno=<%=bbsno%>'">삭제</button>
		</div>
		
<%
	}//if end
%>
<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>

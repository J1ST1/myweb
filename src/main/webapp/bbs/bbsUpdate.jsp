<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 bbsUpdate.jsp -->
<!-- 글번호가 일치하는 행을 가져와서, 수정폼에 출력하기 -->
<h3> 게시판 수정 </h3>
<div class="btn-group btn-group-justified">
  <a href="bbsForm.jsp" class="btn btn-default" >글쓰기</a>
  <a href="bbsList.jsp" class="btn btn-default">글목록</a>
</div>
<br>
<%
	int bbsno=Integer.parseInt(request.getParameter("bbsno"));
	dto = dao.read(bbsno); //글번호가 일치하는 행을 가져오기  
	
	if(dto==null) {
		out.println("해당 글 없음");
	}else{
%>

 		<form name="bbsfrm" id="bbsfrm" method="post" action="bbsUpdateProc.jsp" onsubmit="return bbsCheck()">
		<input type="hidden" name="bbsno" value="<%=bbsno%>">
			<table class="table">
			<tr>
			   <th class="danger th">작성자</th>
			   <td><input type="text" name="wname" id="wname" class="form-control" value="<%=dto.getWname() %>" maxlength="20" required></td> 
			</tr>
			<tr>
			   <th class="danger th">제목</th>
			   <td><input type="text" name="subject" id="subject" class="form-control" value="<%=dto.getSubject()%>" maxlength="100" required></td>
			</tr>
			<tr>
			   <th class="danger th">내용</th>
			   <td><textarea rows="5"  class="form-control" name="content" id="content"></textarea></td>
			</tr>
			<tr>
			   <th class="danger th">비밀번호</th>
			   <td><input type="password" name="passwd" id="passwd" value="<%=dto.getPasswd()%>" class="form-control" maxlength="10" required></td>
			</tr>
			<tr>
			    <td colspan="2" align="center" >
			       <input type="submit" value="수정" class="btn btn-default">
			       <input type="reset"  value="취소" class="btn btn-default">
			    </td>
			</table>
		</form>
<%	
	}//if end
%>
<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>

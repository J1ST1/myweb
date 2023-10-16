<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 template.jsp -->
<h3> 성적 수정 결과 </h3>
<div class="btn-group btn-group-justified">
  <a href="bbsForm.jsp" class="btn btn-default" >글쓰기</a>
  <a href="bbsList.jsp" class="btn btn-default">글목록</a>
</div>
<br>
<%

	//사용자가 입력한 정보 가져와서 변수에 담기
	String wname = request.getParameter("wname").trim();
	String subject = request.getParameter("subject").trim();
	String content = request.getParameter("content").trim();
	String passwd = request.getParameter("passwd").trim();
	String ip = request.getParameter("ip").trim();

	//dto객체에 담기
	dto.setWname(wname);
	dto.setSubject(subject);
	dto.setContent(content);
	dto.setPasswd(passwd);
	dto.setIp(ip);


	int cnt=dao.updateproc(dto);
	if(cnt==0){
		out.println("<p>게시글 수정 실패했습니다</p>");
		out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
	}else{
		out.println("<script>");
		out.println("	alert('게시글이 수정되었습니다');");
		out.println("	location.href='bbsList.jsp';");//목록페이지 이동
		out.println("</script>");
	}//if end

%>
<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 bbsReplyProc.jsp -->
<%
//사용자가 입력한 정보 가져와서 변수에 담기
	int bbsno = Integer.parseInt(request.getParameter("bbsno"));
	String wname = request.getParameter("wname").trim();
	String subject = request.getParameter("subject").trim();
	String content = request.getParameter("content").trim();
	String passwd = request.getParameter("passwd").trim();
	String ip = request.getRemoteAddr();
	

	//dto객체에 담기
	dto.setBbsno(bbsno);
	dto.setWname(wname);
	dto.setSubject(subject);
	dto.setContent(content);
	dto.setPasswd(passwd);
	dto.setIp(ip);


	int cnt=dao.reply(dto);
	if(cnt==0){
		out.println("<p>답변 쓰기 실패</p>");
		out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
	}else{
		out.println("<script>");
		out.println("	alert('답글이 추가되었습니다');");
		out.println("	location.href='bbsList.jsp';");//목록페이지 이동
		out.println("</script>");
	}//if end


%>
<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>

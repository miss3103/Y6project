<%@page import="edu.kb.ex.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String action = request.getParameter("action");
	
		if(action.equals("login")){
			MemberDto dto = m.getDB(v.getId());
			if(vo != null){
				if(vo.getId().equals(v.getId())){
					if(vo.getPwd().equals(v.getPwd())){
						out.println("로그인 되었습니다.");
					}
					else{
						out.println("비밀번호가 틀렸습니다.");
					}
				}
			}
			else{
				out.println("아이디가 틀렸습니다.");
			}
		}
		else if(action.equals("register")){
			int cnt = m.insertDB(v);
			if(cnt > 0){
				out.println("회원가입이 완료되었습니다.");
			}
			else{
				out.println("회원가입에 실패하였습니다.");
			}
		}
	%>
</body>
</html>
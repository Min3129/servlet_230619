<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML 주석: 소스보기에서 보인다 -->
	<%-- JSP 주석: 소스보기에서 보이지 않는다 --%>
	
<%
	// 자바의 주석
	// 스크립틀릿(Scriptlet) - 지금만 배움 > main 함수 같은 느낌
	int sum =0;
	for(int i=0; i <=10; i++){
		sum += i;
	}	
%>
<%-- <% A %> : expression 잠깐 짧게 자바코드를 표시할때 --%>
<b>합계: <%= sum %></b> 
<b>합계: </b> 
<input type="text" value="<%= sum %>">
<br>
<%! 
	// 선언문 - 클래스 같은 느낌
	
	// field
	private int num=100;

	// method
	public String getHelloWorld(){
		return "Hello world";
	}
%>
<%= getHelloWorld() %>
<br>
<%= num + 200 %> <%-- 산술연산도 가능 --%>


</body>
</html>
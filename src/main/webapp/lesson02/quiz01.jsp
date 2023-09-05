<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 1. 1부터 n까지의 합께를 구하는 함수 --%>	
	<%!
		//1. 합계
		public int getSum(int n){
		int sum=0;
		for(int i=1; i<=n;i++){
			sum+=i;
		}
		return sum;
	}
	%>
	
	<%-- 2. 점수들의 평균 구하기 --%>
	<%
		int sum=0;
		double avg=0;
		int[] scores = {80, 90, 100, 95, 80};
		for(int i=0; i<scores.length; i++){
			sum += scores[i];
		}
		avg= sum/scores.length;
	%>
	
	<%-- 3.채점 결과 --%>
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score=0;
	for(int i=0; i<scoreList.size();i++){
		if(scoreList.get(i).equals("O")){
			score +=100/scoreList.size();
		}
	}
	%>
	
	<%-- 4.나이구하기 --%>
	<%
		String birthDay = "20010820"; // 2001 index 0 ~ 3
		String year =  birthDay.substring(0,4);
		int age = 2023 - Integer.valueOf(year)+1;
		
		// 스크립틀릿에서 확인해보고 싶을때
		/* out.print(year); */
	%>
	
	<h2>1부터 50까지의 합은 <%= getSum(50) %>입니다. </h2>
		
	<h2>평균 점수는 <%= avg %>입니다.</h2>
	
	<h2>채점 결과는 <%= score %>점 입니다.</h2>
	
	<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2>
	
</body>
</html>
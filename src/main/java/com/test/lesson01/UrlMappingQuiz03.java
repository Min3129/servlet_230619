package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz03")
public class UrlMappingQuiz03 extends HttpServlet {
	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		//한글 깨짐 방지 + HTML
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		//기사 입력 시간
		Date now = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		//태그 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>단독뉴스</title></head><body>");
		out.print("<h1>[단독] 고양이가 야옹해</h1>");
		out.print("<p>기사 입력 시간: " +sdf.format(now)+"</p><hr>끝");
		out.print("</body></html>");
		
	}

}
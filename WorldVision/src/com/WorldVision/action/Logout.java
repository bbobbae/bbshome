package com.WorldVision.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=UTF-8");
		
		//로그아웃 클릭시 화면 이동전에 alert 경고창 띄우기
		PrintWriter out = response.getWriter();		 
		out.println("<script>alert('로그아웃 되었습니다.'); location.href=\"/WorldVision/worldVision.jb?type=index\";</script>");
		out.flush();		
		
		//세션 삭제
		HttpSession session = request.getSession(false);	//지금 세션이 생성되었나욤? 생성되었으면 널값 안나옴 (확인용)
		if(session!=null) {
			session.invalidate();
		}	
		
	}

}

package com.WorldVision.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.WorldVision.dto.Member;

public class SupportPart implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Member loginUserInfo = (Member)session.getAttribute("loginUserInfo");
	
		if(loginUserInfo == null) { //로그인이 안된 경우
			response.sendRedirect("/WorldVision/join/login.jsp");
		}else {	//로그인된 경우
			response.sendRedirect("/WorldVision/mainSpt/supportPart.jsp");
		}
	}

}

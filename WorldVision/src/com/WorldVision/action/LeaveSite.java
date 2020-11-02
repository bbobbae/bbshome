package com.WorldVision.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.WorldVision.dao.MemberDAO;
import com.WorldVision.dto.Member;

public class LeaveSite implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//아이디 비밀번호 값 받아오기x
		//회원삭제 메서드 만들기
		//탈퇴 확인 창 만들어주기
		//엘럿 띄어주기 탈퇴되었습니다.
		HttpSession session = request.getSession();
		Member myInfo = (Member)session.getAttribute("myInfo");
		
		if(myInfo == null) { //로그인이 안된 경우
			System.out.println("로그인 안됨.");
			String path ="/WorldVision/worldVision.jb?type=loginForm";
			request.getRequestDispatcher(path).forward(request, response);
		}else {	//로그인된 경우
			System.out.println("로그인 됨");
			
			//로그인한 고객의 정보를 출력합니다.
			String id = myInfo.getId();
			System.out.println(id);
			
			MemberDAO mControl = MemberDAO.getInstance();	
			mControl.deleteMember(id);
			
			session.invalidate();
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();	
			out.println("<script>alert('그동안 월드비전을 이용해 주셔서 감사합니다.');location.href=\"/WorldVision/worldVision.jb?type=index\";</script>");
			out.flush();
			
		}
		
		
		
		
		
		
		
	}

}

package com.WorldVision.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.WorldVision.dao.MemberDAO;
import com.WorldVision.dto.Member;

public class MyPageForm implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.sendRedirect("/WorldVision/join/myPage.jsp");
		
		
		
		HttpSession session = request.getSession();
		Member loginUserInfo = (Member)session.getAttribute("loginUserInfo");
	
		if(loginUserInfo == null) { //로그인이 안된 경우
			String path ="/WorldVision/worldVision.jb?type=loginForm";
			request.getRequestDispatcher(path).forward(request, response);
		}else {	//로그인된 경우
			//로그인한 고객의 정보를 출력합니다.
			String id = loginUserInfo.getId();
			System.out.println(id);
			
			MemberDAO mControl = MemberDAO.getInstance();
			Member mResult = mControl.selectMember(id);
			
			//로그인된 비밀번호값 가져오기
			String pwd = request.getParameter("chkPasswd");
			//새로 입력한 비밀번호값 가져오기
			String chkPwd2 = mResult.getPwd();			
			
			System.out.println("로그인된 비밀번호값"+pwd);
			System.out.println("새로 입력한 비밀번호값"+chkPwd2);
			
			//로그인된 비밀번호와 입력한 비밀번호가 같은지 확인
			if(pwd.equals(chkPwd2)) {
				System.out.println("비밀번호 일치");
				response.sendRedirect("/WorldVision/join/myInfo.jsp");
				session.setAttribute("myInfo", mResult);
				
			}else if(!pwd.equals(chkPwd2)) {
				System.out.println("비밀번호 불일치");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();	
				out.println("<script>alert('비밀번호가 일치하지 않습니다.');history.go(-1);</script>");
				out.flush();
			}
		
		}
	}

}

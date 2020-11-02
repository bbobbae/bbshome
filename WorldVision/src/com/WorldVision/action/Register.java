package com.WorldVision.action;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.WorldVision.dao.MemberDAO;
import com.WorldVision.dto.Member;


public class Register implements Action{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//DB에 담을 객체를 생성합니다.		
		Member member = new Member();			
		
		
		String id = request.getParameter("userId");
		String pwd = request.getParameter("userPwd");
		String name = request.getParameter("userName");
		String birth = request.getParameter("userBirthday");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("userNum");
		String email1 = request.getParameter("userEmail1");
		String email2 = request.getParameter("userEmail2");
		String email = email1.concat("@").concat(email2);
	
		//객체 담아줍니다.
		member.setId(id);
		member.setPwd(pwd);
		member.setName(name);
		member.setBirth(birth);
		member.setGender(gender);
		member.setPhone(phone);
		member.setEmail1(email1.concat(email2));
		member.setEmail2(email2);
		member.setEmail(email);
		
		
		MemberDAO mControl = MemberDAO.getInstance();
		mControl.insertMember(member);
	
		//가입자 id 세션에 담아 다음페이지에서 출력
		HttpSession session = request.getSession();
		session.setAttribute("conFirmID",member);
		
		//페이지 이동합니다.
		response.sendRedirect("/WorldVision/join/confirm.jsp");
			
	
	}

}

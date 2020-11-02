package com.WorldVision.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.WorldVision.dao.MemberDAO;
import com.WorldVision.dto.Member;

public class MyPage implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//DB에 담을 객체를 생성합니다.
		String path = "/worldVision.jb?type=index";
		Member member = new Member();
	
		//파라미터로 넘겨온 값을 불러옵니다.
		String id = request.getParameter("userId");
		String pwd = request.getParameter("newPwd");
		String name = request.getParameter("userName");
		String birth = request.getParameter("userBirthday");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("userNum");
		String email1 = request.getParameter("userEmail1");
		String email2 = request.getParameter("userEmail2");
			
		//객체 담아줍니다.
		member.setId(id);
		member.setPwd(pwd);
		member.setName(name);
		member.setBirth(birth);
		member.setGender(gender);
		member.setPhone(phone);
		member.setEmail1(email1);
		member.setEmail2(email2);
		System.out.println(member);
		MemberDAO mControl = MemberDAO.getInstance();
		mControl.updateMember(member);
		
		
		
		//페이지 이동합니다.
		request.getRequestDispatcher(path).forward(request, response);
	}

}

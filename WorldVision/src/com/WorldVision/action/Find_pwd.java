package com.WorldVision.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.WorldVision.dao.MemberDAO;
import com.WorldVision.dto.Member;

public class Find_pwd implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//겟 파라미터로 비밀번호 데이터 받아오기
		//디비에서 해당 정보로 비밀번호 검색해서 데이터 받아오는 메소드 하나만들기
		//겟파라미터 데이터와 dao데이터 가져와서 비교하기
		//경로 넘겨주기
		
		//핸드폰으로찾기
		String id = request.getParameter("phoneId1");
		String idName = request.getParameter("userName1");
		String phone = request.getParameter("phoneNum1");
		
		String emailId = request.getParameter("phoneId2");
		String emailName = request.getParameter("phoneName2");
		String email = request.getParameter("phoneNum2");
		
			
		MemberDAO mControl = MemberDAO.getInstance();
		Member mResult = mControl.find_id_Member(phone);	//휴대폰번호로 비밀번호찾기
		Member mResult2 = mControl.find_id_Member2(email);	//이메일주소로 비밀번호찾기	
	
		
		
	    if(mResult!=null) {
	    	if(id.equals(mResult.getId()) &&idName.equals(mResult.getName()) && phone.equals(mResult.getPhone())) {
				System.out.println("폰으로 비밀번호 찾기 : 아이디 이름과 전화번호 셋 다 일치");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();					
				out.println("<script>alert('[월드비전 휴대폰 전용 발신]\\n입력하신 휴대폰 번호로 임시 비밀번호가 발송되었습니다.');location.href=\"/WorldVision/join/login.jsp\";</script>");
				out.flush();
			}else{
				System.out.println("폰으로 비밀번호 찾기 : 아이디,이름, 전화번호 중 하나라도 틀림");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();	
				out.println("<script>alert('입력하신 정보가 올바르지 않습니다.\\n고객님의 정보를 다시 한번 확인해 주세요.');location.href=\"/WorldVision/join/find_pwd.jsp\";</script>");
				out.flush();
			}
	    }
	    else if(mResult2!=null) {
	    	if(emailId.equals(mResult2.getId()) && emailName.equals(mResult2.getName()) && email.equals(mResult2.getEmail())) {
				System.out.println("이메일로 비밀번호 찾기 : 아이디, 이름, 이메일 셋 다 일치");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();	
				out.println("<script>alert('[월드비전 이메일 전용 발신]\\n입력하신 이메일 주소로 임시 비밀번호가 발송되었습니다.');location.href=\"/WorldVision/join/login.jsp\";</script>");
				out.flush();
			}else{
				System.out.println("이메일로 비밀번호 찾기 :아이디, 이름, 전화번호 셋중 하나라도 틀림");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();	
				out.println("<script>alert('입력하신 정보가 올바르지 않습니다.\\n고객님의 정보를 다시 한번 확인해 주세요.');location.href=\"/WorldVision/join/find_pwd.jsp\";</script>");
				out.flush();
			}
	    }else if(mResult2==null && mResult2==null) {
	    	System.out.println("디비값 존재하지않음");
	    	response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();	
			out.println("<script>alert('입력하신 정보의 계정은 존재하지 않습니다.\\n입력하신 정보를 다시 한번 확인해주세요.');location.href=\"/WorldVision/join/find_pwd.jsp\";</script>");
			out.flush();
	    }
	    
		
		
	}

}

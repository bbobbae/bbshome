package com.WorldVision.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.WorldVision.dao.MemberDAO;
import com.WorldVision.dto.Member;

public class Find_id implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//겟 파라미터로 아이디찾기 데이터 받아오기
		//디비에서 해당 정보로 아이디 검색해서 데이터 받아오는 메소드 하나만들기
		//겟파라미터 데이터와 dao데이터 가져와서 비교하기
		//경로 넘겨주기
		
//		핸드폰으로찾기
		String idName = request.getParameter("phoneName1");
		String phone = request.getParameter("phoneNum1");
		String emailName = request.getParameter("phoneName2");
		String email = request.getParameter("phoneNum2");
		System.out.println(emailName);
		System.out.println(email);
		
		MemberDAO mControl = MemberDAO.getInstance();
		Member mResult = mControl.find_id_Member(phone);	//휴대폰번호로 아이디찾기
		Member mResult2 = mControl.find_id_Member2(email);	//이메일주소로 아이디찾기	
		request.setAttribute("mResult", mResult);
		request.setAttribute("mResult2", mResult2);
		
	    if(mResult!=null) {
	    	if(idName.equals(mResult.getName()) && phone.equals(mResult.getPhone())) {
				System.out.println("아이디 찾기 : 이름과 전화번호 둘 다 일치");					
				String path = "/join/myId.jsp";
				request.getRequestDispatcher(path).forward(request, response);
			}else{
				System.out.println("아이디 찾기 : 이름과 전화번호/이메일 둘중 하나만 일치");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();	
				out.println("<script>alert('입력하신 정보가 올바르지 않습니다.\\고객님의 이름 또는 휴대폰 번호를 다시 한번 확인해 주세요.');location.href=\"/WorldVision/join/find_id.jsp\";</script>");
				out.flush();
			}
	    }else if(mResult2!=null) {
	    	if(emailName.equals(mResult2.getName()) && email.equals(mResult2.getEmail())) {
				System.out.println("아이디 찾기 : 이름과 이메일 둘 다 일치");						
				String path = "/join/myId.jsp";
				request.getRequestDispatcher(path).forward(request, response);
			}else{
				System.out.println("아이디 찾기 : 이름과 전화번호/이메일 둘중 하나만 일치");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();	
				out.println("<script>alert('입력하신 정보가 올바르지 않습니다.\\n고객님의 이름 또는 이메일 주소를 다시 한번 확인해 주세요.');location.href=\"/WorldVision/join/find_id.jsp\";</script>");
				out.flush();
			}
	    }else if(mResult2==null && mResult2==null) {
	    	System.out.println("디비값 존재하지않음");
	    	response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();	
			out.println("<script>alert('입력하신 정보의 계정은 존재하지 않습니다.\\n입력하신 정보를 다시 한번 확인해주세요.');location.href=\"/WorldVision/join/find_id.jsp\";</script>");
			out.flush();
	    }
	    
		
		
		
		
		
	}

}

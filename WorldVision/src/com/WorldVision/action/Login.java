package com.WorldVision.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.WorldVision.dao.MemberDAO;
import com.WorldVision.dto.Member;


public class Login implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();
		
		//파라미터로 넘겨온 값을 불러옵니다.
		String id = request.getParameter("userId");
		String pwd = request.getParameter("userPwd");
	
		//값을 출력합니다.
		System.out.println(id);
		System.out.println(pwd);
		
		MemberDAO mControl = MemberDAO.getInstance();	
		Member mResult = mControl.selectMember(id);
		
		
		
		//DB에 데이터가 존재할 경우
		if(mResult!=null) {		
			
			if(mResult.getPwd().equals(pwd)) {				//비밀번호까지 일치할경우
				String lockStatus = mResult.getLockStatus();
				System.out.println("계정상태" + lockStatus);		//계정상태 확인
				
				mControl.updateClearLoginFailCount(id);
				
				if(mResult.getLockStatus().equals("N")) {		//계정잠기지 않았을 경우
					
					String path ="/worldVision.jb?type=index";//서블릿으로 돌림
					session.removeAttribute("id");					
					
					session.setAttribute("loginUserInfo", mResult);		
					request.getRequestDispatcher(path).forward(request, response);				
					
				}else {	
					//계정 잠겼을 경우
					boolean unlock = mControl.selectLockStatus(id);
					System.out.println("계정잠금 해제상태"+unlock);		
				
					if(unlock) {
						//계정 잠겻지만 제한시간 지났을 경우
						mControl.updateClearLoginFailCount(id);
					
						String path="/worldVision.jb?type=index";	//서블릿으로 돌림
						session.removeAttribute("id");
						session.setAttribute("loginUserInfo", mResult);
						
						
						request.getRequestDispatcher(path).forward(request, response);
					}else {
						response.setContentType("text/html; charset=UTF-8");
						PrintWriter out = response.getWriter();	
						out.println("<script>alert('로그인 접근이 제한되었습니다. \\n잠시 뒤에 시도해 주세요.');history.go(-1);</script>");
						out.flush();
					}				
				}
			}else {				
				//비밀번호가 일치하지 않을 경우
				mControl.plusLoginFailCount(id);
				
				int failCount = mResult.getPlusLoginFailCount()+1;
				System.out.println("실패횟수 : "+failCount);
				if(failCount<5) {
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();	
					out.println("<script>alert('비밀번호가 일치하지 않습니다.\\n5회 이상 로그인 실패시 접근이 제한됩니다.');history.go(-1);</script>");					
					out.flush();							
					
				}else if(failCount>4) {
					mControl.LockStatus(id);
					System.out.println("로그인실패 5회이상 계정잠김");
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out1 = response.getWriter();	
					out1.println("<script>alert('접근이 제한된 계정입니다. \\n잠시 뒤에 시도해 주세요.');history.go(-1);</script>");
					out1.flush();
				}			
			}
		
		}else {					//DB에 데이터가 존재하지 않을경우
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();	
			out.println("<script>alert('존재하지 않는 계정입니다.\\n아이디 혹은 비밀번호를 다시 한번 확인해주세요.');history.go(-1);</script>");
			out.flush();
		}
		
	}
	

}

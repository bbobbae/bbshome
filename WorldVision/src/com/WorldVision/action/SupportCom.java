package com.WorldVision.action;

import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.WorldVision.dao.MemberDAO;
import com.WorldVision.dao.SupporterDAO;
import com.WorldVision.dto.Member;
import com.WorldVision.dto.Supporter;

public class SupportCom implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Member loginUserInfo = (Member) session.getAttribute("loginUserInfo");

		if (loginUserInfo == null) { // 로그인이 안된 경우
			response.sendRedirect("/WorldVision/join/login.jsp");
		} else { // 로그인된 경우
			// 로그인한 고객의 정보를 출력합니다.
			String id = loginUserInfo.getId();
		
			Supporter supporter = new Supporter();
			SupporterDAO sControl = SupporterDAO.getInstace();
			
			String num1 = request.getParameter("cardNum1");
			String num2 = request.getParameter("cardNum2");
			String num3 = request.getParameter("cardNum3");
			String num4 = request.getParameter("cardNum4");
			String month = request.getParameter("month");
			String year = request.getParameter("year");
			
			supporter.setPayWay(request.getParameter("payWay"));
			supporter.setCardName(request.getParameter("cardNm"));
			supporter.setCardNum(num1.concat("-".concat(num2.concat("-".concat(num3.concat("-".concat(num4)))))));
			supporter.setValidThru(year.concat(month));
			supporter.setCardOwn(request.getParameter("cardOwn"));
			supporter.setBankName(request.getParameter("bankName"));
			supporter.setBankOwn(request.getParameter("bankOwn"));
			supporter.setBankNum(request.getParameter("bankNum"));
			supporter.setBankBirth(request.getParameter("bankBirth"));
			supporter.setPayAgree(request.getParameter("payAgree"));
			supporter.setTransDay(request.getParameter("transDay"));
			supporter.setId(id);
			
			sControl.updateInfo(supporter);			
			
						
			
			
			//=========================================================//
			
			Supporter sResult = sControl.selectSupporter(id);	
			int total = sResult.getTotalPrice();
			
			DecimalFormat formatter = new DecimalFormat("###,###");
			String ttlPrice = formatter.format(total);
			
			
			request.setAttribute("sResult", sResult);	
			request.setAttribute("total", ttlPrice);	
			
			
			MemberDAO mControl = MemberDAO.getInstance();	
			Member mResult = mControl.selectMember(id);
			session.setAttribute("mResult", mResult);	
			
				
			String path = "/mainSpt/supportCom.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			
			
		}
	}

}

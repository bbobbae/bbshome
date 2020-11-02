package com.WorldVision.action;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.WorldVision.dao.SupporterDAO;
import com.WorldVision.dto.Member;
import com.WorldVision.dto.Supporter;

public class SuupportWay implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Member loginUserInfo = (Member) session.getAttribute("loginUserInfo");
		
		if (loginUserInfo == null) { // 로그인이 안된 경우
			response.sendRedirect("/WorldVision/join/login.jsp");
		} else { // 로그인된 경우
			String id = loginUserInfo.getId();
			
			Supporter supporter = new Supporter();
			
			
			String fr = request.getParameter("pslFrt");
			String ba = request.getParameter("pslBack");
			String personal = fr.concat(ba);			
			
			supporter.setId(id);
			supporter.setNewsletter(request.getParameter("news"));
			supporter.setReceipt(request.getParameter("receipt"));
			supporter.setPersonalnum(personal);
			supporter.setTrnaslate(request.getParameter("letterSlt"));
						
			SupporterDAO sControl = SupporterDAO.getInstace();
			sControl.addInfo(supporter);
			
			
			
			//=======================================================//
			//=======================================================//
			
			//db에 저장된 후원하기 값 불러오기
			Supporter sResult = sControl.selectSupporter(id);

			String getName = sResult.getSupportName();
			String getPrice = sResult.getSupportPrice();
			int total = sResult.getTotalPrice();			
			
			DecimalFormat formatter = new DecimalFormat("###,###");
			String ttlPrice = formatter.format(total);
			
			String[] nameArr = getName.split(" ");
			String[] priceArr = getPrice.split(" ");

			HashMap<String, String> map = new HashMap<>();
			for(int i=0; i<nameArr.length; i++) {
				map.put(nameArr[i], priceArr[i]);				
			}
			request.setAttribute("map", map);
			request.setAttribute("sResult", sResult);			
			request.setAttribute("total", ttlPrice);
			
			
			
			
			
			String path = "/mainSpt/supportWay.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			
		}
	}

}

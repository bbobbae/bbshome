package com.WorldVision.action;

import java.io.IOException;
import java.text.DecimalFormat;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.WorldVision.dao.MemberDAO;
import com.WorldVision.dao.SupporterDAO;
import com.WorldVision.dto.Member;
import com.WorldVision.dto.Supporter;

public class SupportInfo implements Action {

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

			// 디비에 저장된 후원내용 불러오기
			Supporter sResult = sControl.selectSupporter(id);
			
			String part = request.getParameter("supPart");
			String[] detail = request.getParameterValues("chkSup");
			String[] price = request.getParameterValues("outPrice");
			
			String textDetail = "";
			String textPrice = "";
			int intPrice = 0;
			
			for (int i = 0; i < detail.length; i++) {
				textDetail += detail[i] +" ";
			}
			
			for (int i = 0; i < price.length; i++) {
				textPrice += price[i] + " ";
				System.out.println(price[i]);
			}
			
			for(int i = 0; i< price.length; i++) {				
				intPrice += Integer.parseInt(price[i].replaceAll("\\,",""));
			}
			supporter.setTotalPrice(intPrice); 
			supporter.setId(id);
			supporter.setFormulas(part);
			supporter.setSupportName(textDetail);
			supporter.setSupportPrice(textPrice);
			
			
			if(sResult==null) {									
				sControl.insertSupporter(supporter);
			}else {
				sControl.updateSupporter(supporter);
			}
			
			Supporter rsResult = sControl.selectSupporter(id);		
						
			//db에 담긴 후원정보 가져와서담기
			String getName = rsResult.getSupportName();
			String getPrice = rsResult.getSupportPrice();
			int total = rsResult.getTotalPrice();
			
						
			DecimalFormat formatter = new DecimalFormat("###,###");
			String ttlPrice = formatter.format(total);
			
			String[] nameArr = getName.split(" ");
			String[] priceArr = getPrice.split(" ");

			HashMap<String, String> map = new HashMap<>();
			for(int i=0; i<nameArr.length; i++) {
				map.put(nameArr[i], priceArr[i]);				
			}
			
			
			request.setAttribute("map", map);
			request.setAttribute("rsResult", rsResult);
			request.setAttribute("total", ttlPrice);
			
			
			
			
			// ======================================================//
			// ======================================================//
		
		
			
			//후원자 정보 불러오기
			MemberDAO mControl = MemberDAO.getInstance();	
			Member mResult = mControl.selectMember(id);				
			session.setAttribute("mResult", mResult);			
			
			
			String path = "/mainSpt/supportInfo.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}

	}

}

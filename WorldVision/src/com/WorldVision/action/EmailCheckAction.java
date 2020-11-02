package com.WorldVision.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.WorldVision.dao.MemberDAO;

public class EmailCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    String email = request.getParameter("email");
	    System.out.println(email);
	    
	    MemberDAO dao = MemberDAO.getInstance();
        
        boolean result = dao.duplicateEmailCheck(email);
        
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        if(result)    out.println("0"); // 이메일 중복
        else        out.println("1");
        out.close();
	}

}

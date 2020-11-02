package com.WorldVision.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.WorldVision.dao.MemberDAO;

public class IdCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        String id = request.getParameter("id");
        MemberDAO dao = MemberDAO.getInstance();
        boolean result = dao.duplicateIdCheck(id);
        
        response.setContentType("text/html; charset=UTF-8");
      
        PrintWriter out = response.getWriter();
        if(result)    out.println("0"); // 아이디 중복
        else        out.println("1");
        out.close();

      
	}

}

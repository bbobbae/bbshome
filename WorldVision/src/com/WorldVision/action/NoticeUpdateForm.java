package com.WorldVision.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.WorldVision.dao.NoticeDAO;
import com.WorldVision.dto.Notice;

public class NoticeUpdateForm implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		NoticeDAO nControl = NoticeDAO.getInstance();
		Notice notice = nControl.noticeView(seq);
		
		request.setAttribute("notice", notice);	
		
		String path = "/notice/noticeUpdate.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}

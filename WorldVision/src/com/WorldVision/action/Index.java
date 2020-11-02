package com.WorldVision.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.WorldVision.dao.NoticeDAO;
import com.WorldVision.dto.Notice;
import com.WorldVision.dto.PageCriteria;

public class Index implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		NoticeDAO nControl = NoticeDAO.getInstance();
		PageCriteria pgctr = new PageCriteria();
		Notice notice =new Notice();
		
		//공지사항 리스트 불러오기
		ArrayList<Notice> nResult = nControl.noticeList(pgctr,notice);
		
		request.setAttribute("nResult", nResult);
		String path ="/index.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}

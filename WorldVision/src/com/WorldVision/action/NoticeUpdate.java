package com.WorldVision.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.WorldVision.dao.NoticeDAO;
import com.WorldVision.dto.Notice;
import com.WorldVision.dto.PageCriteria;
import com.WorldVision.dto.Paging;

public class NoticeUpdate implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Notice notice = new Notice();
		
		notice.setTitle(request.getParameter("title"));
		notice.setContent(request.getParameter("content"));
		notice.setSeq(Integer.parseInt(request.getParameter("seq")));
		
		NoticeDAO nControl = NoticeDAO.getInstance();
		nControl.updateNotice(notice);
		
		//리스트 불러오기
		NoticeDAO aControl = NoticeDAO.getInstance();
		
		
		PageCriteria pgctr = new PageCriteria();		
		String page = request.getParameter("page");		
		if(page != null) {
			pgctr.setPage(Integer.parseInt(page));
		}else if(page == null) {
			page="1";
		}
		Paging paging = new Paging();
    	paging.setPgcrt(pgctr);
		paging.setTotalCount(nControl.noticeCount(notice));
		ArrayList<Notice> nResult = nControl.noticeList(pgctr,notice);
		request.setAttribute("paging", paging);
		request.setAttribute("nResult", nResult);
		request.setAttribute("page", page);
		
		String path = "/notice/noticeList.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}

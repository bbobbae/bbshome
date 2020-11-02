package com.WorldVision.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.WorldVision.dao.NoticeDAO;
import com.WorldVision.dto.Notice;
import com.WorldVision.dto.PageCriteria;
import com.WorldVision.dto.Paging;

public class NoticeViewForm implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		NoticeDAO nControl = NoticeDAO.getInstance();
		
		PageCriteria pgctr = new PageCriteria();		
		String page = request.getParameter("page");		
		String key = request.getParameter("key");
		String word = request.getParameter("word");
		
		if(page != null) {
			pgctr.setPage(Integer.parseInt(page));
		}else if(page == null) {
			page="1";
		}
		if(word == "") {
			key=null;
		}
		
		
		
		Notice notice =new Notice();		
		Paging paging = new Paging();
		
    	paging.setPgcrt(pgctr);
    	notice.setSearchKey(key);
    	notice.setSearchWord(word);   	
    	
    	
    	
		request.setAttribute("page", page);
		request.setAttribute("key", key);
		request.setAttribute("word", word);
    	
    	
		paging.setTotalCount(nControl.noticeCount(notice));
		
		
		
		
		
		
		
		
		
		
		
		
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		nControl.addViews(seq);
		Notice nResult = nControl.noticeView(seq);
		Notice prev = nControl.prevView(seq);	
		Notice next = nControl.nextView(seq);
		
		request.setAttribute("nResult", nResult);
		request.setAttribute("prev", prev);
		request.setAttribute("next", next);

		String path = "/notice/noticeView.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}

}

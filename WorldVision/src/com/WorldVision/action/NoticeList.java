package com.WorldVision.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.WorldVision.dao.NoticeDAO;
import com.WorldVision.dto.Member;
import com.WorldVision.dto.Notice;
import com.WorldVision.dto.PageCriteria;
import com.WorldVision.dto.Paging;


public class NoticeList implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Member loginUserInfo = (Member) session.getAttribute("loginUserInfo");
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
    	
    	
		paging.setTotalCount(nControl.noticeCount(notice));
		ArrayList<Notice> nResult = nControl.noticeList(pgctr,notice);
		
		request.setAttribute("nResult", nResult);
		request.setAttribute("loginUserInfo", loginUserInfo);
		request.setAttribute("paging", paging);
		request.setAttribute("page", page);
		request.setAttribute("key", key);
		request.setAttribute("word", word);
		
		String path = "/notice/noticeList.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}

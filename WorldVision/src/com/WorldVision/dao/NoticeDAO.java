package com.WorldVision.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.WorldVision.dto.Notice;
import com.WorldVision.dto.PageCriteria;

import util.DBManager;

public class NoticeDAO {

	public NoticeDAO() {}
	public static NoticeDAO instance = new NoticeDAO();
	
	public static NoticeDAO getInstance() {
		return instance;
	}
	
	//공지사항 리스트 가져오기
	public ArrayList<Notice> noticeList(PageCriteria pgctr, Notice notice) {
		System.out.println("noticeList");
		String key = notice.getSearchKey();
		String word = notice.getSearchWord();		
		
	
		ArrayList<Notice> noticeLists = new ArrayList<Notice>();		
		String sql = "";
				
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		
		try {
			conn= DBManager.getConnection();
					
			if(key == null) {
				sql= "select X.rnum, X.seq, X.title, X.content,X.writer, X.indate, X.views\r\n" + 
						"from (select rownum as rnum, A.seq, A.title, A.content, A.writer, A.indate, A.views\r\n" + 
						"from (select seq, title, content, writer, indate, views\r\n" + 
						"from NOTICE order by seq desc) A where rownum <= "+(pgctr.getPageStart()+pgctr.getPerPageNum()-1)
						+") X where X.rnum >="+pgctr.getPageStart()+"";
				pstmt = conn.prepareStatement(sql);
				
			}else if(key.equals("all")) {
				sql= "select X.rnum, X.seq, X.title, X.content,X.writer, X.indate, X.views\r\n" + 
						"from (select rownum as rnum, A.seq, A.title, A.content, A.writer, A.indate, A.views\r\n" + 
						"from (select seq, title, content, writer, indate, views\r\n" + 
						"from NOTICE where title like? or content like ? order by seq desc) A where rownum <= "+
						(pgctr.getPageStart()+pgctr.getPerPageNum()-1)
						+") X where X.rnum >="+pgctr.getPageStart()+"";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+word+"%");
				pstmt.setString(2, "%"+word+"%");
				
			}else if(key.equals("title")) {
				sql = "select X.rnum, X.seq, X.title, X.content,X.writer, X.indate, X.views\r\n" + 
						"from (select rownum as rnum, A.seq, A.title, A.content, A.writer, A.indate, A.views\r\n" + 
						"from (select seq, title, content, writer, indate, views\r\n" + 
						"from NOTICE where title like ? order by seq desc) A where rownum <= "+(pgctr.getPageStart()+pgctr.getPerPageNum()-1)
						+") X where X.rnum >="+pgctr.getPageStart()+"";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+word+"%");
				
			}else if(key.equals("content")) {
				sql = "select X.rnum, X.seq, X.title, X.content,X.writer, X.indate, X.views\r\n" + 
						"from (select rownum as rnum, A.seq, A.title, A.content, A.writer, A.indate, A.views\r\n" + 
						"from (select seq, title, content, writer, indate, views\r\n" + 
						"from NOTICE where content like ? order by seq desc) A where rownum <= "+(pgctr.getPageStart()+pgctr.getPerPageNum()-1)
						+") X where X.rnum >="+pgctr.getPageStart()+"";
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+word+"%");
				
			}
			rest = pstmt.executeQuery();					
			while(rest.next()) {				
				Notice noticeList = new Notice();
				noticeList.setSeq(rest.getInt("seq"));
				noticeList.setTitle(rest.getString("title"));
				noticeList.setContent(rest.getString("content"));
				noticeList.setViews(rest.getInt("views"));
				noticeList.setIndate(rest.getTimestamp("indate"));
				noticeList.setWriter(rest.getString("writer"));
				noticeLists.add(noticeList);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);//3개짜리로 골라야함
		}
		return noticeLists;
	}

	

	
	//공지사항 총 게시물 수
	public int noticeCount(Notice notice) {
		// TODO Auto-generated method stub
		String sql ="";
		String key = notice.getSearchKey();
		String word = notice.getSearchWord();			
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		
		int count=0;
		
		try {
			conn= DBManager.getConnection();
			
			if(key==null) {
				sql = "SELECT count(*) FROM notice";
				pstmt = conn.prepareStatement(sql);
			}else if(key.equals("all")) {
				sql="SELECT count(*) FROM notice where title like ? or content like?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+word+"%");
				pstmt.setString(2, "%"+word+"%");
			}else if(key.equals("title")) {
				sql="SELECT count(*) FROM notice where title like ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+word+"%");
			}else if(key.equals("content")) {
				sql="SELECT count(*) FROM notice where content like ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+word+"%");
			}						
			rest = pstmt.executeQuery();
			if(rest.next()) {				
				count = rest.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);//3개짜리로 골라야함
		}
		return count;
	}

	
	
	
	
	//공지사항 상세 보기
	public Notice noticeView(int seq) {
		// TODO Auto-generated method stub
		System.out.println("noticeView : "+seq);
		Notice noticeView = null;
		String sql = "SELECT * FROM notice WHERE seq=? ";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rest = pstmt.executeQuery();
			
			if(rest.next()) {				
				noticeView = new Notice();
				noticeView.setSeq(rest.getInt("seq"));
				noticeView.setTitle(rest.getString("title"));
				noticeView.setContent(rest.getString("content"));
				noticeView.setViews(rest.getInt("views"));
				noticeView.setIndate(rest.getTimestamp("indate"));	
				noticeView.setWriter(rest.getString("writer"));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);//3개짜리로 골라야함
		}
		return noticeView;
	}

	
	
	
	
	//공지사항 추가하기
	public void insertNotice(Notice notice) {
		// TODO Auto-generated method stub
		System.out.println("insertNotice");
		
		String sql = "INSERT INTO notice (seq, title, content, writer) values(n_seq.nextval,?,?,?)";
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());
			pstmt.setString(3, notice.getWriter());			
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}

	
	
	
	//공지사항 삭제
	public void deleteNotice(int seq) {
		// TODO Auto-generated method stub
		System.out.println("deleteNotice");
		
		String sql = "DELETE FROM notice WHERE seq=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;	
		
		try {
			conn = DBManager.getConnection();	
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
	}

	
	
	//공지사항 수정
	public void updateNotice(Notice notice) {
		// TODO Auto-generated method stub
		System.out.println("updateNotice");
		String sql = "UPDATE notice SET title =? ,content = ? WHERE seq = ?";		
		Connection conn = null;
		PreparedStatement pstmt = null;			
		
			
		try {
			//DB에 연결합니다.
			conn = DBManager.getConnection();			
			//쿼리문을 준비합니다.
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());
			pstmt.setInt(3, notice.getSeq());	
			//쿼리문을 실행합니다.
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}

	
	
	//조회수 추가
	public void addViews(int seq) {
		System.out.println("addViews");
		String sql = "UPDATE notice SET views = views+1 WHERE seq = ?";		
		Connection conn = null;
		PreparedStatement pstmt = null;			
		
			
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);			
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}

	
	
	
	
	
	//공지사항 이전글
	public Notice prevView(int seq) {
		// TODO Auto-generated method stub
		System.out.println("noticeView : "+seq);
		Notice prev = null;
		String  sql = "SELECT * FROM notice where seq=(select max(seq) from notice where seq < ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rest = pstmt.executeQuery();
			
			if(rest.next()) {				
				prev = new Notice();
				prev.setSeq(rest.getInt("seq"));
				prev.setTitle(rest.getString("title"));
				prev.setIndate(rest.getTimestamp("indate"));	
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);//3개짜리로 골라야함
		}
		return prev;
		
	}

	
	//공지사항 다음글
	public Notice nextView(int seq) {
		// TODO Auto-generated method stub
		System.out.println("nextView : "+seq);
		Notice next = null;
		String  sql = "SELECT * FROM notice where seq=(select min(seq) from notice where seq > ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rest = pstmt.executeQuery();
			
			if(rest.next()) {				
				next = new Notice();
				next.setSeq(rest.getInt("seq"));
				next.setTitle(rest.getString("title"));
				next.setIndate(rest.getTimestamp("indate"));	
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);//3개짜리로 골라야함
		}
		return next;
	}
		
}

package com.WorldVision.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.WorldVision.dao.MemberDAO;
import com.WorldVision.dto.Member;

import util.DBManager;

public class MemberDAO {
	public MemberDAO() {
		// TODO Auto-generated constructor stub
	}
	public static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	
	//회원정보를 저장합니다.
	public int insertMember(Member member) {
		System.out.println("insertMember()");
		int result = 0;
		String sql = "INSERT INTO wvmember(id,pwd,name,birth,gender,phone,email1,email2,email) values(?,?,?,?,?,?,?,?,?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			//DB에 연결합니다.
			conn = DBManager.getConnection();
			//쿼리문을 준비합니다.
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getBirth());
			pstmt.setString(5, member.getGender());
			pstmt.setString(6, member.getPhone());
			pstmt.setString(7, member.getEmail1());
			pstmt.setString(8, member.getEmail2());
			pstmt.setString(9, member.getEmail());
			
			
			
			System.out.println(member.getId());
			System.out.println(member.getPwd());
			System.out.println(member.getName());
			System.out.println(member.getBirth());
			System.out.println(member.getGender());
			System.out.println(member.getPhone());
			System.out.println(member.getEmail1());
			System.out.println(member.getEmail2());
			System.out.println(member.getEmail());
		
			
			//쿼리문을 실행합니다.
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	
	//회원정보를 불러옵니다.
	public Member selectMember(String userid) {
		System.out.println("selectMember : " + userid);
		Member member = null;
		String sql = "SELECT * FROM wvmember WHERE id=? ";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rest = pstmt.executeQuery();
			
			if(rest.next()) {				
				member = new Member();
				member.setId(rest.getString("id"));
				member.setPwd(rest.getString("pwd"));
				member.setName(rest.getString("name"));
				member.setBirth(rest.getString("birth"));
				member.setGender(rest.getString("gender"));
				member.setPhone(rest.getString("phone"));
				member.setEmail1(rest.getString("email1"));
				member.setEmail2(rest.getString("email2"));
				member.setEmail(rest.getString("email"));
				member.setPlusLoginFailCount(rest.getInt("login_fail_count"));
				member.setLockStatus(rest.getString("is_lock"));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);//3개짜리로 골라야함
		}
		return member;
	}

	
	//계정찾기: 휴대폰정보로 회원정보 불러오기
	public Member find_id_Member(String userphone) {
		System.out.println("find_id_Member : " + userphone);
		Member member = null;
		
		String sql = "SELECT * FROM wvmember WHERE phone=? ";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userphone);
			rest = pstmt.executeQuery();
			
			if(rest.next()) {
				member = new Member();
				member.setId(rest.getString("id"));
				member.setPwd(rest.getString("pwd"));
				member.setName(rest.getString("name"));
				member.setBirth(rest.getString("birth"));
				member.setGender(rest.getString("gender"));
				member.setPhone(rest.getString("phone"));
				member.setEmail1(rest.getString("email1"));
				member.setEmail2(rest.getString("email2"));
			}else {
				return null;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);//3개짜리로 골라야함
		}
		return member;
	}
	
	
	//계정찾기 : 이메일 주소로 회원정보 불러오기
	public Member find_id_Member2(String userEmail) {
		System.out.println("find_id_Member2 : " + userEmail);
		
		Member member = null;
		
		String sql = "SELECT * FROM wvmember WHERE email= ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userEmail);
			rest = pstmt.executeQuery();
			
			
			if(rest.next()) {
				member = new Member();
				member.setId(rest.getString("id"));
				member.setPwd(rest.getString("pwd"));
				member.setName(rest.getString("name"));
				member.setBirth(rest.getString("birth"));
				member.setGender(rest.getString("gender"));
				member.setPhone(rest.getString("phone"));
				member.setEmail1(rest.getString("email1"));
				member.setEmail2(rest.getString("email2"));
				member.setEmail(rest.getString("email"));
			}else {
				return null;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);//3개짜리로 골라야함
		}
		return member;
	}
				
	
	//정보수정 업데이트
	public void updateMember(Member member) {
		System.out.println("updateMember()");
		String sql = "UPDATE wvmember SET pwd = ?, name = ?, birth=?, gender = ?, email1 = ?, email2 = ? WHERE id = ?";	
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		
		String id = member.getId();
		String pwd = member.getPwd();
		String name = member.getName();
		String birth = member.getBirth();
		String gender = member.getGender();
		String email1 = member.getEmail1();
		String email2 = member.getEmail2();
			
		
		try {
			//DB에 연결합니다.
			conn = DBManager.getConnection();			
			//쿼리문을 준비합니다.
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, pwd);
			pstmt.setString(2, name);
			pstmt.setString(3, birth);
			pstmt.setString(4, gender);
			pstmt.setString(5, email1);
			pstmt.setString(6, email2);
			pstmt.setString(7, id);
			
			//쿼리문을 실행합니다.
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	
	
	//id 중복체크 확인
	public boolean duplicateIdCheck(String id) {
		// TODO Auto-generated method stub
		System.out.println("duplicateIdCheck : " + id); 	
    	String sql=("SELECT id FROM wvmember WHERE id=?");
	    
		Connection conn = null;
		PreparedStatement pstmt = null;
	    ResultSet rest = null;
	    boolean x= false;
	        
	    
	    
	    try {               
	    	conn = DBManager.getConnection();	
	    	pstmt = conn.prepareStatement(sql);
	    	pstmt.setString(1, id);
	    	rest = pstmt.executeQuery();
	            
	    	if(rest.next()) x= true; //해당 아이디 존재
	            
	    	return x;
	            
	    } catch (Exception sqle) {
	    	throw new RuntimeException(sqle.getMessage());
	    } finally {
	    	try{
	    		if ( pstmt != null ){ pstmt.close(); pstmt=null; }
	    		if ( conn != null ){ conn.close(); conn=null;    }
	    	}catch(Exception e){
	    		throw new RuntimeException(e.getMessage());
	    	}
	    }
	}
	
	
	//이메일 중복체크 확인
	public boolean duplicateEmailCheck(String userEmail) {
		// TODO Auto-generated method stub
		System.out.println("duplicateEmailCheck : " + userEmail); 	
		
		//StringBuffer query = new StringBuffer();
    	String sql=("SELECT id FROM wvmember WHERE email=?");
        
		
		Connection conn = null;
		PreparedStatement pstmt = null;
	    ResultSet rest = null;
	    boolean x= false;
	        
	    try {
	    	conn = DBManager.getConnection();	
	    	pstmt = conn.prepareStatement(sql);
	    	pstmt.setString(1, userEmail);
	    	rest = pstmt.executeQuery();
	            
	    	if(rest.next()) x= true; //해당 아이디 존재
	    	return x;
	    }  catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);//3개짜리로 골라야함
		}	
		return false;
	}


	//회원탈퇴시킵니다.
	public void deleteMember(String userid) {
		System.out.println("deleteMember : "+ userid);
		String sql = "DELETE FROM wvmember WHERE id= ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
	
		try {
			//DB에 연결합니다.
			conn = DBManager.getConnection();	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.executeUpdate();		
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	

	//현재시간 기준 로그인 제한 풀렸는지 확인하는 메서드
	public boolean selectLockStatus(String userId) {
		System.out.println("selectLockStatus : " + userId);
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		boolean unlock=false;
		
		String sql = "SELECT * FROM wvmember WHERE id = ? AND is_lock = 'Y' AND latest_login_fail_date+(1/24/6) < SYSDATE";
	
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rest = pstmt.executeQuery();
									
			if(rest.next()) {
				unlock=true;
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);
		}
		return unlock;
	}
	
	

	//로그인 실패시 실패횟수 누적메서드
	public void plusLoginFailCount(String userId) {
		System.out.println("plusLoginFailCount : " + userId);
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "UPDATE wvmember SET login_fail_count = login_fail_count+1, latest_login_fail_date = sysdate WHERE id = ?";
	
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, null);
		}
	}
	
		
	
	//로그인 5회이상 시도한 계정 잠금,
	public void LockStatus(String userId) {
		System.out.println("LockStatus : " + userId);
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "UPDATE wvmember SET is_lock = 'Y' WHERE id = ?";
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, null);//3개짜리로 골라야함
		}
	}
	
	
	//로그인 시도 횟수를 0으로, 계정잠금을 N로 초기화하는 메서드
	public void updateClearLoginFailCount(String userId) {
		System.out.println("updateClearLoginFailCount : " + userId);
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "UPDATE wvmember SET login_fail_count = 0, is_lock = 'N' WHERE id = ?";
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, null);
		}
	}
}
	
	
	
	
	
	
	


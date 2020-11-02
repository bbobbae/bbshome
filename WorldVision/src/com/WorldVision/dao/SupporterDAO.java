package com.WorldVision.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;

import com.WorldVision.dto.Member;
import com.WorldVision.dto.Supporter;

import util.DBManager;

public class SupporterDAO {

	public SupporterDAO() {
		// TODO Auto-generated constructor stub
	}
	public static SupporterDAO instance = new SupporterDAO();
	
	public static SupporterDAO getInstace() {
		return instance;
	}
	
	
	//정보삽입
	public void insertSupporter(Supporter supporter) {
		System.out.println("insertSupport");
		
		String sql = "INSERT INTO supporter(id, formulas,supportName,supportprice,totalPrice) values(?,?,?,?,?)";
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, supporter.getId());
			pstmt.setString(2, supporter.getFormulas());
			pstmt.setString(3, supporter.getSupportName());
			pstmt.setString(4, supporter.getSupportPrice());
			pstmt.setInt(5, supporter.getTotalPrice());
			
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	
	//기존 후원데이터 업데이트
	public void updateSupporter(Supporter supporter) {
		System.out.println("updateSupporter");		
		String sql = "UPDATE supporter SET formulas = ?, supportName = ?,supportprice = ?,totalPrice = ? WHERE id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;	
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, supporter.getFormulas());
			pstmt.setString(2, supporter.getSupportName());
			pstmt.setString(3, supporter.getSupportPrice());
			pstmt.setInt(4, supporter.getTotalPrice());
			pstmt.setString(5, supporter.getId());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	
	//특정 회원 후원정보 조회
	public Supporter selectSupporter(String userId) {
		System.out.println("selectSupporter : " + userId);
		Supporter supporter = null;
		
		String sql = "SELECT * FROM supporter WHERE id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rest = null;
		
		try {
			conn= DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rest = pstmt.executeQuery();
			
			
			if(rest.next()) {				
				supporter = new Supporter();
				supporter.setId(rest.getString("id"));				
				supporter.setFormulas(rest.getString("formulas"));
				supporter.setSupportName(rest.getString("supportName"));
				supporter.setSupportPrice(rest.getString("supportPrice"));
				supporter.setTotalPrice(rest.getInt("totalPrice"));
				supporter.setPayWay(rest.getString("payWay"));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rest);//3개짜리로 골라야함
		}
		return supporter;
				
	}
	
	
	
	//db에 후원 정보 업데이트
	public void addInfo(Supporter supporter) {
		System.out.println("insertSupport");		
		String sql = "UPDATE supporter SET newsletter = ?, receipt = ? , personalnum = ?, trnaslate = ? WHERE id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;	
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, supporter.getNewsletter());
			pstmt.setString(2, supporter.getReceipt());
			pstmt.setString(3, supporter.getPersonalnum());
			pstmt.setString(4, supporter.getTrnaslate());
			pstmt.setString(5, supporter.getId());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
	}


	public void updateInfo(Supporter supporter) {
		System.out.println("updateInfo");		
		String sql = "UPDATE supporter SET payWay = ?, cardName = ?, cardNum = ?, validThru = ?, cardOwn = ?, "
				+ "bankName = ?, bankOwn = ?, bankNum=?, bankBirth = ?, payAgree = ?, transDay = ?  WHERE id = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;	
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, supporter.getPayWay());
			pstmt.setString(2, supporter.getCardName());
			pstmt.setString(3, supporter.getCardNum());
			pstmt.setString(4, supporter.getValidThru());
			pstmt.setString(5, supporter.getCardOwn());
			pstmt.setString(6, supporter.getBankName());
			pstmt.setString(7, supporter.getBankOwn());
			pstmt.setString(8, supporter.getBankNum());
			pstmt.setString(9, supporter.getBankBirth());
			pstmt.setString(10, supporter.getPayAgree());
			pstmt.setString(11, supporter.getTransDay());
			pstmt.setString(12, supporter.getId());		
								
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}
		
	}
	

	
}

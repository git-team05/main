package team05.seller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import team05.member.MemberDTO;

public class SellerDAO {
	
	private Connection getConnection() throws Exception{
		Context ctx = new InitialContext();
		Context env = (Context)ctx.lookup("java:comp/env");
		DataSource ds = (DataSource)env.lookup("jdbc/orcl");
		return ds.getConnection();
	}
	
	// 판매자 회원가입
	public void insertSeller(SellerDTO dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			String sql = "insert into seller values(?,?,?,?,?,?,?,?,?,?,?,?,?,sysdate)"; //values 들어가는 순서
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getPhone());
			pstmt.setString(6, dto.getBizname());
			pstmt.setString(7, dto.getBiznum());
			pstmt.setString(8, dto.getBizaddress());
			pstmt.setString(9, dto.getCeoname());
			pstmt.setString(10, dto.getBiztel());
			pstmt.setString(11, dto.getManagername());
			pstmt.setString(12, dto.getManageremail());
			pstmt.setString(13, dto.getWebsite());
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt != null) try {pstmt.close();} catch(Exception e) {e.printStackTrace();}
			if(conn != null) try {conn.close();} catch(Exception e) {e.printStackTrace();}
		}
	}		  	
}

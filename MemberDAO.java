package team05.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	private MemberDAO() {};
	public static MemberDAO getInstance() { return instance; }
	
      private Connection getConnection() throws Exception{
         Context ctx = new InitialContext();
         Context env = (Context)ctx.lookup("java:comp/env");
         DataSource ds = (DataSource)env.lookup("jdbc/orcl");
         return ds.getConnection();
      }
      
      // 회원가입
      public void insertMember(MemberDTO dto) {
         Connection conn = null;
         PreparedStatement pstmt = null;
         
         
         try {
            conn = getConnection();
            String sql = "insert into member values(?,?,?,?,?,sysdate)"; //values 들어가는 순서
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getId());
            pstmt.setString(2, dto.getPw());
            pstmt.setString(3, dto.getName());
            pstmt.setString(4, dto.getEmail());
            pstmt.setString(5, dto.getPhone());
           
            
            pstmt.executeUpdate();
            
         }catch(Exception e) {
            e.printStackTrace();
            
         }finally {
            if(pstmt != null) try {pstmt.close();} catch(Exception e) {e.printStackTrace();}
            if(conn != null) try {conn.close();} catch(Exception e) {e.printStackTrace();}
         }   
      }   
      
      // 멤버 회원 ID, PW 일치확인
      public boolean idPwCheck(String id, String pw) {
    	  boolean result = false;
    	  Connection conn = null;
          PreparedStatement pstmt = null;
          ResultSet rs = null;
    	  
    	  try {
    		  conn = getConnection();
    		  String sql = "select * from member where id=? and pw=?";
    		  pstmt = conn.prepareStatement(sql);
    		  pstmt. setString(1, id);
    		  pstmt. setString(2, pw);
    		  
    		  rs = pstmt.executeQuery();
    		  if(rs.next()) {
    			  result = true;
    		  }
    		  
    		  
    	  }catch(Exception e) {
    		  e.printStackTrace();
    	  }finally {
    		  if(rs != null) try {rs.close();} catch(Exception e) {e.printStackTrace();}
    		  if(pstmt != null) try {pstmt.close();} catch(Exception e) {e.printStackTrace();}
              if(conn != null) try {conn.close();} catch(Exception e) {e.printStackTrace();}
    	  }
    	  return result; 
      }
      
      
      // 회원수 count
      public int countMember() {
  		int count = 0;
  		Connection conn = null;
  		PreparedStatement pstmt = null;
  		ResultSet rs = null;
  		try {
  			conn = getConnection();
  			String sql = "select count(*) from member";
  			pstmt = conn.prepareStatement(sql);
  			rs = pstmt.executeQuery();
  			if(rs.next()) {
  				count = rs.getInt(1);
  			}
  		} catch(Exception e) {
  			e.printStackTrace();
  		} finally {
  			if(rs != null) try { rs.close(); } catch(Exception e) { e.printStackTrace(); }
  			if(pstmt != null) try { pstmt.close(); } catch(Exception e) { e.printStackTrace(); }
  			if(conn != null) try { conn.close(); } catch(Exception e) { e.printStackTrace(); }
  		}
  		return count;
  	}
      
      // 회원 리스트 가져오기
      public List getMemberList() {
  		List memberList = null;
  		Connection conn = null;
  		PreparedStatement pstmt = null;
  		ResultSet rs = null;
  		try {
  			conn = getConnection();
  			String sql = "select * from member";
  			pstmt = conn.prepareStatement(sql);
  			rs = pstmt.executeQuery();
  			if(rs.next()) {
  				memberList = new ArrayList();
  				do {
  					MemberDTO dto = new MemberDTO();
  					dto.setId(rs.getString("id"));
  					dto.setPw(rs.getString("pw"));
  					dto.setName(rs.getString("name"));
  					dto.setEmail(rs.getString("email"));
  					dto.setPhone(rs.getString("phone"));
  					dto.setReg(rs.getTimestamp("reg"));
  					memberList.add(dto);
  				} while(rs.next());
  			}
  		} catch(Exception e) {
  			e.printStackTrace();
  		} finally {
  			if(rs != null) try { rs.close(); } catch(Exception e) { e.printStackTrace(); }
  			if(pstmt != null) try { pstmt.close(); } catch(Exception e) { e.printStackTrace(); }
  			if(conn != null) try { conn.close(); } catch(Exception e) { e.printStackTrace(); }
  		}
  		return memberList;
  	}
      
      // 회원정보 가져오기
      public MemberDTO getMember(String id) {
  		MemberDTO member = null;
  		Connection conn = null;
  		PreparedStatement pstmt = null;
  		ResultSet rs = null;
  		try {
  			conn = getConnection();
  			String sql = "select * from member where id=?";
  			pstmt = conn.prepareStatement(sql);
  			pstmt.setString(1, id);
  			rs = pstmt.executeQuery();
  			if(rs.next()) {
  				member = new MemberDTO();
  				member.setId(rs.getString("id"));
  				member.setPw(rs.getString("pw"));
  				member.setName(rs.getString("name"));
  				member.setEmail(rs.getString("email"));
  				member.setPhone(rs.getString("phone"));
  				member.setReg(rs.getTimestamp("reg"));
  			}
  		} catch(Exception e) {
  			e.printStackTrace();
  		} finally {
  			if(rs != null) try { rs.close(); } catch(Exception e) { e.printStackTrace(); }
  			if(pstmt != null) try { pstmt.close(); } catch(Exception e) { e.printStackTrace(); }
  			if(conn != null) try { conn.close(); } catch(Exception e) { e.printStackTrace(); }
  		}
  		return member;
  	}
      
      // 관리자가 멤버정보 수정
      public int modifyMemberAdmin(MemberDTO dto) {
  		int result = 0;
  		 Connection conn = null;
  		 PreparedStatement pstmt = null;
  		 try {
  			conn = getConnection();
  			String sql = "update member set id=?, pw=?, name=?, email=?, phone=? where id=?";
  			pstmt = conn.prepareStatement(sql);
  			System.out.println(pstmt);
  			pstmt.setString(1, dto.getId());
  			pstmt.setString(2, dto.getPw());
  			pstmt.setString(3, dto.getName());
  			pstmt.setString(4, dto.getEmail());
  			pstmt.setString(5, dto.getPhone());
  			pstmt.setString(6, dto.getId());
  			result = pstmt.executeUpdate();
  			System.out.println(result);
  		 }catch ( Exception e ) {
  			e.printStackTrace();
  		 }finally {
  			if(pstmt != null) try {pstmt.close();} catch (Exception e) {e.printStackTrace();}
  		  	if(conn != null) try {conn.close();} catch (Exception e) {e.printStackTrace();}
  		 }
  		 return result;
  	}
}
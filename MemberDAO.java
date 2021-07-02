package team05.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

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
      
      
      
      
      
      
      
      
}
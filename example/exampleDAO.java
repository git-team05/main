package team05.example;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import team05.seller.SellerDTO;

public class exampleDAO {
	
	private Connection getConnection1() throws Exception{
        Context ctx = new InitialContext();
        Context env = (Context)ctx.lookup("java:comp/env");
        DataSource ds = (DataSource)env.lookup("jdbc/orcl");
        return ds.getConnection();
     }
	
	
    public boolean idPwCheck(String id, String pw, String kinds) {
    	boolean result = false;
  	  	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
  	  	String sql = null;
  	  	System.out.println("[ID] = " + id + " [PW] = " + pw + " Kinds = " + kinds);
  	  try {
  		  conn = getConnection1();
  		  if(kinds.equals("member")) {
  			sql = "select * from member where id=? and pw=?";
  		  } else if(kinds.equals("seller")) {
  			sql = "select * from seller where id=? and pw=?";
  		  };
  		  
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
  	System.out.println("4");
  	  return result; 
    }

	private Connection getConnection() {
		// TODO Auto-generated method stub
		return null;
	}
}

package net.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import net.utility.DBClose;
import net.utility.DBOpen;

public class memberDAO { //Data Access Object
						 //데이터베이스 비지니스 로직 구현
	
	private DBOpen dbopen = null;
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private StringBuilder sql = null;
	
	public memberDAO() {
		dbopen = new DBOpen();
	}//end
	
	public String loginPorc(memberDTO dto) {
		String mlevel=null;
		try {
			con = dbopen.getConnection(); //오라클 데이터베이스 연결
			
			sql = new StringBuilder();
			sql.append(" SELECT mlevel ");
			sql.append(" FROM member ");
			sql.append(" WHERE id=? AND passwd=? ");
			sql.append(" AND mlevel in ('A1', 'B1', 'C1', 'D1') ");
			
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPasswd());
	
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mlevel=rs.getString("mlevel");
			}//if end
			
		} catch (Exception e) {
			System.out.println("로그인 실패 : " + e);
		}finally {
			DBClose.close(con, pstmt, rs);
		}//end
		return mlevel;  
	}//loginPorc() end
	

	
	
	
}//class end

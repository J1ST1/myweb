package net.pds;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import net.utility.DBClose;
import net.utility.DBOpen;

public class PdsDAO {

	private DBOpen dbOpen = null;
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private StringBuilder sql = null;
	
	public PdsDAO() {
		dbOpen = new DBOpen();
	}//end
	
	
	public ArrayList<PdsDTO> list() {

		ArrayList<PdsDTO> list = null;
		
		try {
			con = dbOpen.getConnection(); //오라클 DB 연결
			
			sql = new StringBuilder();
			sql.append(" SELECT pdsno, wname, subject, filename, readcnt, regdate ");
			sql.append(" FROM tb_pds ");
			sql.append(" ORDER BY regdate DESC ");
			
			pstmt=con.prepareStatement(sql.toString());
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				list = new ArrayList<PdsDTO>(); //전체 행을 저장
				do {
					//커서가 가리키는 한 줄 저장
					PdsDTO dto = new PdsDTO();
					dto.setPdsno(rs.getInt("pdsno"));
					dto.setWname(rs.getString("wname"));
					dto.setSubject(rs.getString("subject"));
					dto.setFilename(rs.getString("filename"));
					dto.setReadcnt(rs.getInt("readcnt"));
					dto.setRegdate(rs.getString("regdate"));
					list.add(dto);
				} while (rs.next());
			}else {
				list = null;
			}//if end
			
		} catch (Exception e) {
			System.out.println("포토갤러리 목록 보기 실패 : " + e);
		} finally {
			DBClose.close(con, pstmt, rs);
		}//end
		
		return list;
		
	}//list() end
	
	
	public int create(PdsDTO dto) {
		int cnt = 0; //성공 또는 실패 여부 반환
		try {
			con = dbOpen.getConnection(); //오라클 데이터베이스 연결
			
			sql = new StringBuilder();
			sql.append(" INSERT INTO tb_pds(pdsno, wname, subject, passwd, filename, filesize, regdate) ");
			sql.append(" VALUES(pds_seq.nextval, ?, ?, ?, ?, ?, sysdate) ");
			
			pstmt=con.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getWname());
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getPasswd());
			pstmt.setString(4, dto.getFilename());
			pstmt.setLong(5, dto.getFilesize());
	
			cnt = pstmt.executeUpdate();
			
			} catch (Exception e) {
				System.out.println("포토갤러리 추가 실패 : " + e);
			}finally {
				DBClose.close(con, pstmt);
			}//end
		return cnt;
	}//create() end
	
	
	
	
	
	
	
	
	
}//class() end
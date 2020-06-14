package jspbook.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jspbook.addrbook.AddrBook;

public class MemberBean {

	Connection conn	=	null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	String jdbc_driver="com.mysql.jdbc.Driver";
	String jdbc_url="jdbc:mysql://127.0.0.1:3306/jspdb?useSSL=false&serverTimezone=Asia/Seoul";
	
	// 드라이버 연결하기 
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn=DriverManager.getConnection(jdbc_url,"jspbook","minkyung0615");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	// 연결 해제 
	void disconnect() {
		
		if(pstmt!=null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}
	
	// 회원가입 처리 
	
	public boolean insertMember(Member member) {
		connect();
		String sql="insert into member(m_id,m_pw) values(?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, member.getM_id());
			pstmt.setString(2, member.getM_pw());
			pstmt.executeUpdate();
			//갱신, 삽입, 수정은 모두 executeUpdate 사용
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return true;
	}
	
	public boolean checkMember(String id, String pw) {
		connect();
		String sql="select m_id, m_pw from member where m_id = ? and m_pw = ?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			rs.close();
			//갱신, 삽입, 수정은 모두 executeUpdate 사용
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		finally {
			disconnect();
		}
		return false;
	}

	
}

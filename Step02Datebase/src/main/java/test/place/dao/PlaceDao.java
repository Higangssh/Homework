package test.place.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.member.dto.MemberDto;
import test.place.dto.PlaceDto;
import test.util.DbcpBean;

public class PlaceDao {
	private static PlaceDao dao;
	private PlaceDao() {}
	public static PlaceDao getInstance() {
		if(dao == null) {
			dao = new PlaceDao();
		}
		return dao;
	}
	public boolean insert(PlaceDto dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int rowCount=0;
		try {
			conn=new DbcpBean().getConn();
			String sql="INSERT INTO placelist"
					+ " (num, name, addr, score)"
					+ " VALUES(?, ?, ?, ?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getAddr());
			pstmt.setInt(4, dto.getScore());
			rowCount=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {}
		}
		if(rowCount>0) {
			return true;
		}else {
			return false;
		}
	}
	//회원 정보 수정 리턴하는 메소드
	public boolean update(PlaceDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "UPDATE placelist"
					+ " SET name=?, addr=? score=? "
					+ " WHERE num = ?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 내용이 있으면 바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
			pstmt.setInt(3, dto.getScore());
			pstmt.setInt(4, dto.getNum());
			rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		if (rowCount > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	//회원 삭제하고 성공여부 리턴해주는 메소드
	public boolean delete(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "DELETE FROM member"
					+ " WHERE num=?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 내용이 있으면 바인딩
			pstmt.setInt(1, num);
			rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		if (rowCount > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	//회원정보 한로우 가지고 오는 메소드
	public PlaceDto getData(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PlaceDto dto = null;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "SELECT name,addr,score"
					+ " FROM member"
					+ " WHERE num =?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩할 내용이 있으면 여기서 한다.
			pstmt.setInt(1, num);
			//query 문 수행하고 결과(ResultSet) 얻어내기
			rs = pstmt.executeQuery();
			//반복문 돌면서 
			while (rs.next()) {
				dto =new PlaceDto();
				dto.setNum(num);
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setScore(rs.getInt("score"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close(); //Connection 객체의 close() 메소드를 호출하면 Pool 에 반납된다.
			} catch (Exception e) {
			}
		}
		return dto;
	}
	
	
	//회원 목록을 리턴해주는 메소드 
	public List<PlaceDto> getList(){
		
		List<PlaceDto> list=new ArrayList<>();

		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			//DbcpBean() 객체를 이용해서 Connection 객체 하나 얻어내기 (Connection Pool 에서 하나 꺼내오기)
			conn=new DbcpBean().getConn();
			//실행할 sql 문
			String sql="SELECT num, name, addr ,score"+
			 	" FROM placelist"+
				" ORDER BY num ASC";
			pstmt=conn.prepareStatement(sql);
			//query 문 수행하고 결과(ResultSet) 얻어내기
			rs=pstmt.executeQuery();
			//반복문 돌면서 
			while(rs.next()){
				//MemberDto 객체에 회원 한명, 한명의 정보를 담아서
				PlaceDto dto=new PlaceDto();
				dto.setNum(rs.getInt("num"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setScore(rs.getInt("score"));
				//ArrayList 객체에 누적 시킨다.
				list.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close(); //Connection 객체의 close() 메소드를 호출하면 Pool 에 반납된다.
			}catch(Exception e){}
		}
		return list;
	}
}



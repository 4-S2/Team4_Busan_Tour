package com.sist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sist.dbcp.CreateDBCPConnection;
import com.sist.vo.GoodsVO;

public class GoodsDAO {
	   private Connection conn; //데이터베이스 연결
	   private PreparedStatement ps;//SQL전송 , 결과값 
	   private static GoodsDAO dao;
	   // DBCP라이브러리 
	   private CreateDBCPConnection dbconn=
			        new CreateDBCPConnection();
	   
	   public static GoodsDAO newInstance() {
		   if (dao==null)
			   dao = new GoodsDAO();
			return dao;		   
	   }
	   
	// TOP 3 특산물 리스트 출력
	   public List<GoodsVO> goodsfindTop3()
	   {
	      List<GoodsVO> list=new ArrayList<>();
	      try
	      {
	         // 1. 연결 
	         conn=dbconn.getConnection();
	         // 2. SQL문장 전송 
	         String sql="SELECT gno,gname,poster,price FROM goods "
	                 +"WHERE gno IN(76,157,12)";
	         // 3. 미리 전송 
	         ps=conn.prepareStatement(sql);
	         // 4. 실행 요청전에 ?에 값을 채운다 
	         
	         // 5. 실행후에 결과값을 받는다 
	         ResultSet rs=ps.executeQuery();
	         while(rs.next()) // 출력 1번째 위치부터 읽기 시작 
	         {
	            GoodsVO vo=new GoodsVO();
	            vo.setGno(rs.getInt(1));
	            vo.setGname(rs.getString(2));
	            vo.setPoster(rs.getString(3));
	            vo.setPrice(rs.getString(4));
	            list.add(vo);
	         }
	         rs.close();
	      }catch(Exception ex)
	      {
	        // 에러 출력 
	         ex.printStackTrace();
	      }
	      finally
	      {
	         // 반환 => 재사용 
	         dbconn.disConnection(conn, ps);
	      }
	      return list;
	   }
}

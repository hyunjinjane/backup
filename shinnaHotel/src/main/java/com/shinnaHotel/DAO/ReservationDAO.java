package com.shinnaHotel.DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.shinnaHotel.DTO.ReservationDTO;
import com.shinnaHotel.mybatis.SqlMapConfig;

public class ReservationDAO {

	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public ReservationDAO() {
		sqlSession = factory.openSession(true);
	}
	

	public List<ReservationDTO> searchRoom(Map<String, Object> param) {
		System.out.println("dao도착");
		System.out.println(param);
		List<ReservationDTO> roomArr = sqlSession.selectList("Reservation.searchRoom", param);
		
		System.out.println(roomArr);
		
//		session test
		session.
		
//		test끝
		
		return roomArr;
	}
	
	
//	public boolean insertReservation(ReservationDTO rdto) {
//	boolean result = false;
//	
//	if(sqlSession.insert("Reservation.insertReservation",rdto) == 1) {
//		result = true;
//	}
//	return result;
//}
//
	
}

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
	
	public List<ReservationDTO> searchRoom(Map<String, Object> param){

		List<ReservationDTO> roomArr = new ArrayList<>();
		
		sqlSession.selectList("Reservation.searchRoom", param);
		
		System.out.println(roomArr);
		return roomArr;
	}

}

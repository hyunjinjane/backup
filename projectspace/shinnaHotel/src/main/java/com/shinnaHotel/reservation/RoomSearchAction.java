package com.shinnaHotel.reservation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shinnaHotel.DAO.ReservationDAO;
import com.shinnaHotel.action.Action;
import com.shinnaHotel.action.ActionForward;

public class RoomSearchAction implements Action{
	// 예약가능한 룸 조회
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		ReservationDAO rdao = new ReservationDAO();
		ActionForward forward = new ActionForward();
		
//		List<String> datas = new ArrayList<>();
		Map<String, Object> param = new HashMap<>();
		
		
		param.put("checkin_date", req.getParameter("checkin_date"));
		param.put("checkout_date", req.getParameter("checkout_date"));
		param.put("roomCnt", req.getParameter("roomCnt"));
		param.put("adults", req.getParameter("adults"));
		param.put("children", req.getParameter("children"));
		
		
		rdao.searchRoom(param);
		
		
		return forward;
	}
	 
}


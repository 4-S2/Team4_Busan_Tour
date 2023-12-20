package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import com.sist.dao.BusanDAO;
import com.sist.vo.BusanListVO;

public class BusanDetailModel {
	@RequestMapping("busan/food_detail.do")
	public String busan_food_detail(HttpServletRequest request,
			  HttpServletResponse response)
	{
		  // DB연동 
		  //1. 요청값 받기
		  String no=request.getParameter("no");

		  BusanDAO dao=new BusanDAO();
		  List<BusanListVO> list=dao.foodDetailData(Integer.parseInt(no));
		 
		  request.setAttribute("list", list);
		  //3. 결과값 모아서 request에 저장 
		  request.setAttribute("main_jsp", "../busan/food_detail.jsp");
		  return "../main/main.jsp";
	}
}

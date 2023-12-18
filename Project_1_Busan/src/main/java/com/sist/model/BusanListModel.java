package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.BusanListVO;
public class BusanListModel {
	// => if : => 
	@RequestMapping("busan/festival.do")
	public String busan_festival(HttpServletRequest request,
			  HttpServletResponse response)
	{
		  // DB연동 
		  //1. 요청값 받기
		  String page=request.getParameter("page");
		  if(page==null)
			  page="1";
		  int curpage=Integer.parseInt(page);
		  //2. DB연동 
		  BusanDAO dao=new BusanDAO();
		  List<BusanListVO> list=dao.BusanListData(curpage,"festival");
		  int totalpage=dao.BusanListTotalPage("festival");
		  
		  request.setAttribute("curpage", curpage);
		  request.setAttribute("totalpage", totalpage);
		  request.setAttribute("list", list);
		  //3. 결과값 모아서 request에 저장 
		  request.setAttribute("main_jsp", "../busan/festival.jsp");
		  return "../main/main.jsp";
	}
	
	
}
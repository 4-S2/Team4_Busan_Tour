package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import com.sist.dao.GoodsDAO;
import com.sist.vo.GoodsVO;

public class GoodsModel {
	@RequestMapping("busan/goods_detail.do")
	public String busan_goods_detail(HttpServletRequest request,
			  HttpServletResponse response)
	{
		  // DB연동 
		  //1. 요청값 받기
		  String no=request.getParameter("no");

		  GoodsDAO dao=new GoodsDAO();
		  List<GoodsVO> list=dao.goodsDetailData(Integer.parseInt(no));
		 
		  request.setAttribute("list", list);
		  //3. 결과값 모아서 request에 저장 
		  request.setAttribute("main_jsp", "../busan/goods_detail.jsp");
		  return "../main/main.jsp";
	}
	
	@RequestMapping("busan/goods.do")
	public String busan_goods_list(HttpServletRequest request,
			  HttpServletResponse response)
	{
		// DB연동 
		  //1. 요청값 받기
		  String page=request.getParameter("page");
		  if(page==null)
			  page="1";
		  int curpage=Integer.parseInt(page);
		  //2. DB연동 
		  GoodsDAO dao=new GoodsDAO();
		  List<GoodsVO> list=dao.goodsListData(curpage);
		  int totalpage=dao.goodsListTotalPage();
		  
		   final int BLOCK=10;
		   int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		   int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		   
		   if(endPage>totalpage)
			   endPage=totalpage;
		  
		  request.setAttribute("curpage", curpage);
		  request.setAttribute("totalpage", totalpage);
		   request.setAttribute("startPage", startPage);
		   request.setAttribute("endPage", endPage);
		  request.setAttribute("list", list);
		  //3. 결과값 모아서 request에 저장 
		  request.setAttribute("main_jsp", "../busan/goods_detail.jsp");
		  return "../main/main.jsp";
	}
}

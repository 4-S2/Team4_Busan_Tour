package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import com.sist.dao.BusanDAO;
import com.sist.dao.*;
import com.sist.vo.*;
/*
 *    1. DispatcherServlet
 *       => WEB-INF => application에 있는 클래스명을 읽는다 
 *       => 대기 
 *       => init은 서버구동시 한번만 수행 
 *    2. 사용자 접속 : service()
 *       => 사용자가 URL전송 
 *          main/main.do 
 *       =>  전체 XML에 등록된 Model을 읽어서 
 *           => @RequestMapping을 찾아서 메소드 호출 
 */
public class MainModel {
  @RequestMapping("main/main.do")
  public String main_main(HttpServletRequest request,
		  HttpServletResponse response)
  {		
	  
		
		BusanDAO topdao = BusanDAO.newInstance();
        ExDAO exTopDao = ExDAO.newInstance();
        
        NoticeDAO ndao = NoticeDAO.newInstance();
        QnaBoardDAO qdao = QnaBoardDAO.newInstance();
		
		 // 인기 맛집 Top 3 
		 List<BusanListVO> fdtoplist = topdao.findTop3("food");
		 request.setAttribute("fdtoplist", fdtoplist);
		 
		 List<ExVO> exToplist = exTopDao.mainpage_exData();
		 request.setAttribute("exToplist", exToplist);
		 
		 // 공지사항 1-4번
		 List<NoticeVO> nlist = ndao.noticefind4();
		 request.setAttribute("nlist", nlist);
		 
		 // 묻고 답하기 1-4번
		 List<QnaBoardVO> qlist = qdao.Qnafind4();
		 request.setAttribute("qlist", qlist);
		 
		/*
		 * // 인기 명소 Top 6 List<BusanListVO> ttoplist = topdao.findTop6("tour");
		 * request.setAttribute("ttoplist", ttoplist);
		 * 
		 * // 인기 맛집 Top 3 List<BusanListVO> fdtoplist = topdao.findTop6("food");
		 * request.setAttribute("fdtoplist", fdtoplist);
		 * 
		 * // 인기 축제 Top 6 List<BusanListVO> ftoplist = topdao.findTop6("festival");
		 * request.setAttribute("ftoplist", ftoplist);
		 * 
		 * // 인기 체험 Top 6 List<BusanListVO> atoplist = topdao.findTop6("activity");
		 * request.setAttribute("atoplist", atoplist);*/
		 
		 request.setAttribute("main_jsp", "../main/home.jsp"); 
		 return "../main/main.jsp";
		 
	  
  }
}
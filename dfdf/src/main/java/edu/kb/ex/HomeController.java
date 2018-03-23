package edu.kb.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import edu.kb.ex.dao.BoardDao;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	

	
	@RequestMapping("/main")
	public String main() {
		return "main";
	}
	@RequestMapping("/")
	public String home() {
		return "main";
	}
	
	
	@RequestMapping("/index")
	public String index() {
		
		return "index";
	}
	
	
	
	@RequestMapping("/writeForm")
	public String writeForm() {
		
		return "writeForm";
	}
	

	
//	@RequestMapping("/upHit")
//	public String upHit(HttpServletRequest request, Model model) {
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		dao.upHitDao(Integer.parseInt(request.getParameter("bId")));
//		
//		return 
//	}
//	
	
	
//	@RequestMapping("/replyShape")
//	public String replyShape(HttpServletRequest request, Model model) {
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		dao.modifyDao(request.getParameter("bName"),request.getParameter("bTitle"),request.getParameter("bContent"),Integer.parseInt(request.getParameter("bId")));
//		
//		return 
//	}
//	@RequestMapping("/index")
//	public String index() {
//		return "index";
//	}
	
//	@RequestMapping("/list")
//	public String list() {
//		return "list";
//	}
	
//	@RequestMapping("/qna")
//	public String qna() {
//		return "qna";
//	}
	
	@RequestMapping("/reservationInfo")
	public String reservationInfo() {
		return "reservationInfo";
	}
	
	@RequestMapping("/room")
	public String room() {
		return "room";
	}
	
	@RequestMapping("/realTime")
	public String realTime() {
		return "realTime";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "test";
	}
}
	



package edu.kb.ex;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.kb.ex.dao.AdminDao;
import edu.kb.ex.dao.BoardDao;
import edu.kb.ex.dto.AdminDto;
@RequestMapping("/admin")
@Controller
public class AdminController {
	
	private HttpSession httpSession;
	@Autowired
	private SqlSession sqlSession;

	
	@RequestMapping("/login")
	public String adminLogin(Model model , HttpServletRequest request) {
		if(httpSession!=null && httpSession.getAttribute("adminId")!=null) {
			return "admin/home";
		}else
			return "admin/login";
	}

	@RequestMapping("/logout")
	public String adminLogout(Model model , HttpServletRequest request) {
		if(httpSession!=null) {
			httpSession.removeAttribute("adminId");
		}
		return "admin/login";
	}
	
	@RequestMapping("/login_check")
	public String loginCheck(Model model , HttpServletRequest request) {
		String admin_id = request.getParameter("id");
		String admin_pw = request.getParameter("pw");
		AdminDao dao = sqlSession.getMapper(AdminDao.class);
		AdminDto dto = dao.confirmAdmin(admin_id, admin_pw);

		if(dto!=null) {
			httpSession = request.getSession();
			httpSession.setAttribute("adminId", dto.getAdminId());
			return "admin/home";
		}else
			return "admin/login";

	}
	@RequestMapping("/board_manager")
	public String mangerAdmin(Model model,HttpServletRequest request) {
		
		AdminDao admin_dao = sqlSession.getMapper(AdminDao.class);
		BoardDao board_dao = sqlSession.getMapper(BoardDao.class);
		String admin_id = (String)httpSession.getAttribute("adminId");
		
		if(admin_id!=null) {	
		int bType=Integer.parseInt(request.getParameter("bType"));
		
		model.addAttribute("board_type_list", admin_dao.managerBoard(admin_id));
		model.addAttribute("list", board_dao.boardList(bType));
		
		return "admin/boardManager/list";
		
		}else {
			return "admin/login";
		}
	}
	@RequestMapping("/write_board")
	public String writeBoard(Model model,HttpServletRequest request) {
		return "admin/boardManager/write";
	}
//	@RequestMapping("/update_board")
//	@RequestMapping("/delete_board")
//	@RequestMapping("/write_board")
	
	
//	
////	@RequestMapping("/review_list")
////	public String review(Model model) {
////		BoardDao dao = sqlSession.getMapper(BoardDao.class);
////		model.addAttribute("review", dao.reviewDao());
////		
////		return "boards/reviewBoard/list";
////	}
//	
//	@RequestMapping("/write")
//	public String write_view(HttpServletRequest request, Model model) {
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		dao.writeDao(request.getParameter("bName"),request.getParameter("bTitle"),request.getParameter("bContent"));
//		
//		return "redirect:review";
//	}
//	
//	
//	@RequestMapping("/c_content")
//	public String c_contentView(HttpServletRequest request, Model model) {
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		model.addAttribute("c_content", dao.c_contentDao(Integer.parseInt(request.getParameter("bId"))));
//		
//		return "c_content";
//	}
//	
//	@RequestMapping("/modify")
//	public String modify(HttpServletRequest request, Model model) {
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		dao.modifyDao(request.getParameter("bName"),request.getParameter("bTitle"),request.getParameter("bContent"),Integer.parseInt(request.getParameter("bId")));
//		
//		return "redirect:list";
//	}
//	
//	@RequestMapping("/delete")
//	public String delete(HttpServletRequest request, Model model) {
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		dao.deleteDao(request.getParameterValues("lists"));
//		
//		return "redirect:list";
//	}
//
////	@RequestMapping("/replyView")
////	public String replyView(HttpServletRequest request, Model model) {
////		BoardDao dao = sqlSession.getMapper(BoardDao.class);
////		model.addAttribute("content", dao.contentDao(Integer.parseInt(request.getParameter("bId"))));
////
////		return "reply_view";
////	}
//	
//	@RequestMapping("/reply")
//	public String reply(HttpServletRequest request, Model model) {
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		dao.modifyDao(request.getParameter("bName"),request.getParameter("bTitle"),request.getParameter("bContent"),Integer.parseInt(request.getParameter("bId")));
//		
//		return "redirect:list";
//	}
}


package edu.kb.ex;

import java.net.URI;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import edu.kb.ex.dao.BoardDao;

@Controller
public class BoardController {
	
	@Autowired
	private SqlSession sqlSession;

	
	@RequestMapping("/list")
	public String list(Model model , HttpServletRequest request) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		int page;
		int bType;

		page = Integer.parseInt(request.getParameter("page"));
		bType = Integer.parseInt(request.getParameter("bType"));
		model.addAttribute("list", dao.boardList(bType));
		model.addAttribute("count",dao.boardCount(bType));
		model.addAttribute("page",page);
		model.addAttribute("typeName",dao.boardType(bType));
		model.addAttribute("bType",bType);
			
//		case "/review_list":
//			page = Integer.parseInt(request.getParameter("page"));
//			model.addAttribute("review", dao.boardList(2,page));
//			model.addAttribute("count",dao.boardCount(2));
//			return "boards/reviewBoard/list";
		return "boards/list";
	}
	
	@RequestMapping("/content")
	public String contentView(HttpServletRequest request, Model model) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		int page;
		int bType;

		page = Integer.parseInt(request.getParameter("page"));
		bType = Integer.parseInt(request.getParameter("bType"));
		model.addAttribute("content", dao.boardContent(Integer.parseInt(request.getParameter("bId")),bType));
		model.addAttribute("page",page);
		model.addAttribute("typeName",dao.boardType(bType));
		model.addAttribute("bType",bType);
		return "boards/content";
	}

	
//	@RequestMapping("/review_list")
//	public String review(Model model) {
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		model.addAttribute("review", dao.reviewDao());
//		
//		return "boards/reviewBoard/list";
//	}
	@RequestMapping("/writeForm")
	public String writeForm(HttpServletRequest request, Model model) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		int bType = Integer.parseInt(request.getParameter("bType"));
		model.addAttribute("typeName",dao.boardType(bType));
		model.addAttribute("bType",bType);
		return "/boards/writeForm";
	}
	@RequestMapping("/write")
	public String write_view(HttpServletRequest request, Model model) {
		BoardDao board_dao = sqlSession.getMapper(BoardDao.class);
		int bType = Integer.parseInt(request.getParameter("bType"));
		String seqName = board_dao.boardTypeDto(bType).getSeqName();
		System.out.println(seqName+".nextval");
		board_dao.writeBoard(seqName+".nextval",request.getParameter("bName"),request.getParameter("bTitle"),request.getParameter("bContent"),bType);
		model.addAttribute("bType",bType);
		model.addAttribute("page",1);
		return "redirect:list";
	}
	
	@RequestMapping("/updateForm")
	public String updateForm(HttpServletRequest request, Model model) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		int bId   = Integer.parseInt(request.getParameter("bId"));
		int bType = Integer.parseInt(request.getParameter("bType"));
		int page  = Integer.parseInt(request.getParameter("page"));
		
		model.addAttribute("content", dao.boardContent(Integer.parseInt(request.getParameter("bId")),bType));
		model.addAttribute("typeName",dao.boardType(bType));
		model.addAttribute("bId",bId);
		model.addAttribute("bType",bType);
		model.addAttribute("page",page);
		return "/boards/updateForm";
	}
	@RequestMapping("/update")
	public String modify(HttpServletRequest request, Model model) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		
		int bType = Integer.parseInt(request.getParameter("bType"));
		int page  = Integer.parseInt(request.getParameter("page"));
		int bId   = Integer.parseInt(request.getParameter("bId"));

		String bName = request.getParameter("bName");
		String bTitle = request.getParameter("bTitle");
		String bContent = request.getParameter("bContent");
		
		model.addAttribute("bId",bId);
		model.addAttribute("bType",bType);
		model.addAttribute("page",page);
		model.addAttribute("content", dao.updateBoard(bId, bType,bName,bTitle,bContent));
		
		return "redirect:content";
	}
	
	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		int bType = Integer.parseInt(request.getParameter("bType"));
		int page  = Integer.parseInt(request.getParameter("page"));
		int bId   = Integer.parseInt(request.getParameter("bId"));
		dao.deleteBoard(bId,bType);
		model.addAttribute("bType",bType);
		model.addAttribute("page",page);
		
		return "redirect:list";
	}

//	@RequestMapping("/replyView")
//	public String replyView(HttpServletRequest request, Model model) {
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		model.addAttribute("content", dao.contentDao(Integer.parseInt(request.getParameter("bId"))));
//
//		return "reply_view";
//	}
	
	@RequestMapping("/reply")
	public String reply(HttpServletRequest request, Model model) {
		BoardDao dao = sqlSession.getMapper(BoardDao.class);
		dao.modifyDao(request.getParameter("bName"),request.getParameter("bTitle"),request.getParameter("bContent"),Integer.parseInt(request.getParameter("bId")));
		
		return "redirect:list";
	}
}


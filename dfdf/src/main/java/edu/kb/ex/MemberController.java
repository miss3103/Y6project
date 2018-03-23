package edu.kb.ex;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.kb.ex.dao.MemberDao;

@Controller
public class MemberController {
	@Autowired
	private SqlSession sqlSession;
	  
	  @RequestMapping("/login")
	    public String login() {

	        return "login";
	    }
	
	  @RequestMapping("/loginForm")
	    public String loginForm(Model model, HttpServletRequest request) {
		  MemberDao dao = sqlSession.getMapper(MemberDao.class);
		  model.addAttribute("user",dao.loginFormDao(request.getParameter("id"),request.getParameter("pwd")));

	        return "redirect:list";
	    }
		
		@RequestMapping("/signUp")
		public String signUp() {
			
			return "signUp";
		}
		
		@RequestMapping("/signUpForm")
		public String signUpForm(HttpServletRequest request, Model model) {
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			dao.signUpDao(request.getParameter("name"), request.getParameter("id"),request.getParameter("pwd"),Integer.parseInt(request.getParameter("phone")), request.getParameter("addr_code"), request.getParameter("addr_main"), request.getParameter("addr_side"));
			
			return "redirect:qna";
		}
		
		@RequestMapping("/myPage")
		public String myPage(HttpServletRequest request, Model model) {
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			model.addAttribute("myPage", dao.myPageDao(request.getParameter("id")));
			
			return "myPage";
		}
}

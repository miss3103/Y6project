package com.woone.goo;

import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import com.woone.goo.DAO.HdayDao;
import com.woone.goo.DAO.InfoDao;
import com.woone.goo.DAO.PlanDao;
import com.woone.goo.DAO.RoomDao;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	private SqlSession sqlSession;
	  
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/list")
	public String list() {
		return "list";
	}

	@RequestMapping("/qna")
	public String qna() {
		return "qna";
	}

	@RequestMapping("/reservationInfo")
	public String reservationInfo() {
		return "reservationInfo";
	}

	@RequestMapping("/room")
	public String room() {
		return "room";
	}

	@RequestMapping("/main")
	public String main() {
		return "main";
	}

	@RequestMapping("/realTime")
	public String realTime(Model model) {
		RoomDao dao = sqlSession.getMapper(RoomDao.class);
		model.addAttribute("vip",dao.Roomamount("VIP"));
		model.addAttribute("becky",dao.Roomamount("BECKY"));
		model.addAttribute("elisia",dao.Roomamount("ELISIA"));
		model.addAttribute("alice",dao.Roomamount("ALICE"));
		model.addAttribute("caris",dao.Roomamount("CARIS"));
		
		
		return "realTime2";
	}

	@RequestMapping("/test")
	public String test() {
		return "test";
	}

	@RequestMapping("/reservation")
	public String reservation(HttpServletRequest request, Model model) {
		RoomDao dao = sqlSession.getMapper(RoomDao.class);
		HdayDao hdao =  sqlSession.getMapper(HdayDao.class);
		PlanDao pdao = sqlSession.getMapper(PlanDao.class);
		InfoDao idao = sqlSession.getMapper(InfoDao.class);
		Date vip_checkin = null;
		try {
			vip_checkin = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("vip_checkin"));
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}	
		Date vip_checkout = null;
		try {
			vip_checkout = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("vip_checkout"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date caris_checkin = null;
		try {
			caris_checkin = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("caris_checkin"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date caris_checkout = null;
		try {
			caris_checkout = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("caris_checkout"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date becky_checkin = null;
		try {
			becky_checkin = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("becky_checkin"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date becky_checkout = null;
		try {
			becky_checkout = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("becky_checkout"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date elisia_checkin = null;
		try {
			elisia_checkin = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("elisia_checkin"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date elisia_checkout = null;
		try {
			elisia_checkout = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("elisia_checkout"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date alice_checkin = null;
		try {
			alice_checkin = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("alice_checkin"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Date alice_checkout = null;
		try {
			alice_checkout = new SimpleDateFormat("yyyy/MM/dd").parse(request.getParameter("alice_checkin"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int vip_people =Integer.parseInt(request.getParameter("vip_people"));
		int caris_people =  Integer.parseInt(request.getParameter("caris_people"));
		int becky_people =  Integer.parseInt(request.getParameter("becky_people"));
		int elisia_people =  Integer.parseInt(request.getParameter("elisia_people"));
		int alice_people =  Integer.parseInt(request.getParameter("alice_people"));	
		String vip = request.getParameter("vip");
		String caris = request.getParameter("caris");
		String becky = request.getParameter("becky");
		String elisia = request.getParameter("elisia");
		String alice = request.getParameter("alice");
		String name = request.getParameter("name");		
		int phone = Integer.parseInt(request.getParameter("phone"));
		
		
		String roomname = null;	
		
		if (vip != null) {
			model.addAttribute("pay",dao.Roompay(vip));			
			model.addAttribute("hday",hdao.Hdaycheck(vip_checkin));
			model.addAttribute("plan",pdao.plancheck(vip_checkin));
			roomname = "VIP";
			int vip_roompay = (dao.Roompay(vip)).getPrice();			
			model.addAttribute("people",vip_people);
			idao.Info(phone, name,vip_roompay, vip_checkin, vip_checkout,vip_people, roomname);
			model.addAttribute("roominfo",idao.Infodata(name, phone));
			System.out.println(name);
			}
		
		else if (caris != null) {
			model.addAttribute("pay",dao.Roompay(caris));
			model.addAttribute("hday",hdao.Hdaycheck(caris_checkin));
			model.addAttribute("plan",pdao.plancheck(caris_checkin));
			roomname = "카리스";
			int caris_roompay = (dao.Roompay(caris)).getPrice();			
			model.addAttribute("people",caris_people);
			idao.Info(phone, name,caris_roompay, caris_checkin, caris_checkout,caris_people, roomname);
			model.addAttribute("roominfo",idao.Infodata(name, phone));

		} else if (becky != null) {
			model.addAttribute("pay",dao.Roompay(becky));
			model.addAttribute("hday",hdao.Hdaycheck(becky_checkin));
			model.addAttribute("plan",pdao.plancheck(becky_checkin));
			roomname = "베키";
			int becky_roompay = (dao.Roompay(becky)).getPrice();			
			model.addAttribute("people",becky_people);
			idao.Info(phone, name,becky_roompay, becky_checkin, becky_checkout,becky_people, roomname);
			model.addAttribute("roominfo",idao.Infodata(name, phone));

		} else if (elisia != null) {
			model.addAttribute("pay",dao.Roompay(elisia));
			model.addAttribute("hday",hdao.Hdaycheck(elisia_checkin));
			model.addAttribute("plan",pdao.plancheck(elisia_checkin));
			roomname = "엘리시아";
			int elisia_roompay = (dao.Roompay(elisia)).getPrice();			
			model.addAttribute("people",elisia_people);
			idao.Info(phone, name,elisia_roompay, elisia_checkin, elisia_checkout,elisia_people, roomname);
			model.addAttribute("roominfo",idao.Infodata(name, phone));

		} else if (alice != null) {
			model.addAttribute("pay",dao.Roompay(alice));
			model.addAttribute("hday",hdao.Hdaycheck(alice_checkin));
			model.addAttribute("plan",pdao.plancheck(alice_checkin));
			roomname = "엘리스";
			int alice_roompay = (dao.Roompay(alice)).getPrice();			
			model.addAttribute("people",alice_people);
			idao.Info(phone, name,alice_roompay, alice_checkin, alice_checkout,alice_people, roomname);
			model.addAttribute("roominfo",idao.Infodata(name, phone));
		}		
		return "reservation";
	}

	@RequestMapping("/delete")
	public String cansel(HttpServletRequest request) {			
			String idx = request.getParameter("idx");		
			InfoDao idao = sqlSession.getMapper(InfoDao.class);;
			idao.deleteinfo(idx);
			
		return "main";
	}
}

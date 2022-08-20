package com.example.pension.controller;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.pension.dao.IDao;
import com.example.pension.dto.BoardDto;
import com.example.pension.dto.QboardDto;


@Controller
public class WebController {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	@RequestMapping(value="/")
	public String home() {
		
		return "java";
			
		}
	@RequestMapping(value="/main")
	public String main() {
		
		return "main";
		}
	
	
	@RequestMapping(value="/index")
	public String index() {
		
		return "index";
		}
	

	@RequestMapping(value="/java")
	public String java() {
		
		return "java";
	}
	
	@RequestMapping(value="/python")
	public String python() {
		
		return "python";
	}
	
	@RequestMapping(value="/calendar")
	public String calendar() {
		
		return "calendar";
	}
	
	
	@RequestMapping(value="/css")
	public String css() {
		
		return "css";
	}
	
	@RequestMapping(value="/oracle")
	public String oracle() {
		
		return "oracle";
	}
		
	@RequestMapping(value="/sujung")
	public String sujung() {
		
		return "sujung";
		}
	
	@RequestMapping(value="/register_ok")
	public String register_ok() {
		
		return "register_ok";
		}
	
	@RequestMapping(value="/location")
	public String location() {
		
		return "location";
		}

	
	@RequestMapping(value="/review")
	public String review(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<BoardDto> bDots = dao.review_listDao();
		
		model.addAttribute("review_list", bDots);
			
		return "review";
		}
	
	
	@RequestMapping(value="/review_input")
	public String review_input() {
		
		return "review_input";
	}
	
	@RequestMapping(value="/reviewOk")
	public String r_inputOk(HttpServletRequest request, Model model) {
	
		String ruser = request.getParameter("ruser");
		String rname = request.getParameter("rname");
		String rcontent = request.getParameter("rcontent");
		String rscore = request.getParameter("rscore");
		
		IDao dao = sqlSession.getMapper(IDao.class);
			dao.r_inputDao(ruser, rname, rcontent, rscore);
			
		return "redirect:review";
	}
	
	@RequestMapping(value="/qna")
	public String qna(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		ArrayList<QboardDto> bDots = dao.qna_listDao();
		model.addAttribute("qna_list", bDots);
			
		return "qna";
		}
	
	@RequestMapping(value="/qna_input")
	public String qna_input() {
		
		return "qna_input";
	}
	
	@RequestMapping(value="/qnaOk")
	public String qna_inputOk(HttpServletRequest request, Model model) {
	
		String qname = request.getParameter("qname");
		String qtitle = request.getParameter("qtitle");
		String qcontent = request.getParameter("qcontent");
		String qphone = request.getParameter("qphone");
		
		IDao dao = sqlSession.getMapper(IDao.class);
			dao.q_inputDao(qname, qtitle, qcontent, qphone);
			
		return "redirect:qna";
	}
	
	@RequestMapping(value = "/qview")
	public String qview(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		QboardDto QboardDto = dao.viewDao(qnum);
		
		model.addAttribute("QboardDto", QboardDto);
				
		return "qview";
	}	
	
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request) {
		
		String qnum = request.getParameter("qnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(qnum);
		return "redirect:qna";	
	}
}
	
package com.team3.cowork;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team3.model.Main_ProjectsDTO;
import com.team3.model.ProjectsDAO;
import com.team3.model.UserDAO;
import com.team3.model.UserDTO;


@Controller
public class CoworkController {

	@Autowired
	private UserDAO dao;
	
	@RequestMapping("testDB.do")
	public String testDB(Model model) {
		UserDTO dto = this.dao.testDB();
		model.addAttribute("Test", dto);
		return "testDB";
	}

	@RequestMapping("login.do")
	public String login(Model model) {
		return "login";
	}
	// ProjectDAO 변수 생성 _ 세건
		@Autowired
		private ProjectsDAO dao_projects;

		// 프로젝트 목록 생성 페이지 _ 세건
		@RequestMapping("project_control.do")
		public String project_control(Model model) {
			List<com.team3.model.ProjectsDTO> list = this.dao_projects.getProjectsList();
			List<Main_ProjectsDTO> main = this.dao_projects.getMainList();
			model.addAttribute("list", list);
			model.addAttribute("main", main);
			return "project_control";
		}
		
		// 프로젝트 생성 페이지 _ 세건
		@RequestMapping("project_insert.do")
		public String project_insert(Model model) {
			List<Main_ProjectsDTO> main = this.dao_projects.getMainList();
			model.addAttribute("main", main);
			return "project_insert";
		}
	
}

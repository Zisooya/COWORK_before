package com.team3.groupware;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team3.model.UserDAO;
import com.team3.model.UserDTO;


@Controller
public class GroupwareController {

	@Autowired
	private UserDAO dao;
	
	@RequestMapping("testDB.do")
	public String testDB(Model model) {
		UserDTO dto = this.dao.testDB();
		model.addAttribute("Test", dto);
		return "testDB";
	}
	
}

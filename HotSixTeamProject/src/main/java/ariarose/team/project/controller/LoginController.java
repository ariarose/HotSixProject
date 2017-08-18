package ariarose.team.project.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import ariarose.team.project.service.LoginService;
import ariarose.team.project.vo.UserVO;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Inject
	private LoginService service;
	
	@RequestMapping("/loginMain")
	public void loginMain(){}
	
	@RequestMapping("/loginUser")
	public ResponseEntity<UserVO> loginUser(
			@RequestBody UserVO vo){
		System.out.println("들어왔다"+vo);
		ResponseEntity<UserVO> entity = null;
		
		if(service.loginUser(vo)){
			entity = new ResponseEntity<UserVO>(vo, HttpStatus.OK);
		} else {
			entity = new ResponseEntity<UserVO>(vo, HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
}

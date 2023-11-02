package com.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kopo.security.JoinUserDetails;
import com.kopo.security.JoinUserDetailsService;

@Controller
public class LoginoutController {


	@Autowired
	private JoinUserDetailsService registrationService;

	//로그인 아웃 관련된것만 매핑하기 
/*	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login() {
		
		return "loginPage";
	}
	*/
	//로그인 
	@GetMapping("/login")
	public String requestLogin(String error,Model model) {
		
		if(error != null) {
			model.addAttribute("error", error);
		}
		return "loginPage";	
	}
	
	//로그인 성공 매핑
		@GetMapping("/loginSuccess") 
			public String requsetLoginSuccess (HttpServletRequest request,RedirectAttributes re) {
				
			String uri = request.getHeader("referer"); // 로그 아웃 시 이전 uri를  찾아서 flashattribute로 보내준다
			
			return "redirect:/";
			/* return "redirect:"+ uri; */
					
		}
		/*//로그아웃  매핑
		@GetMapping("/loout")
		public String requestLogout(String error,Model model) {
			
			if(error != null) {
				model.addAttribute("error", error);
			}
			return "loginPage";	
		}*/
	//로그아웃처리
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {
	session.invalidate();
	ModelAndView mv = new ModelAndView("redirect:/");
	 return mv;
	 }	
	//로그아웃  매핑
	@GetMapping("/logoutredirect") 
		public String requsetLogoutSuccess (HttpServletRequest request,RedirectAttributes re) {
			
		String uri = request.getHeader("referer"); // 로그 아웃 시 이전 uri를  찾아서 flashattribute로 보내준다
			re.addFlashAttribute("Error", true);  // 반환해야하는게 있으면 담아서 보내기
		
		return "redirect:"+uri;
				
	}
	@GetMapping("/acccessError")
	public void accessDenied(Authentication auth,Model model) {
		
	}
	@GetMapping("/register")
	public String requestSignUp(@ModelAttribute("Registration")JoinUserDetails registration) {
		
		return "register";
	}
	@PostMapping("/register")
	public String insertNewUse(@ModelAttribute("Registration")JoinUserDetails registration) {
		
		registrationService.setNewUser(registration);
		
		return "redirect:/";
	}

	}
	
	

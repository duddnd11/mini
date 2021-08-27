package com.yw.security;

import java.io.IOException;
import java.net.URLEncoder;
import java.security.Principal;
import java.util.Collection;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AnonymousAuthenticationFilter;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.csrf.CsrfLogoutHandler;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public class CustomUserFailHandler implements AuthenticationFailureHandler {
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		String loginFailMsg ="";
		if (exception instanceof AuthenticationServiceException) {
			loginFailMsg=URLEncoder.encode("존재하지 않는 사용자 입니다.", "UTF-8");
			request.setAttribute("loginFailMsg", loginFailMsg);
		
		} else if(exception instanceof BadCredentialsException) {
			loginFailMsg=URLEncoder.encode("아이디 또는 비밀번호가 틀립니다.", "UTF-8");
			request.setAttribute("loginFailMsg", loginFailMsg);
		}
		Principal principal = request.getUserPrincipal();
		System.out.println(principal+",실패,");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		System.out.println("1:"+auth);
		AnonymousAuthenticationFilter filter = new AnonymousAuthenticationFilter(UUID.randomUUID().toString());
		System.out.println("filter:"+filter);
		System.out.println("filter:"+filter.getPrincipal());
		//AnonymousAuthenticationToken token = new AnonymousAuthenticationToken(key, principal, authorities);
		// 로그인 페이지로 다시 포워딩
		RequestDispatcher dispatcher = request.getRequestDispatcher("/userLogin2");
//		dispatcher.forward(request, response);
		
		// 리다이렉트
		response.sendRedirect("/www/userLogin2?loginFailMsg="+loginFailMsg);
	}

}

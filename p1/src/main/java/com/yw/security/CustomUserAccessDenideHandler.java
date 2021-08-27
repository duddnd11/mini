package com.yw.security;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.access.AccessDeniedHandler;

public class CustomUserAccessDenideHandler implements AccessDeniedHandler {
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
		String category = URLEncoder.encode("매치","UTF-8");
		String url = "/match?category="+category;
		//System.out.println(request.getUserPrincipal());
		if(request.getRequestURI().equals("/www/userLogin2")) {
			redirectStrategy.sendRedirect(request, response, url);
		}else {
			redirectStrategy.sendRedirect(request, response, "/denie");
		}
	}

}

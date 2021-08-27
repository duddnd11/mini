package com.yw.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public class CustomUserEntryPoint implements AuthenticationEntryPoint{
	private RequestCache requestCache = new HttpSessionRequestCache();
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	@Override
	public void commence(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException authException) throws IOException, ServletException {
		String header =request.getHeader("x-requested-with");
		if(header!=null && header.equals("XMLHttpRequest")) {
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Unauthorized");
		}else {
			response.sendRedirect("/www/userLogin2");
		}
		
	}
}

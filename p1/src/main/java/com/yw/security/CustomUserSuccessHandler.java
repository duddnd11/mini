package com.yw.security;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;

public class CustomUserSuccessHandler implements AuthenticationSuccessHandler{
	private RequestCache requestCache = new HttpSessionRequestCache();
	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		String category = URLEncoder.encode("매치","UTF-8");
		String url = "/match?category="+category;
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		HttpSession session = request.getSession();
		String reUrl =(String) session.getAttribute("prevPage");
		System.out.println(reUrl);
	
		if(reUrl.contains("userSignUp")) {
			redirectStrategy.sendRedirect(request, response, url);
		}else if(savedRequest==null){
			session.removeAttribute("prevPage");
			redirectStrategy.sendRedirect(request, response, reUrl);
		}else {
			redirectStrategy.sendRedirect(request, response, savedRequest.getRedirectUrl());
		}
		
	}
}

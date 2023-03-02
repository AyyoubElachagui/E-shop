package com.lus.dawm.middleware;

import java.io.IOException;
import java.net.http.HttpRequest;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lus.dawm.models.Utilisateur;

/**
 * Servlet Filter implementation class AuthMiddleware
 */
@WebFilter("/AuthMiddleware")
public class AuthMiddleware extends HttpFilter implements Filter {
    
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpRes = (HttpServletResponse) response;
		
		HttpSession session = httpReq.getSession();
		
		Utilisateur user = (Utilisateur) session.getAttribute("user");
		
		if(user != null) {
			chain.doFilter(request, response);
		}else {
			httpRes.sendRedirect(httpReq.getContextPath()+"/auth/login.html");
		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}

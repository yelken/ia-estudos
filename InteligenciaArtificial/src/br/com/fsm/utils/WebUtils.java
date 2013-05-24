package br.com.fsm.utils;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class WebUtils extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public static final void adicionarObjetoSessao(HttpServletRequest request, String nomeObjeto, Object objeto) {
		HttpSession session = request.getSession();
		session.setAttribute(nomeObjeto, objeto);
	}

	public static final void bloquearGravacaoCache(HttpServletResponse response) throws IOException {
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", -1);
	}

	public static final void clearSession(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();
	}

	public static final void escreverLinha(HttpServletResponse response, String param) throws IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		pw.println(param);
	}

	public static final Object getObjetoSessao(ServletRequest request, String param) {
		HttpSession session = ((HttpServletRequest) request).getSession();
		return session.getAttribute(param);
	}

	public static final void removerObjetoSessao(HttpServletRequest request, String nomeObjeto) {
		HttpSession session = request.getSession();
		session.removeAttribute(nomeObjeto);
	}

	public WebUtils() {
		super();
	}

}

package br.com.fsm.servlet;

import java.io.IOException;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.fsm.business.BusinessSinapse;
import br.com.fsm.utils.WebUtils;

public class ServletReconhecimento extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public ServletReconhecimento() {
		super();
	}

	@SuppressWarnings("unchecked")
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BusinessSinapse sinapse = new BusinessSinapse();

		String x1 = request.getParameter("x1");
		String x2 = request.getParameter("x2");
		String x3 = request.getParameter("x3");
		String x4 = request.getParameter("x4");
		String x5 = request.getParameter("x5");
		String x6 = request.getParameter("x6");
		String x7 = request.getParameter("x7");
		String x8 = request.getParameter("x8");
		String x9 = request.getParameter("x9");
		String x10 = request.getParameter("x10");
		String x11 = request.getParameter("x11");
		String x12 = request.getParameter("x12");
		String x13 = request.getParameter("x13");
		String x14 = request.getParameter("x14");
		String x15 = request.getParameter("x15");
		String x16 = request.getParameter("x16");
		String x17 = request.getParameter("x17");
		String x18 = request.getParameter("x18");
		String x19 = request.getParameter("x19");
		String x20 = request.getParameter("x20");
		String x21 = request.getParameter("x21");
		String x22 = request.getParameter("x22");
		String x23 = request.getParameter("x23");
		String x24 = request.getParameter("x24");
		String x25 = request.getParameter("x25");

		LinkedList<Integer> entradas = new LinkedList<Integer>();
		entradas.add(1);
		entradas.add(Integer.valueOf(x1));
		entradas.add(Integer.valueOf(x2));
		entradas.add(Integer.valueOf(x3));
		entradas.add(Integer.valueOf(x4));
		entradas.add(Integer.valueOf(x5));
		entradas.add(Integer.valueOf(x6));
		entradas.add(Integer.valueOf(x7));
		entradas.add(Integer.valueOf(x8));
		entradas.add(Integer.valueOf(x9));
		entradas.add(Integer.valueOf(x10));
		entradas.add(Integer.valueOf(x11));
		entradas.add(Integer.valueOf(x12));
		entradas.add(Integer.valueOf(x13));
		entradas.add(Integer.valueOf(x14));
		entradas.add(Integer.valueOf(x15));
		entradas.add(Integer.valueOf(x16));
		entradas.add(Integer.valueOf(x17));
		entradas.add(Integer.valueOf(x18));
		entradas.add(Integer.valueOf(x19));
		entradas.add(Integer.valueOf(x20));
		entradas.add(Integer.valueOf(x21));
		entradas.add(Integer.valueOf(x22));
		entradas.add(Integer.valueOf(x23));
		entradas.add(Integer.valueOf(x24));
		entradas.add(Integer.valueOf(x25));

		try {
			WebUtils.escreverLinha(response, sinapse.reconhecerCaracter(entradas, (LinkedList<Integer>) WebUtils.getObjetoSessao(request, "pesos")));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BusinessSinapse sinapse = new BusinessSinapse();

		LinkedList<Integer> entradas = new LinkedList<Integer>();
		entradas.add(1);
		entradas.add((Integer) request.getAttribute("x1"));
		entradas.add((Integer) request.getAttribute("x2"));
		entradas.add((Integer) request.getAttribute("x3"));
		entradas.add((Integer) request.getAttribute("x4"));
		entradas.add((Integer) request.getAttribute("x5"));
		entradas.add((Integer) request.getAttribute("x6"));
		entradas.add((Integer) request.getAttribute("x7"));
		entradas.add((Integer) request.getAttribute("x8"));
		entradas.add((Integer) request.getAttribute("x9"));
		entradas.add((Integer) request.getAttribute("x10"));
		entradas.add((Integer) request.getAttribute("x11"));
		entradas.add((Integer) request.getAttribute("x12"));
		entradas.add((Integer) request.getAttribute("x13"));
		entradas.add((Integer) request.getAttribute("x14"));
		entradas.add((Integer) request.getAttribute("x15"));
		entradas.add((Integer) request.getAttribute("x16"));
		entradas.add((Integer) request.getAttribute("x17"));
		entradas.add((Integer) request.getAttribute("x18"));
		entradas.add((Integer) request.getAttribute("x19"));
		entradas.add((Integer) request.getAttribute("x20"));
		entradas.add((Integer) request.getAttribute("x21"));
		entradas.add((Integer) request.getAttribute("x22"));
		entradas.add((Integer) request.getAttribute("x23"));
		entradas.add((Integer) request.getAttribute("x24"));
		entradas.add((Integer) request.getAttribute("x25"));

		try {
			WebUtils.escreverLinha(response, sinapse.reconhecerCaracter(entradas, (LinkedList<Integer>) WebUtils.getObjetoSessao(request, "pesos")));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

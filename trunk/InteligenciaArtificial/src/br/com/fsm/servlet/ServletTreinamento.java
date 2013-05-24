package br.com.fsm.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.fsm.business.BusinessSinapse;
import br.com.fsm.utils.WebUtils;

public class ServletTreinamento extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public ServletTreinamento() {

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			BusinessSinapse sinapse = new BusinessSinapse();
			WebUtils.adicionarObjetoSessao(request, "pesos", sinapse.treinarRedeNeural());
			WebUtils.escreverLinha(response, "Rede neural treinada com sucesso");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BusinessSinapse sinapse = new BusinessSinapse();

		try {
			WebUtils.adicionarObjetoSessao(request, "pesos", sinapse.treinarRedeNeural());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

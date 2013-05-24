package br.com.fsm.test;

import br.com.fsm.business.BusinessSinapse;

public class Test {

	public static void main(String[] args) throws Exception {

		// for (int x = 1; x < 26; x++) {
		// System.out.println("Integer.valueOf(x" + x + ")");
		// }

		BusinessSinapse sinapse = new BusinessSinapse();
		sinapse.treinarRedeNeural();
		// System.out.println("Letra pela sinapse: " + sinapse.reconhecerCaracter(Utils.getCaracteresRedeNeural().get(0).getEntradas(),
		// pesos));
		//
		// LinkedList<Integer> entradasA = new LinkedList<Integer>();
		// entradasA.add(1);
		// entradasA.add(1);
		// entradasA.add(1);
		// entradasA.add(0);
		// entradasA.add(1);
		// entradasA.add(1);
		// entradasA.add(1);
		// entradasA.add(0);
		// entradasA.add(0);
		// entradasA.add(0);
		// entradasA.add(1);
		// entradasA.add(1);
		// entradasA.add(0);
		// entradasA.add(1);
		// entradasA.add(1);
		// entradasA.add(1);
		// entradasA.add(1);
		// entradasA.add(0);
		// entradasA.add(0);
		// entradasA.add(0);
		// entradasA.add(1);
		// entradasA.add(1);
		// entradasA.add(0);
		// entradasA.add(0);
		// entradasA.add(0);
		// entradasA.add(1);
		//
		// System.out.println("Letra pela sinapse alterada: " + sinapse.reconhecerCaracter(entradasA, pesos));

	}

}

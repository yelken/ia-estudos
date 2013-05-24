package br.com.fsm.business;

import java.util.LinkedList;
import br.com.fsm.bean.Caracter;
import br.com.fsm.utils.Utils;

public class BusinessSinapse {

	public String reconhecerCaracter(LinkedList<Integer> entradas, LinkedList<Integer> pesos) throws Exception {

		String retorno = "";
		LinkedList<Caracter> caracteres = Utils.getCaracteresRedeNeural();
		LinkedList<Integer> neuronios = Utils.calcularSaidas(entradas, pesos);

		Integer saidaEncontrada1 = neuronios.get(0);
		Integer saidaEncontrada2 = neuronios.get(1);
		Integer saidaEncontrada3 = neuronios.get(2);

		for (int i = 0; i < caracteres.size(); i++) {
			if (caracteres.get(i).getSaidas().get(0).equals(saidaEncontrada1) && caracteres.get(i).getSaidas().get(1).equals(saidaEncontrada2)
					&& caracteres.get(i).getSaidas().get(2).equals(saidaEncontrada3)) {
				retorno = caracteres.get(i).getValor();
			}
		}

		return retorno;
	}

	public LinkedList<Integer> treinarRedeNeural() throws Exception {

		LinkedList<Integer> pesos = new LinkedList<Integer>();

		for (int y = 0; y < 78; y++) {
			pesos.add(0);
		}

		LinkedList<Caracter> caracteres = Utils.getCaracteresRedeNeural();

		Boolean errou = false;

		for (int i = 0; i < caracteres.size(); i++) {

			if (i == 0) {
				errou = false;
			}

			Caracter caracter = caracteres.get(i);

			LinkedList<Integer> neuronios = Utils.calcularSaidas(caracter.getEntradas(), pesos);

			Integer saidaEncontrada1 = neuronios.get(0);
			Integer saidaEncontrada2 = neuronios.get(1);
			Integer saidaEncontrada3 = neuronios.get(2);

			Integer erro1 = Utils.calcularErro(caracter.getSaidas().get(0), saidaEncontrada1);
			Integer erro2 = Utils.calcularErro(caracter.getSaidas().get(1), saidaEncontrada2);
			Integer erro3 = Utils.calcularErro(caracter.getSaidas().get(2), saidaEncontrada3);

			if (erro1.equals(0) && erro2.equals(0) && erro3.equals(0)) {
				System.out.println("Acertou!");
				System.out.println("Letra: " + caracter.getValor());

				if (!errou) {
					errou = false;
				}

			} else {
				System.out.println("Errou!");
				errou = true;

				// Neuronio1
				Integer pesoNovo0 = Utils.calcularPesoNovo(pesos.get(0), erro1, caracter.getEntradas().get(0));
				Integer pesoNovo1 = Utils.calcularPesoNovo(pesos.get(1), erro1, caracter.getEntradas().get(1));
				Integer pesoNovo2 = Utils.calcularPesoNovo(pesos.get(2), erro1, caracter.getEntradas().get(2));
				Integer pesoNovo3 = Utils.calcularPesoNovo(pesos.get(3), erro1, caracter.getEntradas().get(3));
				Integer pesoNovo4 = Utils.calcularPesoNovo(pesos.get(4), erro1, caracter.getEntradas().get(4));
				Integer pesoNovo5 = Utils.calcularPesoNovo(pesos.get(5), erro1, caracter.getEntradas().get(5));
				Integer pesoNovo6 = Utils.calcularPesoNovo(pesos.get(6), erro1, caracter.getEntradas().get(6));
				Integer pesoNovo7 = Utils.calcularPesoNovo(pesos.get(7), erro1, caracter.getEntradas().get(7));
				Integer pesoNovo8 = Utils.calcularPesoNovo(pesos.get(8), erro1, caracter.getEntradas().get(8));
				Integer pesoNovo9 = Utils.calcularPesoNovo(pesos.get(9), erro1, caracter.getEntradas().get(9));
				Integer pesoNovo10 = Utils.calcularPesoNovo(pesos.get(10), erro1, caracter.getEntradas().get(10));
				Integer pesoNovo11 = Utils.calcularPesoNovo(pesos.get(11), erro1, caracter.getEntradas().get(11));
				Integer pesoNovo12 = Utils.calcularPesoNovo(pesos.get(12), erro1, caracter.getEntradas().get(12));
				Integer pesoNovo13 = Utils.calcularPesoNovo(pesos.get(13), erro1, caracter.getEntradas().get(13));
				Integer pesoNovo14 = Utils.calcularPesoNovo(pesos.get(14), erro1, caracter.getEntradas().get(14));
				Integer pesoNovo15 = Utils.calcularPesoNovo(pesos.get(15), erro1, caracter.getEntradas().get(15));
				Integer pesoNovo16 = Utils.calcularPesoNovo(pesos.get(16), erro1, caracter.getEntradas().get(16));
				Integer pesoNovo17 = Utils.calcularPesoNovo(pesos.get(17), erro1, caracter.getEntradas().get(17));
				Integer pesoNovo18 = Utils.calcularPesoNovo(pesos.get(18), erro1, caracter.getEntradas().get(18));
				Integer pesoNovo19 = Utils.calcularPesoNovo(pesos.get(19), erro1, caracter.getEntradas().get(19));
				Integer pesoNovo20 = Utils.calcularPesoNovo(pesos.get(20), erro1, caracter.getEntradas().get(20));
				Integer pesoNovo21 = Utils.calcularPesoNovo(pesos.get(21), erro1, caracter.getEntradas().get(21));
				Integer pesoNovo22 = Utils.calcularPesoNovo(pesos.get(22), erro1, caracter.getEntradas().get(22));
				Integer pesoNovo23 = Utils.calcularPesoNovo(pesos.get(23), erro1, caracter.getEntradas().get(23));
				Integer pesoNovo24 = Utils.calcularPesoNovo(pesos.get(24), erro1, caracter.getEntradas().get(24));
				Integer pesoNovo25 = Utils.calcularPesoNovo(pesos.get(25), erro1, caracter.getEntradas().get(25));

				// Neuronio2
				Integer pesoNovo26 = Utils.calcularPesoNovo(pesos.get(26), erro2, caracter.getEntradas().get(0));
				Integer pesoNovo27 = Utils.calcularPesoNovo(pesos.get(27), erro2, caracter.getEntradas().get(1));
				Integer pesoNovo28 = Utils.calcularPesoNovo(pesos.get(28), erro2, caracter.getEntradas().get(2));
				Integer pesoNovo29 = Utils.calcularPesoNovo(pesos.get(29), erro2, caracter.getEntradas().get(3));
				Integer pesoNovo30 = Utils.calcularPesoNovo(pesos.get(30), erro2, caracter.getEntradas().get(4));
				Integer pesoNovo31 = Utils.calcularPesoNovo(pesos.get(31), erro2, caracter.getEntradas().get(5));
				Integer pesoNovo32 = Utils.calcularPesoNovo(pesos.get(32), erro2, caracter.getEntradas().get(6));
				Integer pesoNovo33 = Utils.calcularPesoNovo(pesos.get(33), erro2, caracter.getEntradas().get(7));
				Integer pesoNovo34 = Utils.calcularPesoNovo(pesos.get(34), erro2, caracter.getEntradas().get(8));
				Integer pesoNovo35 = Utils.calcularPesoNovo(pesos.get(35), erro2, caracter.getEntradas().get(9));
				Integer pesoNovo36 = Utils.calcularPesoNovo(pesos.get(36), erro2, caracter.getEntradas().get(10));
				Integer pesoNovo37 = Utils.calcularPesoNovo(pesos.get(37), erro2, caracter.getEntradas().get(11));
				Integer pesoNovo38 = Utils.calcularPesoNovo(pesos.get(38), erro2, caracter.getEntradas().get(12));
				Integer pesoNovo39 = Utils.calcularPesoNovo(pesos.get(39), erro2, caracter.getEntradas().get(13));
				Integer pesoNovo40 = Utils.calcularPesoNovo(pesos.get(40), erro2, caracter.getEntradas().get(14));
				Integer pesoNovo41 = Utils.calcularPesoNovo(pesos.get(41), erro2, caracter.getEntradas().get(15));
				Integer pesoNovo42 = Utils.calcularPesoNovo(pesos.get(42), erro2, caracter.getEntradas().get(16));
				Integer pesoNovo43 = Utils.calcularPesoNovo(pesos.get(43), erro2, caracter.getEntradas().get(17));
				Integer pesoNovo44 = Utils.calcularPesoNovo(pesos.get(44), erro2, caracter.getEntradas().get(18));
				Integer pesoNovo45 = Utils.calcularPesoNovo(pesos.get(45), erro2, caracter.getEntradas().get(19));
				Integer pesoNovo46 = Utils.calcularPesoNovo(pesos.get(46), erro2, caracter.getEntradas().get(20));
				Integer pesoNovo47 = Utils.calcularPesoNovo(pesos.get(47), erro2, caracter.getEntradas().get(21));
				Integer pesoNovo48 = Utils.calcularPesoNovo(pesos.get(48), erro2, caracter.getEntradas().get(22));
				Integer pesoNovo49 = Utils.calcularPesoNovo(pesos.get(49), erro2, caracter.getEntradas().get(23));
				Integer pesoNovo50 = Utils.calcularPesoNovo(pesos.get(50), erro2, caracter.getEntradas().get(24));
				Integer pesoNovo51 = Utils.calcularPesoNovo(pesos.get(51), erro2, caracter.getEntradas().get(25));

				// Neuronio3
				Integer pesoNovo52 = Utils.calcularPesoNovo(pesos.get(52), erro3, caracter.getEntradas().get(0));
				Integer pesoNovo53 = Utils.calcularPesoNovo(pesos.get(53), erro3, caracter.getEntradas().get(1));
				Integer pesoNovo54 = Utils.calcularPesoNovo(pesos.get(54), erro3, caracter.getEntradas().get(2));
				Integer pesoNovo55 = Utils.calcularPesoNovo(pesos.get(55), erro3, caracter.getEntradas().get(3));
				Integer pesoNovo56 = Utils.calcularPesoNovo(pesos.get(56), erro3, caracter.getEntradas().get(4));
				Integer pesoNovo57 = Utils.calcularPesoNovo(pesos.get(57), erro3, caracter.getEntradas().get(5));
				Integer pesoNovo58 = Utils.calcularPesoNovo(pesos.get(58), erro3, caracter.getEntradas().get(6));
				Integer pesoNovo59 = Utils.calcularPesoNovo(pesos.get(59), erro3, caracter.getEntradas().get(7));
				Integer pesoNovo60 = Utils.calcularPesoNovo(pesos.get(60), erro3, caracter.getEntradas().get(8));
				Integer pesoNovo61 = Utils.calcularPesoNovo(pesos.get(61), erro3, caracter.getEntradas().get(9));
				Integer pesoNovo62 = Utils.calcularPesoNovo(pesos.get(62), erro3, caracter.getEntradas().get(10));
				Integer pesoNovo63 = Utils.calcularPesoNovo(pesos.get(63), erro3, caracter.getEntradas().get(11));
				Integer pesoNovo64 = Utils.calcularPesoNovo(pesos.get(64), erro3, caracter.getEntradas().get(12));
				Integer pesoNovo65 = Utils.calcularPesoNovo(pesos.get(65), erro3, caracter.getEntradas().get(13));
				Integer pesoNovo66 = Utils.calcularPesoNovo(pesos.get(66), erro3, caracter.getEntradas().get(14));
				Integer pesoNovo67 = Utils.calcularPesoNovo(pesos.get(67), erro3, caracter.getEntradas().get(15));
				Integer pesoNovo68 = Utils.calcularPesoNovo(pesos.get(68), erro3, caracter.getEntradas().get(16));
				Integer pesoNovo69 = Utils.calcularPesoNovo(pesos.get(69), erro3, caracter.getEntradas().get(17));
				Integer pesoNovo70 = Utils.calcularPesoNovo(pesos.get(70), erro3, caracter.getEntradas().get(18));
				Integer pesoNovo71 = Utils.calcularPesoNovo(pesos.get(71), erro3, caracter.getEntradas().get(19));
				Integer pesoNovo72 = Utils.calcularPesoNovo(pesos.get(72), erro3, caracter.getEntradas().get(20));
				Integer pesoNovo73 = Utils.calcularPesoNovo(pesos.get(73), erro3, caracter.getEntradas().get(21));
				Integer pesoNovo74 = Utils.calcularPesoNovo(pesos.get(74), erro3, caracter.getEntradas().get(22));
				Integer pesoNovo75 = Utils.calcularPesoNovo(pesos.get(75), erro3, caracter.getEntradas().get(23));
				Integer pesoNovo76 = Utils.calcularPesoNovo(pesos.get(76), erro3, caracter.getEntradas().get(24));
				Integer pesoNovo77 = Utils.calcularPesoNovo(pesos.get(77), erro3, caracter.getEntradas().get(25));

				// Adiciona os novos pesos;
				pesos.clear();
				pesos.add(pesoNovo0);
				pesos.add(pesoNovo1);
				pesos.add(pesoNovo2);
				pesos.add(pesoNovo3);
				pesos.add(pesoNovo4);
				pesos.add(pesoNovo5);
				pesos.add(pesoNovo6);
				pesos.add(pesoNovo7);
				pesos.add(pesoNovo8);
				pesos.add(pesoNovo9);
				pesos.add(pesoNovo10);
				pesos.add(pesoNovo11);
				pesos.add(pesoNovo12);
				pesos.add(pesoNovo13);
				pesos.add(pesoNovo14);
				pesos.add(pesoNovo15);
				pesos.add(pesoNovo16);
				pesos.add(pesoNovo17);
				pesos.add(pesoNovo18);
				pesos.add(pesoNovo19);
				pesos.add(pesoNovo20);
				pesos.add(pesoNovo21);
				pesos.add(pesoNovo22);
				pesos.add(pesoNovo23);
				pesos.add(pesoNovo24);
				pesos.add(pesoNovo25);
				pesos.add(pesoNovo26);
				pesos.add(pesoNovo27);
				pesos.add(pesoNovo28);
				pesos.add(pesoNovo29);
				pesos.add(pesoNovo30);
				pesos.add(pesoNovo31);
				pesos.add(pesoNovo32);
				pesos.add(pesoNovo33);
				pesos.add(pesoNovo34);
				pesos.add(pesoNovo35);
				pesos.add(pesoNovo36);
				pesos.add(pesoNovo37);
				pesos.add(pesoNovo38);
				pesos.add(pesoNovo39);
				pesos.add(pesoNovo40);
				pesos.add(pesoNovo41);
				pesos.add(pesoNovo42);
				pesos.add(pesoNovo43);
				pesos.add(pesoNovo44);
				pesos.add(pesoNovo45);
				pesos.add(pesoNovo46);
				pesos.add(pesoNovo47);
				pesos.add(pesoNovo48);
				pesos.add(pesoNovo49);
				pesos.add(pesoNovo50);
				pesos.add(pesoNovo51);
				pesos.add(pesoNovo52);
				pesos.add(pesoNovo53);
				pesos.add(pesoNovo54);
				pesos.add(pesoNovo55);
				pesos.add(pesoNovo56);
				pesos.add(pesoNovo57);
				pesos.add(pesoNovo58);
				pesos.add(pesoNovo59);
				pesos.add(pesoNovo60);
				pesos.add(pesoNovo61);
				pesos.add(pesoNovo62);
				pesos.add(pesoNovo63);
				pesos.add(pesoNovo64);
				pesos.add(pesoNovo65);
				pesos.add(pesoNovo66);
				pesos.add(pesoNovo67);
				pesos.add(pesoNovo68);
				pesos.add(pesoNovo69);
				pesos.add(pesoNovo70);
				pesos.add(pesoNovo71);
				pesos.add(pesoNovo72);
				pesos.add(pesoNovo73);
				pesos.add(pesoNovo74);
				pesos.add(pesoNovo75);
				pesos.add(pesoNovo76);
				pesos.add(pesoNovo77);
			}

			if (errou) {
				if (i == (caracteres.size() - 1)) {
					i = -1;
				}
			}
		}

		return pesos;
	}

}

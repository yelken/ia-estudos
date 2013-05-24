package br.com.fsm.utils;

import java.util.LinkedList;
import br.com.fsm.bean.Caracter;

public class Utils {

	public static final Integer APRENDIZAGEM = 1;

	public static Integer calcularErro(Integer saidaDesejada, Integer saidaEncontrada) throws Exception {
		System.out.println("Erro = " + saidaDesejada + "-" + saidaEncontrada);
		return saidaDesejada - saidaEncontrada;
	}

	public static Integer calcularPesoNovo(Integer pesoAnterior, Integer erro, Integer entradaAnterior) throws Exception {
		System.out.println("PesoNovo = " + pesoAnterior + " + (" + APRENDIZAGEM + "*" + erro + "*" + entradaAnterior + ")");
		return pesoAnterior + (APRENDIZAGEM * erro * entradaAnterior);
	}

	private static Integer calcularSaidaBaseadoEmfuncao(Integer saida) throws Exception {
		System.out.println("Se saida < 0 assume 0; Se saida  >= 0 assume 1");
		System.out.println("Saida da formula: " + saida);

		if (saida < 0) {
			saida = 0;
		} else if (saida >= 0) {
			saida = 1;
		}

		System.out.println("Saida atual: " + saida);

		return saida;
	}

	public static LinkedList<Integer> calcularSaidas(LinkedList<Integer> entradas, LinkedList<Integer> pesos) throws Exception {

		LinkedList<Integer> retorno = new LinkedList<Integer>();

		// Neuronios
		Integer v0 = 0;
		Integer v1 = 0;
		Integer v2 = 0;

		v0 = (entradas.get(0) * pesos.get(0)) + (entradas.get(1) * pesos.get(1)) + (entradas.get(2) * pesos.get(2)) + (entradas.get(3) * pesos.get(3))
				+ (entradas.get(4) * pesos.get(4)) + (entradas.get(5) * pesos.get(5)) + (entradas.get(6) * pesos.get(6))
				+ (entradas.get(7) * pesos.get(7)) + (entradas.get(8) * pesos.get(8)) + (entradas.get(9) * pesos.get(9))
				+ (entradas.get(10) * pesos.get(10)) + (entradas.get(11) * pesos.get(11)) + (entradas.get(12) * pesos.get(12))
				+ (entradas.get(13) * pesos.get(13)) + (entradas.get(14) * pesos.get(14)) + (entradas.get(15) * pesos.get(15))
				+ (entradas.get(16) * pesos.get(16)) + (entradas.get(17) * pesos.get(17)) + (entradas.get(18) * pesos.get(18))
				+ (entradas.get(19) * pesos.get(19)) + (entradas.get(20) * pesos.get(20)) + (entradas.get(21) * pesos.get(21))
				+ (entradas.get(22) * pesos.get(22)) + (entradas.get(23) * pesos.get(23)) + (entradas.get(24) * pesos.get(24))
				+ (entradas.get(25) * pesos.get(25));

		System.out.println("Neuronio 1: " + v0);

		v1 = (entradas.get(0) * pesos.get(26)) + (entradas.get(1) * pesos.get(27)) + (entradas.get(2) * pesos.get(28)) + (entradas.get(3) * pesos.get(29))
				+ (entradas.get(4) * pesos.get(30)) + (entradas.get(5) * pesos.get(31)) + (entradas.get(6) * pesos.get(32))
				+ (entradas.get(7) * pesos.get(33)) + (entradas.get(8) * pesos.get(34)) + (entradas.get(9) * pesos.get(35))
				+ (entradas.get(10) * pesos.get(36)) + (entradas.get(11) * pesos.get(37)) + (entradas.get(12) * pesos.get(38))
				+ (entradas.get(13) * pesos.get(39)) + (entradas.get(14) * pesos.get(40)) + (entradas.get(15) * pesos.get(41))
				+ (entradas.get(16) * pesos.get(42)) + (entradas.get(17) * pesos.get(43)) + (entradas.get(18) * pesos.get(44))
				+ (entradas.get(19) * pesos.get(45)) + (entradas.get(20) * pesos.get(46)) + (entradas.get(21) * pesos.get(47))
				+ (entradas.get(22) * pesos.get(48)) + (entradas.get(23) * pesos.get(49)) + (entradas.get(24) * pesos.get(50))
				+ (entradas.get(25) * pesos.get(51));

		System.out.println("Neuronio 2: " + v1);

		v2 = (entradas.get(0) * pesos.get(52)) + (entradas.get(1) * pesos.get(53)) + (entradas.get(2) * pesos.get(54)) + (entradas.get(3) * pesos.get(55))
				+ (entradas.get(4) * pesos.get(56)) + (entradas.get(5) * pesos.get(57)) + (entradas.get(6) * pesos.get(58))
				+ (entradas.get(7) * pesos.get(59)) + (entradas.get(8) * pesos.get(60)) + (entradas.get(9) * pesos.get(61))
				+ (entradas.get(10) * pesos.get(62)) + (entradas.get(11) * pesos.get(63)) + (entradas.get(12) * pesos.get(64))
				+ (entradas.get(13) * pesos.get(65)) + (entradas.get(14) * pesos.get(66)) + (entradas.get(15) * pesos.get(67))
				+ (entradas.get(16) * pesos.get(68)) + (entradas.get(17) * pesos.get(69)) + (entradas.get(18) * pesos.get(70))
				+ (entradas.get(19) * pesos.get(71)) + (entradas.get(20) * pesos.get(72)) + (entradas.get(21) * pesos.get(73))
				+ (entradas.get(22) * pesos.get(74)) + (entradas.get(23) * pesos.get(75)) + (entradas.get(24) * pesos.get(76))
				+ (entradas.get(25) * pesos.get(77));

		System.out.println("Neuronio 2: " + v2);

		v0 = calcularSaidaBaseadoEmfuncao(v0);
		v1 = calcularSaidaBaseadoEmfuncao(v1);
		v2 = calcularSaidaBaseadoEmfuncao(v2);

		retorno.add(v0);
		retorno.add(v1);
		retorno.add(v2);

		return retorno;
	}

	public static LinkedList<Caracter> getCaracteresRedeNeural() {
		LinkedList<Caracter> caracteres = new LinkedList<Caracter>();

		Caracter a = new Caracter();
		a.setValor("A");
		LinkedList<Integer> valoresA = new LinkedList<Integer>();
		valoresA.add(0);
		valoresA.add(0);
		valoresA.add(0);
		a.setSaidas(valoresA);
		LinkedList<Integer> entradasA = new LinkedList<Integer>();
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(0);
		entradasA.add(0);
		entradasA.add(0);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(0);
		entradasA.add(0);
		entradasA.add(0);
		entradasA.add(1);
		entradasA.add(1);
		entradasA.add(0);
		entradasA.add(0);
		entradasA.add(0);
		entradasA.add(1);
		a.setEntradas(entradasA);

		caracteres.add(a);

		Caracter s = new Caracter();
		s.setValor("S");
		LinkedList<Integer> valoresS = new LinkedList<Integer>();
		valoresS.add(0);
		valoresS.add(0);
		valoresS.add(1);
		s.setSaidas(valoresS);

		LinkedList<Integer> entradasS = new LinkedList<Integer>();
		entradasS.add(1);
		entradasS.add(0);
		entradasS.add(1);
		entradasS.add(1);
		entradasS.add(1);
		entradasS.add(0);
		entradasS.add(1);
		entradasS.add(0);
		entradasS.add(0);
		entradasS.add(0);
		entradasS.add(0);
		entradasS.add(0);
		entradasS.add(1);
		entradasS.add(1);
		entradasS.add(0);
		entradasS.add(0);
		entradasS.add(0);
		entradasS.add(0);
		entradasS.add(0);
		entradasS.add(1);
		entradasS.add(0);
		entradasS.add(1);
		entradasS.add(1);
		entradasS.add(1);
		entradasS.add(0);
		entradasS.add(0);
		s.setEntradas(entradasS);

		caracteres.add(s);

		Caracter cinco = new Caracter();
		cinco.setValor("5");
		LinkedList<Integer> valoresCinco = new LinkedList<Integer>();
		valoresCinco.add(0);
		valoresCinco.add(1);
		valoresCinco.add(0);
		cinco.setSaidas(valoresCinco);

		LinkedList<Integer> entradas5 = new LinkedList<Integer>();
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(0);
		entradas5.add(0);
		entradas5.add(0);
		entradas5.add(0);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(0);
		entradas5.add(0);
		entradas5.add(0);
		entradas5.add(0);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		entradas5.add(1);
		cinco.setEntradas(entradas5);

		caracteres.add(cinco);

		Caracter um = new Caracter();
		um.setValor("1");
		LinkedList<Integer> valoresUm = new LinkedList<Integer>();
		valoresUm.add(0);
		valoresUm.add(1);
		valoresUm.add(1);
		um.setSaidas(valoresUm);

		LinkedList<Integer> entradas1 = new LinkedList<Integer>();
		entradas1.add(1);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(1);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(1);
		entradas1.add(1);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(1);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(1);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(0);
		entradas1.add(1);
		entradas1.add(1);
		entradas1.add(1);
		entradas1.add(0);
		um.setEntradas(entradas1);

		caracteres.add(um);

		Caracter g = new Caracter();
		g.setValor("G");
		LinkedList<Integer> valoresG = new LinkedList<Integer>();
		valoresG.add(1);
		valoresG.add(0);
		valoresG.add(0);
		g.setSaidas(valoresG);

		LinkedList<Integer> entradasG = new LinkedList<Integer>();
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(0);
		entradasG.add(0);
		entradasG.add(0);
		entradasG.add(0);
		entradasG.add(1);
		entradasG.add(0);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(0);
		entradasG.add(0);
		entradasG.add(0);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		entradasG.add(1);
		g.setEntradas(entradasG);

		caracteres.add(g);

		Caracter j = new Caracter();
		j.setValor("J");
		LinkedList<Integer> valoresJ = new LinkedList<Integer>();
		valoresJ.add(1);
		valoresJ.add(0);
		valoresJ.add(1);
		j.setSaidas(valoresJ);

		LinkedList<Integer> entradasJ = new LinkedList<Integer>();
		entradasJ.add(1);
		entradasJ.add(0);
		entradasJ.add(0);
		entradasJ.add(0);
		entradasJ.add(1);
		entradasJ.add(0);
		entradasJ.add(0);
		entradasJ.add(0);
		entradasJ.add(0);
		entradasJ.add(1);
		entradasJ.add(0);
		entradasJ.add(0);
		entradasJ.add(0);
		entradasJ.add(0);
		entradasJ.add(1);
		entradasJ.add(0);
		entradasJ.add(0);
		entradasJ.add(1);
		entradasJ.add(0);
		entradasJ.add(1);
		entradasJ.add(0);
		entradasJ.add(0);
		entradasJ.add(1);
		entradasJ.add(1);
		entradasJ.add(1);
		entradasJ.add(0);
		j.setEntradas(entradasJ);

		caracteres.add(j);

		Caracter k = new Caracter();
		k.setValor("K");
		LinkedList<Integer> valoresK = new LinkedList<Integer>();
		valoresK.add(1);
		valoresK.add(1);
		valoresK.add(0);
		k.setSaidas(valoresK);

		LinkedList<Integer> entradasK = new LinkedList<Integer>();
		entradasK.add(1);
		entradasK.add(1);
		entradasK.add(0);
		entradasK.add(0);
		entradasK.add(1);
		entradasK.add(0);
		entradasK.add(1);
		entradasK.add(0);
		entradasK.add(1);
		entradasK.add(0);
		entradasK.add(0);
		entradasK.add(1);
		entradasK.add(1);
		entradasK.add(0);
		entradasK.add(0);
		entradasK.add(0);
		entradasK.add(1);
		entradasK.add(0);
		entradasK.add(1);
		entradasK.add(0);
		entradasK.add(0);
		entradasK.add(1);
		entradasK.add(0);
		entradasK.add(0);
		entradasK.add(1);
		entradasK.add(0);
		k.setEntradas(entradasK);

		caracteres.add(k);

		Caracter l = new Caracter();
		l.setValor("L");
		LinkedList<Integer> valoresL = new LinkedList<Integer>();
		valoresL.add(1);
		valoresL.add(1);
		valoresL.add(1);
		l.setSaidas(valoresL);

		LinkedList<Integer> entradasL = new LinkedList<Integer>();
		entradasL.add(1);
		entradasL.add(1);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(1);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(1);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(1);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(0);
		entradasL.add(1);
		entradasL.add(1);
		entradasL.add(1);
		entradasL.add(1);
		entradasL.add(0);
		l.setEntradas(entradasL);

		caracteres.add(l);

		return caracteres;
	}
}

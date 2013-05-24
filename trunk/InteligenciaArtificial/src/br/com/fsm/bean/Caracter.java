package br.com.fsm.bean;

import java.util.LinkedList;

public class Caracter {

	private String valor;
	private LinkedList<Integer> saidas;
	private LinkedList<Integer> entradas;

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public LinkedList<Integer> getSaidas() {
		return saidas;
	}

	public void setSaidas(LinkedList<Integer> saidas) {
		this.saidas = saidas;
	}

	public LinkedList<Integer> getEntradas() {
		return entradas;
	}

	public void setEntradas(LinkedList<Integer> entradas) {
		this.entradas = entradas;
	}

}

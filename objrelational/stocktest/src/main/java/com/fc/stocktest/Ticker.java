package com.fc.stocktest;

import java.io.Serializable;

public class Ticker implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8473567513003965042L;
	
	private String symbol;
	private String companyName;
	
	public Ticker()
	{
		symbol = null;
		companyName = null;
	}
	
	public Ticker(String ticker, String companyName) {
		this.symbol = ticker;
		this.companyName = companyName;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
}

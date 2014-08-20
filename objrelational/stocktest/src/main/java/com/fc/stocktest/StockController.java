package com.fc.stocktest;

import static com.google.common.collect.Lists.newArrayList;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class StockController {

	private static final String LETTERS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	
	@Resource
	private DataSource stockDs;
	
	@RequestMapping("/stocks")
	public String stockSymbols(@RequestParam(value="letter", required=false, defaultValue="A") char letter, Model model) 
	{
		List<Ticker> tickers = getStockTickers(letter);
		
		model.addAttribute("tickers", tickers);
		model.addAttribute("letters", LETTERS.toCharArray());
		
		return "tickers";
	}

	private List<Ticker> getStockTickers(char letter) 
	{
		ArrayList<Ticker> tickers = newArrayList();
		
		String sql = "SELECT stock_symbol, company_name "
				   + "FROM stock_ticker "
				   + "WHERE stock_symbol LIKE ? "
				   + "ORDER BY stock_symbol";
		
		
		try(Connection con = stockDs.getConnection();
		    PreparedStatement stmt = con.prepareStatement(sql);)
	    {
			stmt.setString(1, letter + "%");
			
			try(ResultSet rs = stmt.executeQuery();)
			{
				while(rs.next())
				{
					String symbol = rs.getString(1);
					String companyName = rs.getString(2);
					
					Ticker ticker = new Ticker(symbol, companyName);
				
					tickers.add(ticker);
				}
			}
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		
		return tickers;
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/stocks/update")
	public String postPreview(@RequestParam(value="file", required=true) MultipartFile file, Model model) throws IOException
	{
		InputStream spreadsheet = file.getInputStream();
		
		List<Ticker> updates = parseUpdates(spreadsheet);
		
		long startTs = System.nanoTime();
		List<Ticker> changes = previewArray(updates);
		long endTs = System.nanoTime();
		
		double time = (endTs - startTs) / 1_000_000;
		
		System.out.println("Total time (ms) spent on the object-relational method: " + time);
		
		model.addAttribute("changes", changes);
		
		return "preview";
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/stocks/update2")
	public String postPreviewTemp(@RequestParam(value="file", required=true) MultipartFile file, Model model) throws IOException
	{
		InputStream spreadsheet = file.getInputStream();
		
		List<Ticker> updates = parseUpdates(spreadsheet);
		List<Ticker> changes = previewTemp(updates);
		
		model.addAttribute("changes", changes);
		
		return "preview";
	}
	
	private List<Ticker> parseUpdates(InputStream csv)
	{
		List<Ticker> updates = newArrayList();
		
		
		try(BufferedReader rdr = new BufferedReader(new InputStreamReader(csv));)
		{
			String line;
			
			while((line = rdr.readLine()) != null)
			{	
				String[] arr = line.split(",");
				
				String sym = arr[0];
				String cn = arr[1];
				
				Ticker ticker = new Ticker(sym, cn);
				
				updates.add(ticker);
			}
		}
		catch(IOException e)
		{
			e.printStackTrace();
		}
		
		return updates;
	}
	
	private List<Ticker> previewArray(List<Ticker> inc)
	{
		List<Ticker> updates = newArrayList();
		String[] symbolUpdates = new String[inc.size()];
		
		int i=0;
		
		for(Ticker upd : inc)
		{
			symbolUpdates[i++] = upd.getSymbol();
		}
		
		String sql = "SELECT stock_symbol, company_name " +
					 "FROM stock_ticker " +
				     "WHERE stock_symbol = ANY (?)";
		
		try(Connection con = stockDs.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);)
		{
			java.sql.Array sqlArr = con.createArrayOf("varchar", symbolUpdates);
			
			//Normally, we'd wrap this in a try with resources block, since you have to call free.
			//PostgreSQL in particular hasn't implemented the free() method, though (it throws an exception),
			//so we skip that.
			
			stmt.setArray(1, sqlArr);
			
			try(ResultSet rs = stmt.executeQuery();)
			{
				while(rs.next())
				{
					String symbol = rs.getString(1);
					String companyName = rs.getString(2);
				
					Ticker ticker = new Ticker(symbol, companyName);
				
					updates.add(ticker);
				}
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return updates;
	}
	
	private List<Ticker> previewTemp(List<Ticker> inc)
	{
		List<Ticker> updates = null;
		
		try(Connection con = stockDs.getConnection();)
		{
			long startTs = System.nanoTime();
			
			createTempTable(con);
			insertTempTable(inc, con);
			indexTempTable(con);
			updates = selectTempTable(con);
			dropTempTable(con);
			
			long endTs = System.nanoTime();
			
			double time = (endTs - startTs) / 1_000_000;
			
			System.out.println("Total time (ms) spent on temp table method: " + time);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return updates;
	}


	private void createTempTable(Connection con) throws SQLException
	{
		String sql = "CREATE TEMP TABLE stock_ticker_temp (stock_symbol CHAR(9))";
		
		try(PreparedStatement stmt = con.prepareStatement(sql))
		{
			stmt.executeUpdate();
		}
	}
	
	private void insertTempTable(List<Ticker> inc, Connection con) throws SQLException
	{
		String sql = "INSERT INTO stock_ticker_temp (stock_symbol) VALUES (?)";
		
		try(PreparedStatement stmt = con.prepareStatement(sql);)
		{
			for(Ticker upd : inc)
			{
				stmt.setString(1, upd.getSymbol());
				
				stmt.addBatch();
			}
			
			stmt.executeBatch();
		}
	}
	
	private void indexTempTable(Connection con) throws SQLException
	{
		String sql = "CREATE INDEX temp1 ON stock_ticker_temp(stock_symbol)";
		
		try(PreparedStatement stmt = con.prepareStatement(sql);)
		{
			stmt.executeUpdate();
		}
	}
	
	
	private List<Ticker> selectTempTable(Connection con) throws SQLException 
	{
		List<Ticker> updates = newArrayList();
		
		String sql = "SELECT s.stock_symbol, s.company_name "
				   + "FROM stock_ticker s, stock_ticker_temp t "
				   + "WHERE s.stock_symbol = t.stock_symbol";
		
		try(PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();)
		{
			while(rs.next())
			{
				String symbol = rs.getString(1);
				String companyName = rs.getString(2);
				
				Ticker ticker = new Ticker(symbol, companyName);
				
				updates.add(ticker);
			}
		}
		
		return updates;
	}
	
	private void dropTempTable(Connection con) throws SQLException
	{
		String sql = "DROP TABLE stock_ticker_temp";
		
		try(PreparedStatement stmt = con.prepareStatement(sql);)
		{
			stmt.executeUpdate();
		}
	}
}

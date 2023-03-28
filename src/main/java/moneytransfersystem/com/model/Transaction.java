package moneytransfersystem.com.model;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "transaction")
public class Transaction {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "date_time")
	private String dateTime;
	 
	@Column(name = "from_account_num")
	private int fromAccountNum;
	
	@Column(name = "to_account_num")
	private int toAccountNum;
	
	@Column(name = "amount")
	private Double amount;
	
	@Column(name = "balance")
	private Double balance;
	
	public Transaction() {
		
	}
	
	public Transaction(String dateTime, int fromAccountNum, int toAccountNum, Double amount, Double balance) {
		super();
		this.dateTime = dateTime;
		this.fromAccountNum = fromAccountNum;
		this.toAccountNum = toAccountNum;
		this.amount = amount;
		this.balance = balance;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getDateTime() {
		return dateTime;
	}
	public void setDateTime(String dateTime) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		   LocalDateTime now = LocalDateTime.now();
		this.dateTime = dtf.format(now);
	}
	
	public int getFromAccountNum() {
		return fromAccountNum;
	}	
	public void setFromAccountNum(int fromAccountNum) {
		this.fromAccountNum = fromAccountNum;
	}

	public int getToAccountNum() {
		return toAccountNum;
	}	
	public void setToAccountNum(int toAccountNum) {
		this.toAccountNum = toAccountNum;
	}
	
	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public Double getBalance() {
		return balance;
	}

	public void setBalance(Double balance) {
		this.balance = balance;
	}
	
}

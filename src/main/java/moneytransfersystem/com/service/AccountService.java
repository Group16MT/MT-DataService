package moneytransfersystem.com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import moneytransfersystem.com.model.Account;
import moneytransfersystem.com.model.Transaction;
import moneytransfersystem.com.repository.AccountRepository;
import moneytransfersystem.com.repository.TransactionRepository;

@Service
public class AccountService {

	@Autowired
	private AccountRepository accountRepository;
	
	@Autowired
	private TransactionRepository transactionRepository;
	
	public List<Transaction> getTransactionDetails(String startDate, String endDate) {
		List<Transaction> transactionList = transactionRepository.getTransactionDetails(startDate+" 00:00:00", endDate+" 23:59:59");
		return transactionList;
	}	
	
	public List<Account> getAccountDetails() {
		List<Account> accountList = accountRepository.getAccountDetails();
		return accountList;		
	}

	public void getDetails(Integer selectedOption, Double balance) {
		accountRepository.getDetails(selectedOption, balance);
		System.out.println("abhishek");
	}
	
}

package moneytransfersystem.com.controller;

import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import moneytransfersystem.com.exception.ResourceNotFoundException;
import moneytransfersystem.com.model.Account;
import moneytransfersystem.com.model.Transaction;
import moneytransfersystem.com.repository.AccountRepository;
import moneytransfersystem.com.repository.TransactionRepository;
import moneytransfersystem.com.service.AccountService;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/v1/")
public class AccountController {

	@Autowired
	private AccountRepository accountRepository;

	@Autowired
	private TransactionRepository transactionRepository;

	@Autowired
	private AccountService accountService;

	// get all accounts
	@GetMapping("/accounts")
	public List<Account> getAllAccounts() {
		try {
			return accountRepository.findAll();
		}catch(Exception ex) {
			throw new ResponseStatusException(
			           HttpStatus.INTERNAL_SERVER_ERROR, "Money Transfer System Error:", ex);
		}
	}

	// create acccount rest api
	@PostMapping("/accounts")
	public Account createAccount(@RequestBody Account account) {
		try {
			return accountRepository.save(account);		
		}catch(Exception ex) {
			throw new ResponseStatusException(
			           HttpStatus.INTERNAL_SERVER_ERROR, "Money Transfer System Error:", ex);
		}		
	}

	// get account by id rest api
	@GetMapping("/accounts/{id}")
	public ResponseEntity<Account> getAccountById(@PathVariable Long id) {
		Account account = accountRepository.findById(id)
				.orElseThrow(() -> new ResponseStatusException(
				           HttpStatus.BAD_REQUEST, "Account not exist with id :" + id, null));
		return ResponseEntity.ok(account);
	}

	// update account rest api
	/*
	 * @PutMapping("/accounts/{id}") public ResponseEntity<Account>
	 * updateAccount(@PathVariable Long id, @RequestBody Account accountDetails,
	 * 
	 * @RequestParam(required = false) Integer selectedOption) { Account account =
	 * accountRepository.findById(id) .orElseThrow(() -> new
	 * ResponseStatusException( HttpStatus.BAD_REQUEST,
	 * "Account not exist with id :" + id, null));
	 * 
	 * account.setFirstName(accountDetails.getFirstName());
	 * account.setLastName(accountDetails.getLastName());
	 * account.setEmailId(accountDetails.getEmailId()); if (account.getBalance() >=
	 * accountDetails.getBalance()) { account.setBalance(account.getBalance() -
	 * accountDetails.getBalance()); accountService.getDetails(selectedOption,
	 * accountDetails.getBalance()); } Account updatedAccount =
	 * accountRepository.save(account); return ResponseEntity.ok(updatedAccount); }
	 */

	@GetMapping("/accounts/transactionaDetails")
	public ResponseEntity<List<Transaction>> getTransactionDetails(@RequestParam(required = false) String startDate,
			@RequestParam(required = false) String endDate)  {
		
		try {
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");
			
			Calendar startCal = Calendar.getInstance();
			startCal.setTime(simpleDateFormat.parse(startDate));
			
			Calendar endCal = Calendar.getInstance();
			endCal.setTime(simpleDateFormat.parse(endDate));			
			
			if(startCal.after(endCal)) {
				throw new ResponseStatusException(
				           HttpStatus.BAD_REQUEST, "From-date cannot be after To-date", null);
			}
			
			List<Transaction> traxList = accountService.getTransactionDetails(startDate, endDate);
			return ResponseEntity.ok(traxList);
			
		}catch(ParseException ex) {
			throw new ResponseStatusException(
			           HttpStatus.INTERNAL_SERVER_ERROR, "Money Transfer System Error:", ex);			
		}

	}

	@PostMapping("/accounts/transactionaDetails")
	@Transactional
	public Transaction createTransactionDetails(@RequestBody Transaction transaction) throws Exception {

		if (transaction.getFromAccountNum() == transaction.getToAccountNum()) {
			throw new ResponseStatusException(
			           HttpStatus.BAD_REQUEST, "Deductee and Beneficiary cannot be same.", null);
		}

		Account fromAccount = accountRepository.findById((long) transaction.getFromAccountNum()).orElseThrow(
				() -> new ResponseStatusException(
				           HttpStatus.BAD_REQUEST, "Account not exist with id :" + transaction.getFromAccountNum(), null));

		Account toAccount = accountRepository.findById((long) transaction.getToAccountNum()).orElseThrow(
				() -> new ResponseStatusException(
				           HttpStatus.BAD_REQUEST, "Account not exist with id :" + transaction.getFromAccountNum(), null));

		if (transaction.getAmount() <= 0) {
			throw new ResponseStatusException(
			           HttpStatus.BAD_REQUEST, "Invalid amount entered", null);
		}

		Double fromBalance = fromAccount.getBalance();
		if (fromBalance - transaction.getAmount() < 0) {
			throw new ResponseStatusException(
			           HttpStatus.METHOD_NOT_ALLOWED, "Insufficient fund in deductee account", null);
		}

		fromAccount.setBalance(fromBalance - transaction.getAmount());
		toAccount.setBalance(toAccount.getBalance() + transaction.getAmount());
		transaction.setBalance(toAccount.getBalance());

		accountRepository.save(fromAccount);
		accountRepository.save(toAccount);
		return transactionRepository.save(transaction);
	}

	@GetMapping("/accounts/accountDetails")
	public ResponseEntity<List<Account>> getAccountDetails() {
		List<Account> empList = accountService.getAccountDetails();
		return ResponseEntity.ok(empList);
	}

}

package moneytransfersystem.com.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
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
		return accountRepository.findAll();

	}

	// create acccount rest api
	@PostMapping("/accounts")
	public Account createAccount(@RequestBody Account account) {
		return accountRepository.save(account);
	}

	// get account by id rest api
	@GetMapping("/accounts/{id}")
	public ResponseEntity<Account> getAccountById(@PathVariable Long id) {
		Account account = accountRepository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Account not exist with id :" + id));
		return ResponseEntity.ok(account);
	}

	// update account rest api
	@PutMapping("/accounts/{id}")
	public ResponseEntity<Account> updateAccount(@PathVariable Long id, @RequestBody Account accountDetails,
			@RequestParam(required = false) Integer selectedOption) {
		Account account = accountRepository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Account not exist with id :" + id));

		account.setFirstName(accountDetails.getFirstName());
		account.setLastName(accountDetails.getLastName());
		account.setEmailId(accountDetails.getEmailId());
		if (account.getBalance() >= accountDetails.getBalance()) {
			account.setBalance(account.getBalance() - accountDetails.getBalance());
			accountService.getDetails(selectedOption, accountDetails.getBalance());
		}
		Account updatedAccount = accountRepository.save(account);
		return ResponseEntity.ok(updatedAccount);
	}

	@GetMapping("/accounts/transactionaDetails")
	public ResponseEntity<List<Transaction>> getTransactionDetails(@RequestParam(required = false) String startDate,
			@RequestParam(required = false) String endDate) {
		List<Transaction> traxList = accountService.getTransactionDetails(startDate, endDate);
		return ResponseEntity.ok(traxList);
	}

	@PostMapping("/accounts/transactionaDetails")
	@Transactional
	public Transaction createTransactionDetails(@RequestBody Transaction transaction) throws Exception {

		if (transaction.getFromAccountNum() == transaction.getToAccountNum()) {
			throw new Exception("Deductee and Beneficiary cannot be same.");
		}

		Account fromAccount = accountRepository.findById((long) transaction.getFromAccountNum()).orElseThrow(
				() -> new ResourceNotFoundException("Account not exist with id :" + transaction.getFromAccountNum()));

		Account toAccount = accountRepository.findById((long) transaction.getToAccountNum()).orElseThrow(
				() -> new ResourceNotFoundException("Account not exist with id :" + transaction.getToAccountNum()));

		if (transaction.getAmount() <= 0) {
			throw new Exception("Invalid amount");
		}

		Double fromBalance = fromAccount.getBalance();
		if (fromBalance - transaction.getAmount() < 0) {
			throw new Exception("Insufficient fund in deductee account");
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

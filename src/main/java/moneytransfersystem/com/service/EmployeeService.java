package moneytransfersystem.com.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import moneytransfersystem.com.model.Employee;
import moneytransfersystem.com.model.Transaction;
import moneytransfersystem.com.repository.EmployeeRepository;
import moneytransfersystem.com.repository.TransactionRepository;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private TransactionRepository transactionRepository;
	
	public List<Transaction> getTransactionDetails(String startDate, String endDate) {
		List<Transaction> transactionList = transactionRepository.getTransactionDetails(startDate+" 00:00:00", endDate+" 23:59:59");
		return transactionList;
	}	
	
	public List<Employee> getAccountDetails() {
		List<Employee> employeeList = employeeRepository.getAccountDetails();
		return employeeList;		
	}

	public void getDetails(Integer selectedOption, Double balance) {
		employeeRepository.getDetails(selectedOption, balance);
		System.out.println("abhishek");
	}
	
}

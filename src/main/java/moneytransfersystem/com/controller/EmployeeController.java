package moneytransfersystem.com.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import moneytransfersystem.com.service.EmployeeService;
import moneytransfersystem.com.exception.ResourceNotFoundException;
import moneytransfersystem.com.model.Employee;
import moneytransfersystem.com.model.Transaction;
import moneytransfersystem.com.repository.EmployeeRepository;
import moneytransfersystem.com.repository.TransactionRepository;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/v1/")
public class EmployeeController {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Autowired
	private TransactionRepository transactionRepository;
	
	@Autowired
	private EmployeeService employeeService;
	
	// get all employees
	@GetMapping("/employees")
	public List<Employee> getAllEmployees(){
		return employeeRepository.findAll();
		
	}		
	
	// create employee rest api
	@PostMapping("/employees")
	public Employee createEmployee(@RequestBody Employee employee) {
		return employeeRepository.save(employee);
	}
	
	// get employee by id rest api
	@GetMapping("/employees/{id}")
	public ResponseEntity<Employee> getEmployeeById(@PathVariable Long id) {
		Employee employee = employeeRepository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Employee not exist with id :" + id));
		return ResponseEntity.ok(employee);
	}
	
	// update employee rest api
	
	@PutMapping("/employees/{id}")
	public ResponseEntity<Employee> updateEmployee(@PathVariable Long id, @RequestBody Employee employeeDetails, @RequestParam(required = false) Integer selectedOption){
		Employee employee = employeeRepository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Employee not exist with id :" + id));
			
		employee.setFirstName(employeeDetails.getFirstName());
		employee.setLastName(employeeDetails.getLastName());
		employee.setEmailId(employeeDetails.getEmailId());
		if(employee.getBalance() >= employeeDetails.getBalance()) {
		employee.setBalance(employee.getBalance() - employeeDetails.getBalance());
		employeeService.getDetails(selectedOption,employeeDetails.getBalance());
		}
		employee.setAccountNum(employeeDetails.getAccountNum());
		
		Employee updatedEmployee = employeeRepository.save(employee);
		return ResponseEntity.ok(updatedEmployee);
	}
	
	// delete employee rest api
	@DeleteMapping("/employees/{id}")
	public ResponseEntity<Map<String, Boolean>> deleteEmployee(@PathVariable Long id){
		Employee employee = employeeRepository.findById(id)
				.orElseThrow(() -> new ResourceNotFoundException("Employee not exist with id :" + id));
		
		employeeRepository.delete(employee);
		Map<String, Boolean> response = new HashMap<>();
		response.put("deleted", Boolean.TRUE);
		return ResponseEntity.ok(response);
	}

	@GetMapping("/employees/transactionaDetails")
	public ResponseEntity<List<Transaction>> getTransactionDetails(@RequestParam(required = false) String startDate,
			@RequestParam(required = false) String endDate) {
		List<Transaction> traxList = employeeService.getTransactionDetails(startDate, endDate);
		return ResponseEntity.ok(traxList);
	}

	@PostMapping("/employees/transactionaDetails")
	@Transactional
	public Transaction createTransactionDetails(@RequestBody Transaction transaction) throws Exception {

		
		if(transaction.getFromAccountNum() == transaction.getToAccountNum()) {
			throw new Exception("Deductee and Beneficiary cannot be same.");
		}

		Employee fromAccount = employeeRepository.findById((long) transaction.getFromAccountNum())
				.orElseThrow(() -> new ResourceNotFoundException("Employee not exist with id :" + transaction.getFromAccountNum()));
		
		Employee toAccount = employeeRepository.findById((long) transaction.getToAccountNum())
				.orElseThrow(() -> new ResourceNotFoundException("Employee not exist with id :" + transaction.getToAccountNum()));
		
		if(transaction.getAmount() <=0 ) {
			throw new Exception("Invalid amount");
		}
		
		Double fromBalance = fromAccount.getBalance();
		if(fromBalance - transaction.getAmount() < 0) {
			throw new Exception("Insufficient fund in deductee account");
		}
		
		fromAccount.setBalance(fromBalance - transaction.getAmount());
		toAccount.setBalance(toAccount.getBalance() + transaction.getAmount());		
		transaction.setBalance(toAccount.getBalance());
		
		employeeRepository.save(fromAccount);
		employeeRepository.save(toAccount);		
		return transactionRepository.save(transaction);
	}

	
	@GetMapping("/employees/accountDetails")
	public ResponseEntity<List<Employee>> getAccountDetails() {
		List<Employee> empList = employeeService.getAccountDetails();
		return ResponseEntity.ok(empList);
	}
	
}

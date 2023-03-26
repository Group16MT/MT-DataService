package moneytransfersystem.com.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import moneytransfersystem.com.model.Employee;
import moneytransfersystem.com.repository.EmployeeRepository;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	public List<Employee> getTransactionDetails(String startDate, String endDate) {
		List<Employee> employeeList = employeeRepository.getTransactionDetails(startDate+" 00:00:00", endDate+" 23:59:59");
		return employeeList;
		
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

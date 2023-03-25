package net.javaguides.springboot.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.javaguides.springboot.model.Employee;
import net.javaguides.springboot.repository.EmployeeRepository;

@Service
public class EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;
	
	public List<Employee> getTransactionDetails(String startDate, String endDate) {
		List<Employee> employeeList = employeeRepository.getTransactionDetails(startDate+" 00:00:00", endDate+" 23:59:59");
		return employeeList;
		
	}
	
}

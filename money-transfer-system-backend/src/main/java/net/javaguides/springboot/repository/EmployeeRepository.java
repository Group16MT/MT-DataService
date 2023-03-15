package net.javaguides.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;
import net.javaguides.springboot.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long>{
	
	
	
	@Query(value = "SELECT * FROM employees  WHERE created_date >= ?1 AND created_date <= ?2" ,nativeQuery=true)
	List<Employee> getTransactionDetails(String startDate, String endDate);
}

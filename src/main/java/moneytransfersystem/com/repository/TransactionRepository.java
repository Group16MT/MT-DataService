package moneytransfersystem.com.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import moneytransfersystem.com.model.Transaction;

@Repository
public interface TransactionRepository extends JpaRepository<Transaction, Long>{	
	
	@Query(value = "SELECT * FROM transaction  WHERE date_time >= ?1 AND date_time <= ?2" ,nativeQuery=true)
	List<Transaction> getTransactionDetails(String startDate, String endDate);
	
}

package moneytransfersystem.com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

import javax.transaction.Transactional;

import moneytransfersystem.com.model.Account;

@Repository
public interface AccountRepository extends JpaRepository<Account, Long>{
	
	
	
	@Query(value = "SELECT * FROM account  WHERE date_time >= ?1 AND date_time <= ?2" ,nativeQuery=true)
	List<Account> getTransactionDetails(String startDate, String endDate);
	
	@Query(value = "SELECT * FROM account ORDER BY `id`" ,nativeQuery=true)
	List<Account> getAccountDetails();
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE account SET balance = balance + ?2 WHERE account_num = ?1",nativeQuery=true)
	void getDetails(Integer selectedOption, Double balance);
}

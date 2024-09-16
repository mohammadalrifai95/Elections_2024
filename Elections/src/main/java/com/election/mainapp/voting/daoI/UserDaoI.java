package com.election.mainapp.voting.daoI;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;

import com.election.mainapp.voting.data.UserData;

public interface UserDaoI  extends JpaRepository<UserData, Integer>{

	
	//@Query("SELECT u FROM User u WHERE u.status = ?1 and u.name = ?2")
	@Query("from UserData  where userName = ?1 and password = ?2")
	UserData findByUserNameAndPassword(String userName, String password );

	@Query("from UserData  where userName = ?1 and password = ?2 and ssn = ?3")
	List<UserData> findByUserNameAndPasswordAndSsn(String userName, String password , Long ssn);

	
	
	UserData findById(int id);
	
	UserData findByUserName(String userName);
	
}

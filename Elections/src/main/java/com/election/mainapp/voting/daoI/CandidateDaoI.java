package com.election.mainapp.voting.daoI;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;

import java.util.List;
import java.util.Optional;


public interface CandidateDaoI  extends JpaRepository<CandidateData, Integer>{
	
//	@Query("from CandidateData ")
//	List<CandidateData> findaCandidateDatas();
	
	
	//Optional<CandidateData> findById(Integer id);
	Optional<CandidateData> findById(Integer id);
	
	List<CandidateData> findAll();
	
//    @Query("SELECT "
//            + "cd.id, "
//            + "cd.userName, "
//            + "cd.fullName, "
//            + "cd.firstName, "
//            + "cd.lastName, "
//            + "cd.surName, "
//            + "cd.englishFullName "
//            + "FROM CandidateData cd")
//        public Page<CandidateData> findAllCandidateData(Pageable pageable);

	List<CandidateData> findAllByGovernorateDataAndConstituencyData(GovernorateData governorateData,ConstituencyData constituencyData);

	long  countById(Integer id);
	
	
//	@Query("from CandidateData  where id between ? and ?")
//	List<CandidateData> findaCandidateDatasLimited();
	
}

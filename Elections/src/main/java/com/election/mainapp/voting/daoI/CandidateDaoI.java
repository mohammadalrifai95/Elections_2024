package com.election.mainapp.voting.daoI;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.VoterData;

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
	
	Optional<CandidateData> findBySsn(Long ssn);
	
	Optional<CandidateData> findBySsn(String ssn);
	
	//public Optional<CandidateData> findFullName(String fullName, Long governorateId, Long constituencyId);
	
	@Query(value ="select data from CandidateData data where data.fullName= :fullName and  data.governorateData.id= :governorateId and  data.constituencyData.id= :constituencyId  ")
	public Optional<CandidateData> fullName(String fullName, Long   governorateId, Integer constituencyId);
	
//	@Query("from CandidateData  where id between ? and ?")
//	List<CandidateData> findaCandidateDatasLimited();
	
}

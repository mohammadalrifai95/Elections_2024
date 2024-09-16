/**
 * 
 */
package com.election.mainapp.voting.daoI;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.VoterData;

/**
 * @author asf
 *
 */
public interface VDaoI extends JpaRepository<VoterData, Integer>{

	
	List<VoterData> findAllByGovernorateDataAndConstituencyData(GovernorateData governorateData,ConstituencyData constituencyData);
	
 
	@Query(value ="select count(data)  from VoterData data where data.candidateData.id = :candidateId ")  
	Integer  countVotesByCandidateId(Integer candidateId);


	@Query(value ="select data from VoterData data where data.candidateData.id = :candidateId ")
	List<VoterData> findVoterDataListByCandidateId(Integer candidateId);
	
	Optional<VoterData> findBySsn(int ssn);
	
	Optional<VoterData> findBySsn(Long ssn);
	
	Optional<VoterData> findBySsn(String ssn);

	@Query(value ="select data from VoterData data where data.fullName= :fullName and  data.governorateData.id= :governorateId and  data.constituencyData.id= :constituencyId  ")
	Optional<VoterData> fullName(String fullName, Long   governorateId, Integer constituencyId);
}

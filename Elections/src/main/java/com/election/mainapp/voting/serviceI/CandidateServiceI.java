package com.election.mainapp.voting.serviceI;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;

import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.VoterData;

public interface CandidateServiceI {

	
	public void saveCandidate(CandidateData candidateData);
	public List<CandidateData> findAllByGovernorateDataAndConstituencyData(GovernorateData governorateData,  ConstituencyData constituencyData);
	public Optional<CandidateData> findById(Integer candidateId);
	public long findNumberOfVotesByCandidateId(Integer id);
	
	public Optional<CandidateData> findBySsn(Long ssn);
	
	public Optional<CandidateData> findFullName(String fullName, Long governorateId, Long constituencyId);
	

//	@Query(value ="select data from CandidateData data where data.fullName= :fullName and  data.governorateData.id= :governorateId and  data.constituencyData.id= :constituencyId  ")
//	public Optional<CandidateData> fullName(String fullName, Long   governorateId, Integer constituencyId);
}

package com.election.mainapp.voting.serviceI;

import java.util.List;
import java.util.Optional;

import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.VoterData;

public interface CandidateServiceI {

	
	public void saveCandidate(CandidateData candidateData);
	public List<CandidateData> findAllByGovernorateDataAndConstituencyData(GovernorateData governorateData,  ConstituencyData constituencyData);
	public Optional<CandidateData> findById(Integer candidateId);
	public long findNumberOfVotesByCandidateId(Integer id);
	
}

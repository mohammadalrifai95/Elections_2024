package com.election.mainapp.voting.serviceI;

import java.util.List;
import java.util.Optional;

import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.VoterData;

public interface VoterServiceI {

	public void saveVoter(VoterData voterData);

	public List<VoterData> findAllByGovernorateDataAndConstituencyData(GovernorateData governorateData,ConstituencyData constituencyData);

	public Integer findNumberOfVotesByCandidateId(Integer id);

	public List<VoterData> findVoterDataListByCandidateId(Integer id);
	
	public Optional<VoterData> findById(Integer voterDataId);
	
	public Optional<VoterData> findFullName(String fullName, Long governorateId, Long constituencyId);
	
	public Optional<VoterData> findBySsn(Integer ssn);
	
}

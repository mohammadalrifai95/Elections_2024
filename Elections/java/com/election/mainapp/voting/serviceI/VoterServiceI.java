package com.election.mainapp.voting.serviceI;

import java.util.List;

import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.VoterData;

public interface VoterServiceI {

	public void saveVoter(VoterData voterData);

	public List<VoterData> findAllByGovernorateDataAndConstituencyData(GovernorateData governorateData,ConstituencyData constituencyData);

	public Integer findNumberOfVotesByCandidateId(Integer id);

	public List<VoterData> findVoterDataListByCandidateId(Integer id);
	
	
	
}

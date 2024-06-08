package com.election.mainapp.voting.daoI;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.VoterData;


public interface VoterDaoI  extends JpaRepository<VoterData, Integer>{
	
	VoterData getVoterById(int id);

	//List<VoterData> findAllByGovernorateDataAndConstituencyData(GovernorateData governorateData,ConstituencyData constituencyData);
	
	
}

package com.election.mainapp.voting.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.election.mainapp.voting.daoI.CandidateDaoI;
import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.VoterData;
import com.election.mainapp.voting.serviceI.CandidateServiceI;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.ConstituencyData; 
import com.election.mainapp.voting.data.CandidateData;
 

@Service
public class CandidateService implements CandidateServiceI{
	
	@Autowired
	CandidateDaoI candidateDao;
	
	public CandidateService() {
		
	}

	@Override
	@Transactional 
	public void saveCandidate(CandidateData candidateData) {

//		@Override
//		@Transactional 
//		public void saveVoter(VoterData voterData) {
			
			//voterDao.save(voterData);
			
//			VoterData VoterData = new VoterData();
//			VoterData.setFullName("Test full name");
//			VoterData.setUserName("Test user Name");
//			VoterData.setPassword("Test Password");
////		VoterData.setCandidateData(null);   
			//voterDao.save(voterData);
//			vDao.save(voterData); 
			
			
//			CandidateData CandidateData = new CandidateData();
//			CandidateData.setFullName("Test full name");
//			CandidateData.setFirstName("Test First Name");
//			CandidateData.setLastName("Test Last Name"); 
	//
			candidateDao.save(candidateData); 
		}

	@Override
	public List<CandidateData> findAllByGovernorateDataAndConstituencyData(GovernorateData governorateData, ConstituencyData constituencyData) {

		List<CandidateData> candidateDataList = 
		(List<CandidateData>)candidateDao.findAllByGovernorateDataAndConstituencyData(governorateData, constituencyData);
		
		return candidateDataList;
	}

	@Override
	public Optional<CandidateData> findById(Integer candidateId) {

		Optional<CandidateData> candidateData = (Optional<CandidateData>)candidateDao.findById(candidateId);
		
		return candidateData; 
	}

	@Override
	public long findNumberOfVotesByCandidateId(Integer id) { 
		
		long countOfVotes = candidateDao.countById(id);
		
		return countOfVotes;
	}
		


}

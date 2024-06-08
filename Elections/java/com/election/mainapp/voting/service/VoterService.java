package com.election.mainapp.voting.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.election.mainapp.voting.daoI.CandidateDaoI;
import com.election.mainapp.voting.daoI.VDaoI;
import com.election.mainapp.voting.daoI.VoterDaoI;
import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.VoterData;
import com.election.mainapp.voting.serviceI.VoterServiceI;

@Service
public class VoterService implements VoterServiceI{

	public VoterService() {

	}
	
	@Autowired
	VoterDaoI voterDao;
	
	@Autowired
	VDaoI vDao;  
	
	@Autowired
	CandidateDaoI candidateDao; 
	
	@Override
	@Transactional 
	public void saveVoter(VoterData voterData) {
		
		//voterDao.save(voterData);
		vDao.save(voterData); 
 
//		candidateDao.save(CandidateData); 
	}

//	@Override
//	public List<VoterData> findAllByGovernorateDataAndConstituencyData(GovernorateData governorateData,
//			ConstituencyData constituencyData) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//	
	@Override
	public List<VoterData> findAllByGovernorateDataAndConstituencyData(GovernorateData governorateData, ConstituencyData constituencyData) {

		List<VoterData> candidateDataList = 
		(List<VoterData>)vDao.findAllByGovernorateDataAndConstituencyData(governorateData, constituencyData);
		
		return candidateDataList;
	}
		
	
	
	@Override
	@Transactional 
	public Integer findNumberOfVotesByCandidateId(Integer candidateId) { 
		
		Integer countOfVotes = vDao.countVotesByCandidateId(candidateId);
		
		return countOfVotes;
	}

	@Override
	public List<VoterData> findVoterDataListByCandidateId(Integer candidateId) {
		// TODO Auto-generated method stub
		
		List<VoterData> VoterDataList = vDao.findVoterDataListByCandidateId(candidateId); 
		
		return VoterDataList;
	}
	

}

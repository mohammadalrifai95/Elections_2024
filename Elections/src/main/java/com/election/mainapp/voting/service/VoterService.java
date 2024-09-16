package com.election.mainapp.voting.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

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
	
	
	@Override
	public Optional<VoterData> findById(Integer voterId) {

		Optional<VoterData> voterData = (Optional<VoterData>)vDao.findById(voterId);
		
		return voterData; 
	}

	@Override
	public Optional<VoterData> findBySsn(Integer ssn) {
		
		Optional<VoterData> voterData = (Optional<VoterData>)vDao.findBySsn(ssn);
		
		return voterData; 
	}

	@Override
	public Optional<VoterData> findFullName(String fullName, Long governorateId, Long constituencyId) {
		
		Optional<VoterData> voterData = null;
//		Integer  governorateIdInt =  governorateId.intValue();
		Integer  constituencyIdInt =  constituencyId.intValue();
		try {
			
			voterData = (Optional<VoterData>)vDao.fullName(fullName, governorateId , constituencyIdInt);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return voterData; 
	}

	@Override
	public Optional<VoterData> findBySsn(Long ssn) {

		String ssnStr =  Long.toString(ssn);
		Optional<VoterData> voterData = (Optional<VoterData>)vDao.findBySsn(ssn);
		
//		if(!voterData.isPresent()) {
//			voterData = (Optional<VoterData>)vDao.findBySsn(ssnStr);
//		}
		
		return voterData;

	}

	
	
	

}

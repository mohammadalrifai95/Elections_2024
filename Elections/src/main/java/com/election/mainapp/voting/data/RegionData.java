package com.election.mainapp.voting.data;

import java.io.Serializable;
import java.util.Set;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import lombok.Data;


//import jakarta.persistence.CascadeType;
//import jakarta.persistence.Entity;
//import jakarta.persistence.FetchType;
//import jakarta.persistence.GeneratedValue;
//import jakarta.persistence.GenerationType;
//import jakarta.persistence.Id;
//import jakarta.persistence.JoinColumn;
//import jakarta.persistence.ManyToOne;
//import jakarta.persistence.OneToMany;
//import jakarta.persistence.OneToOne;
//import jakarta.persistence.Table;

@Entity
@Table(name = "T_REGION")
@Data
public class RegionData  implements Serializable {

	public RegionData() {

		genericDateAndTimeData = new GenericDateAndTimeData();
		
	}

	@Id 
    @GeneratedValue( strategy=GenerationType.AUTO )
	private Integer id;
	private String name; 
	@ManyToOne(fetch = FetchType.LAZY)		   
	@JoinColumn(name = "constituency_id")
	private ConstituencyData constituencyData; 
	
	private GenericDateAndTimeData genericDateAndTimeData;
	
////    @OneToOne(mappedBy = "regionData")
//    @OneToOne(mappedBy = "regionData", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//    private VoterData voterData;
	
	
	@OneToMany(mappedBy = "regionData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	Set<ElectoralSeatData> electoralSeatDataSet;

	public ConstituencyData getConstituencyData() {
		return constituencyData;
	}

	public void setConstituencyData(ConstituencyData constituencyData) {
		this.constituencyData = constituencyData;
	}

	public Set<ElectoralSeatData> getElectoralSeatDataSet() {
		return electoralSeatDataSet;
	}

	public void setElectoralSeatDataSet(Set<ElectoralSeatData> electoralSeatDataSet) {
		this.electoralSeatDataSet = electoralSeatDataSet;
	}
	
}

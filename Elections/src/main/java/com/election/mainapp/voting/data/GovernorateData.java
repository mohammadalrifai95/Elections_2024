package com.election.mainapp.voting.data;

import java.io.Serializable;
import java.util.Set;

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
import javax.persistence.Transient;

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
//import jakarta.persistence.Transient;
//import lombok.Data;
 



@Entity
@Table(name = "T_GOVERNORATE")
@Data
public class GovernorateData implements Serializable{

	public GovernorateData() {
		
		genericDateAndTimeData = new GenericDateAndTimeData();
	
	}

	
	@Id 
	@GeneratedValue( strategy=GenerationType.AUTO )	
	private Long id;
	private String name;
	private String arabicName;
	
	@Transient
	private String selectedItem;
	
	private GenericDateAndTimeData genericDateAndTimeData;
	//private String countryName;
	
	
//    @OneToOne(mappedBy = "governorateData", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @OneToMany(mappedBy = "governorateData", fetch = FetchType.LAZY, cascade =  {CascadeType.PERSIST, CascadeType.MERGE})
    private  Set<VoterData> voterDataSet;

//    @OneToOne(mappedBy = "governorateData", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//    @OneToOne(mappedBy = "governorateData", fetch = FetchType.LAZY, cascade =  {CascadeType.PERSIST, CascadeType.MERGE})
//    private CandidateData candidateData;
	
	@OneToMany(mappedBy = "governorateData", fetch = FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	Set<CandidateData> candidateDataSet;
	
//	@Transient
//	String [] governorateArray = new String[3];
	
//	public String[] getGovernorateArray() {
//		return governorateArray;
//	}
//
//
//	public void setGovernorateArray(String[] governorateArray) {
//		this.governorateArray = governorateArray;
//	}


	public String getSelectedItem() {
		return selectedItem;
	}


	public void setSelectedItem(String selectedItem) {
		this.selectedItem = selectedItem;
	}


	public CountryData getCountryData() {
		return countryData;
	}


	public void setCountryData(CountryData countryData) {
		this.countryData = countryData;
	}


	public String getArabicName() {
		return arabicName;
	}


	public void setArabicName(String arabicName) {
		this.arabicName = arabicName;
	}


	@OneToMany(mappedBy = "governorateData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	Set<ConstituencyData> constituencyDataSet;

	
	//2 PKs to this table T_GOVERNORATE country_code and country_id, country_id needs to be removed //country_id and country_id in T_GOVERNORATE associated with id in T_COUNTRY as its PK,  and no one associated with countryCode because its not PK
	@ManyToOne(fetch = FetchType.LAZY)	   
	@JoinColumn(name = "country_id")
	//@JoinColumn(name = "country_code")
	private CountryData countryData;
	

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


//	public String getCountryName() {
//		return countryName;
//	}
//
//
//	public void setCountryName(String countryName) {
//		this.countryName = countryName;
//	}


	public Set<ConstituencyData> getConstituencyDataSet() {
		return constituencyDataSet;
	}


	public void setConstituencyDataSet(Set<ConstituencyData> constituencyDataSet) {
		this.constituencyDataSet = constituencyDataSet;
	}
	
	
	
	
	
	
 
}

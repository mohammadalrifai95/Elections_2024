/**
 * 
 */
package com.election.mainapp.voting.data;

import java.io.Serializable;
import java.sql.Date;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import java.util.HashSet;

import com.election.mainapp.voting.dependency.Address;

import lombok.Getter;
import lombok.Setter;

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
//import lombok.Getter;
//import lombok.Setter;
//import jakarta.persistence.CascadeType;
//import jakarta.persistence.Column;
//import jakarta.persistence.Entity;
//import jakarta.persistence.FetchType;

//@Data
@Getter
@Setter
@Entity
@Table(name = "T_CANDIDATE") 
public class CandidateData implements Serializable{

	
	@Id 
	@GeneratedValue( strategy=GenerationType.AUTO)  	
//	@Column(name="id", columnDefinition = "int(10)")
	@Column(name = "id", nullable = false, columnDefinition = "int default 1") 
	private Integer id;
	private String fullName;
	private String englishFullName;
	private String firstName;
	private String middleName;
	private String secondMiddleName;
	private String lastName;
	private String surName;	
	private String ssn;
    private String userName;
    private String  password;
	//private String name;
	private String email;
	private String AreaAppliedfor;
	private String DepartmentOfAppliedPosition;
	private Date date;
	private String title;
	private String resume;
	private String companyName;
	private String  role;
	private String  singupAsvoterFlag;
	
	
	@ManyToOne 
    @JoinColumn(name="governorate_Id")
    private GovernorateData governorateData;
	
	
	@Transient
	private Integer governorateId;
	
	@Transient
	private Integer constituencyId;

	private GenericDateAndTimeData genericDateAndTimeData;
	
	private String position;
	private String  mobile;
	private String  gender;
	private String status;
	private String  year;
	private String  electoralListNumber;
	private String  electoralListName;
	
//    @OneToOne(mappedBy = "candidateData")
    //@OneToOne(mappedBy = "candidateData", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @OneToOne(mappedBy = "candidateData", fetch = FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    private UserData userData ;
	 

	public ConstituencyData getConstituencyData() {
		return constituencyData;
	}

	public void setConstituencyData(ConstituencyData constituencyData) {
		this.constituencyData = constituencyData;
	}

	@ManyToOne(fetch = FetchType.LAZY)	   
	@JoinColumn(name = "constituency_id") 
	private ConstituencyData constituencyData;


	String addressStr;
	String location;
	//Address address;
	
	@OneToMany(mappedBy = "candidateData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	Set<VoterData> voterDataSet; 
	
	public CandidateData() {
		
		//voterDataSet = new HashSet<VoterData>(); 
		genericDateAndTimeData = new GenericDateAndTimeData(); 
	}


}

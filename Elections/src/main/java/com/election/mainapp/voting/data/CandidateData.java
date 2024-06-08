/**
 * 
 */
package com.election.mainapp.voting.data;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.sql.Date;

import java.util.Set;

import javax.imageio.ImageIO;
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
import javax.swing.JPanel;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

//import org.springframework.web.multipart.MultipartFile;

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
@Table(name = "t_candidate") 
public class CandidateData implements Serializable{

	

	@Id 
	@GeneratedValue( strategy=GenerationType.AUTO)  	
//	@Column(name="id", columnDefinition = "int(10)")
	@Column(name = "id", nullable = false, columnDefinition = "int default 1")
	private Integer id;
	private String fullName;
	private String ssn;
    private String userName;
    private String  password;
	private String email;
	private String  mobile;
    
    @Transient
	private String englishFullName;
    @Transient
	private String firstName;
    @Transient
	private String middleName;
    @Transient
	private String secondMiddleName;
    @Transient
	private String lastName;
    @Transient
	private String surName;

	//private String name;

	@Transient
	private String AreaAppliedfor;
	@Transient
	private String DepartmentOfAppliedPosition;
	@Transient
	private Date date;
	@Transient
	private String title;
	@Transient
	private String resume;
	@Transient
	private String companyName;
	@Transient
	private String  role;
	@Transient
	private String  singupAsvoterFlag;
	
	
	//IMAGE BY PHONE CAMERA WAS 1048576 bytes
	//How to pass variable as long text:  @Column(columnDefinition="TEXT")
    @Column(name = "image_data", length = 2000000)    
    //@NotNull: error received 'must not be null'
    private byte[] imageData;
    
    @Transient
    String base64image; 
    
    @Transient
    String path;

    @Transient
    String path2;
    
//    @Transient
//    String imageStr;
//    private String photo;
    
    @Transient
    MultipartFile multipartFile;
//    MultipartFile multipartFile;
    
    @Transient
    private Integer numberOfVotes;
    
    @Transient
    private Integer index;
    

//    private BufferedImage image;
//	public BufferedImage getImage() {
//		
//		return image;
//	}
//	public void setImage(String path) {
//	       try {                
//	           this.image = ImageIO.read(new File(path));
//	        } catch (IOException ex) {
//	             // handle exception...
//	        }
//	}
//	
	
	@ManyToOne 
    @JoinColumn(name="governorate_Id")
    private GovernorateData governorateData;
	
	
	@Transient
	private Integer governorateId;
	
	@Transient
	private Integer constituencyId;
	private GenericDateAndTimeData genericDateAndTimeData;
	
	@Transient
	private String position;
	
	@Transient
	private String  gender;
	@Transient
	private String status;
	@Transient
	private String  year;
	@Transient
	private String  electoralListNumber;
	@Transient
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

	@Transient
	private String addressStr;
	@Transient
	private String location;
	//Address address;
	
	@OneToMany(mappedBy = "candidateData",  fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	Set<VoterData> voterDataSet; 
	
	public CandidateData() {
		
		//voterDataSet = new HashSet<VoterData>(); 
		genericDateAndTimeData = new GenericDateAndTimeData();
//        try {                
//            image = ImageIO.read(new File("image name and path"));
//         } catch (IOException ex) {
//              // handle exception...
//         }
        
	}


}

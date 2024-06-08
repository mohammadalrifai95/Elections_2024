package com.election.mainapp.voting.data;

import java.io.Serializable;
//import java.sql.Date;
import java.util.Date; 
import org.springframework.stereotype.Component;


//import jakarta.persistence.Column;
//import jakarta.persistence.Embeddable;
//import lombok.Data;


import javax.persistence.Column;
import javax.persistence.Embeddable;
import lombok.Data;



//@Getter //@Setter  //@RequiredArgsConstructor
@Data //All together now: A shortcut for @ToString, @EqualsAndHashCode, @Getter on all fields, @Setter on all non-final fields, and @RequiredArgsConstructor!
//@Entity 
@Embeddable
@Component
public  class GenericDateAndTimeData implements Serializable{ 
	
	
	
//	@Id  
//	@GeneratedValue(strategy=GenerationType.AUTO)
//	private Long id; 
	
	//@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CREATED_TS", nullable = true)
    //@CreatedDate
    private  Date createdTs;
//    private  LocalDateTime  createdTs;
    
    public GenericDateAndTimeData() {
		super();
		
		//this.setCreatedBy("System");
		this.setCreatedTs(new Date());
		//this.setUpdatedBy("System");
		this.setUpdatedTs(new Date());
	}

	@Column(name = "CREATED_BY", nullable = true) 
    //private  UserData createdBy = new UserData(); 
	private  String createdBy;
    
    
    @Column(name = "UPDATED_TS", nullable = true) 
    //@LastModifiedDate 
    private  Date updatedTs;
//    private  LocalDateTime updatedTs; 
    
    @Column(name = "UPDATED_BY", nullable = true)  
    //private  UserData updatedBy = new UserData();
    private  String updatedBy;
 
	
}

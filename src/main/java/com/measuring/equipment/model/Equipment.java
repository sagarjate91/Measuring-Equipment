package com.measuring.equipment.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Table(name = "EQUIPMENT")
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Equipment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String equipmentId;
	@Transient
	private String equipmen_sn;
	private String equipmentDescription;
	private String equipmentLeastCount;
	private String equipmentUnit;
	private String equipmentManfacturerName;
	private String equipmentCreatedBy;
	private String equipmentCreatedDate;
	private String equipmentCreatedTime;
	private String equipmentReasonForUpdate;
	
}

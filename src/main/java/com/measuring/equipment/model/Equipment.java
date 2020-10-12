package com.measuring.equipment.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

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
	private String equipmentCalibrationFrequency;
	private String equipmentCalibrationLaboratory;
	private String equipmentCalibrationCertificateNo;
	private String equipmentCalibrationCertificateName;
	private String equipmentCalibrationResults;
	private String equipmentCalibrationUnit;
	private String equipmentAcceptanceCriteria;
	private String equipmentAcceptanceCriteriaUnit;
	private String equipmentDecisionOurRemark;
	private String equipmentLocation;
	private String equipmentCalibrationExpiryDate;
	private String equipmentType;
	private String notesValues;

	@Transient
	private MultipartFile file;

}

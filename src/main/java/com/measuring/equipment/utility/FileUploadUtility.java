package com.measuring.equipment.utility;

import com.measuring.equipment.model.Equipment;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


public class FileUploadUtility {
	
	public static void uploadProductDetails(MultipartFile file, Equipment equipment) {
		try {
			
			byte[] bytes = file.getBytes();	
			Path path = Paths.get("D:\\Start Web\\" + file.getOriginalFilename());
			Files.write(path, bytes);
			equipment.setEquipmentCalibrationCertificateName(file.getOriginalFilename());

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

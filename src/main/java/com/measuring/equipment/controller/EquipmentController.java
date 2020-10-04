package com.measuring.equipment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.measuring.equipment.model.Equipment;
import com.measuring.equipment.repository.EquipmentRepository;
import com.measuring.equipment.services.ConstantService;

@Controller
@RequestMapping("/measuring/equipment/customer")
public class EquipmentController {

	@Autowired
	EquipmentRepository erepo;

	@GetMapping("/new-equipment.htm")
	public String equipment(Model model, @ModelAttribute("message") String message) {
		model.addAttribute(ConstantService.NAME, ConstantService.TITLE);
		model.addAttribute(ConstantService.TITLE, "Customer");
		model.addAttribute("userClickNewEquipment", true);
		model.addAttribute("method", "POST");
		model.addAttribute(ConstantService.ACTION, "measuring/equipment/customer/equipment-add");
		model.addAttribute(ConstantService.COMMAND, new Equipment());
		if (message != null) {
			model.addAttribute(ConstantService.MESSAGE, message + "");
		}
		return "page";
	}

	@GetMapping("/{id}/update")
	public String showSingleEquipment(@PathVariable long id, Model model) {
		model.addAttribute(ConstantService.NAME, ConstantService.TITLE);
		model.addAttribute(ConstantService.TITLE, "Customer");
		model.addAttribute("userClickNewEquipment", true);
		model.addAttribute("userClickUpdate", true);
		model.addAttribute(ConstantService.ACTION, "measuring/equipment/customer/equipment-update");
		model.addAttribute(ConstantService.COMMAND, erepo.findById(id));
		return "page";
	}

	@GetMapping("/update-equipment.htm")
	public String equipmentUpdate(Model model) {
		model.addAttribute(ConstantService.NAME, ConstantService.TITLE);
		model.addAttribute(ConstantService.TITLE, "Customer");
		model.addAttribute("userClickUpdateEquipment", true);
		model.addAttribute(ConstantService.COMMAND, new Equipment());
		return "page";
	}

	@PostMapping("/equipment-add")
	public String equipmentAdd(@ModelAttribute("command") Equipment equipment, Model model,
			RedirectAttributes redirectAttributes) {
	
		erepo.save(equipment);
		redirectAttributes.addFlashAttribute(ConstantService.MESSAGE, "Equipment added successfully....!!!");
		return "redirect:/measuring/equipment/customer/new-equipment.htm";
	}
	
	@RequestMapping("/equipment-update")
	public String equipmentUpdate(@ModelAttribute("command") Equipment equipment, Model model,
			RedirectAttributes redirectAttributes) {
		erepo.saveAndFlush(equipment);
		redirectAttributes.addFlashAttribute(ConstantService.MESSAGE, "Equipment updated successfully....!!!");
		return "redirect:/measuring/equipment/customer/new-equipment.htm";
	}

}

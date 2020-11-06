package com.training.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.training.entity.BrandEntity;
import com.training.model.ResponseDataModel;
import com.training.service.IBrandService;

@Controller
@RequestMapping(value = { "/brand" })
public class BrandController {

	@Autowired
	IBrandService brandService;

	@GetMapping
	public String initPage(Model model) {
		return "brand-index";
	}

	@GetMapping(value = {"/add"})
	public String initAddPage() {
		return "brand-add";
	}

	@PostMapping(value = {"/add"})
	public String add(@ModelAttribute BrandEntity brandEntity, RedirectAttributes redirectAttributes) {

		if (brandService.findByBrandName(brandEntity.getBrandName()) != null) {
			redirectAttributes.addFlashAttribute("errorMessage", "Brand Name is duplicated");
			return "redirect:/brand/add";
		}
		BrandEntity brandEntityUpdated = brandService.add(brandEntity);
		if (brandEntityUpdated == null) {
			redirectAttributes.addFlashAttribute("errorMessage", "Add Brand Fail");
			return "redirect:/brand/add";
		} else {
			return "redirect:/brand";
		}
	}

	@GetMapping(value = {"/update"})
	public String initUpdatePage(@RequestParam(name = "id") Long brandId, Model model) {
		model.addAttribute("brandEntity", brandService.findByBrandId(brandId));
		return "brand-update";
	}

	@PostMapping(value = {"/update"})
	public String update(@ModelAttribute BrandEntity brandEntity, Model model, RedirectAttributes redirectAttributes) {
		BrandEntity brandEntityUpdated = brandService.update(brandEntity);
		if (brandEntityUpdated == null) {
			redirectAttributes.addFlashAttribute("errorMessage", "Add Brand Fail");
			return "redirect:/brand/update?id=" + brandEntity.getBrandId();
		} else {
			return "redirect:/brand";
		}
	}

	@GetMapping(value = {"/delete"})
	public String delete(@RequestParam(name = "id") Long brandId) {
		brandService.delete(brandId);
		return "redirect:/brand";
	}

	@GetMapping("/api/find")
	@ResponseBody
	public ResponseDataModel findBrandByIbApi(@RequestParam("id") Long brandId) {
		return brandService.findBrandByIbApi(brandId);
	}

	@GetMapping("/api/findAll/{pageNumber}")
	@ResponseBody
	public ResponseDataModel findAllWithPagerApi(@PathVariable("pageNumber") int pageNumber) {
		return brandService.findAllWithPagerApi(pageNumber);
	}

	@PostMapping(value = {"/api/add"})
	@ResponseBody
	public ResponseDataModel addApi(@ModelAttribute BrandEntity brandEntity) {
		return brandService.addApi(brandEntity);
	}

	@PostMapping(value = {"/api/update"})
	@ResponseBody
	public ResponseDataModel updateApi(@ModelAttribute BrandEntity brandEntity) {
		return brandService.updateApi(brandEntity);
	}

	@DeleteMapping(value = {"/api/delete/{brandId}"})
	@ResponseBody
	public ResponseDataModel deleteApi(@PathVariable("brandId") Long brandId) {
		return brandService.deleteApi(brandId);
	}
	
	@GetMapping(value = { "/api/search/{keyword}/{pageNumber}" })
	@ResponseBody
	public ResponseDataModel searchApi(@PathVariable("keyword") String keyword,
			@PathVariable("pageNumber") int pageNumber) {
		return brandService.search(keyword, pageNumber);
	}
	
}
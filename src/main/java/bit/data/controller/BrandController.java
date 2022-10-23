package bit.data.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import bit.data.dto.SellerDto;
import bit.data.service.BrandServiceInter;

import bit.data.dto.ProductDto;
import bit.data.service.BrandService;
import bit.data.service.BrandServiceInter;

@Controller
@RequestMapping("/brand")
public class BrandController {
	
	@Autowired
	BrandServiceInter brandServiceInter;
	
	@GetMapping("/list")
	public String brandPage(Model model) {
		
		List<SellerDto> brandlist = brandServiceInter.getAllBrand();
		
		model.addAttribute("list",brandlist);
		
		return "/bit/brand/brandMainPage";
	}

	@GetMapping("/infiniteScrollDown")
	@ResponseBody
	public List<SellerDto> infiniteScrollDown(int bno) {
		
		return brandServiceInter.infiniteScrollDown(bno);
	}
	
	//釉뚮옖�뱶由ъ뒪�듃
	@GetMapping("/detail")
	public String brandMain(Model model, HttpServletRequest request , String brand) {
		SellerDto dto = brandServiceInter.getLogoDesc(brand);
		int count = brandServiceInter.getTotalBrandCount(brand);
		List<ProductDto> pdtoList = brandServiceInter.getBrandAll(brand);
		String sort = "createdAt";
		
		List<ProductDto> productList = brandServiceInter.getBrandByName(brand, sort);
		model.addAttribute("productList",pdtoList);
		
		model.addAttribute("count", count);
		model.addAttribute("brand", brand);
		model.addAttribute("dto", dto);
		
		return "/bit/brand/brandDetailPage";
	}
	
	//媛�寃⑹닚 �벑 
	@GetMapping("/brandSort")
	@ResponseBody
	public Map<String, Object> getSort(String brand, String sort){
		Map<String, Object> map= new HashMap<String, Object>();
		String productName = brand;
		List<ProductDto> productList = brandServiceInter.getBrandByName(productName, sort);
		
		map.put("productList", productList);
		return map;
	
	}
	
	@GetMapping("/categorySelect")
	@ResponseBody
	public List<SellerDto> categorySelect(String sort) {
		
		return brandServiceInter.selectBrandTheme(sort);
	}

	@GetMapping("/categoryAllSelect")
	@ResponseBody
	public List<SellerDto> categoryAllSelect() {
		
		return brandServiceInter.getAllBrand();
	}

	@GetMapping("/selectBrandName")
	@ResponseBody
	public List<SellerDto> selectBrandName(String name) {
		System.out.println(name+","+brandServiceInter.selectBrandName(name).size());
		return brandServiceInter.selectBrandName(name);
	}
	
}

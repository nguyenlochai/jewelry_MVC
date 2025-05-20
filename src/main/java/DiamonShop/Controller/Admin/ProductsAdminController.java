package DiamonShop.Controller.Admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Service.Admin.IProductsAdminnService;
import DiamonShop.Service.User.HomeServiceImpl;

@Controller
public class ProductsAdminController extends BaseAdminController{

	@Autowired
	HomeServiceImpl _homeService;
	
	@Autowired
	IProductsAdminnService iProductsAdminnService;
	

	
	
	@RequestMapping("/admin/products")
	public ModelAndView Products() {
		
		
		
		_mvShare.setViewName("admin/ManageProduct/products");
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		
		_mvShare.addObject("id_category1", iProductsAdminnService.getCategoryCountByID(1));
		_mvShare.addObject("id_category2", iProductsAdminnService.getCategoryCountByID(2));
		_mvShare.addObject("id_category3", iProductsAdminnService.getCategoryCountByID(3));
		_mvShare.addObject("id_category4", iProductsAdminnService.getCategoryCountByID(4));
		
		 
		_mvShare.addObject("products", iProductsAdminnService.GetDataProductsAdmin());
		return _mvShare;
	}
	
	
	@RequestMapping(value = "/admin/products", method = RequestMethod.POST)
	public ModelAndView AddQuantityProducts(@RequestParam("idProducts") int idProducts, @RequestParam("newQuantity") int newQuantity) {
	    int count = iProductsAdminnService.AddQuantityProducts(idProducts, newQuantity);
	    if (count > 0) {
	        _mvShare.addObject("status", "Cập nhật số lượng sản phẩm thành công");
	        _mvShare.setViewName("admin/ManageProduct/products");
	    } else {
	        _mvShare.addObject("status", "Cập nhật số lượng sản phẩm thất bại");
	        _mvShare.setViewName("admin/ManageProduct/products");
	    }
	    return _mvShare;
	}
	
	
	@RequestMapping(value = "/AddProducts", method = RequestMethod.GET)
    public ModelAndView AddProducts() {
		
		_mvShare.setViewName("admin/ManageProduct/addProducts");
		_mvShare.addObject("product", new ProductsDto());
        return _mvShare;
    }
	
	
	@RequestMapping(value = "/AddProducts", method = RequestMethod.POST)
	public String AddProductss(@ModelAttribute("product") ProductsDto product,HttpServletRequest request ) {
		int count = iProductsAdminnService.insertProduct(product);
		int cont = iProductsAdminnService.insertColor(product);
		if(count > 0 && cont > 0) {
			
	        _mvShare.addObject("status", "thêm thành công 1 sản phẩm");
	        
	        return "redirect:"+ request.getHeader("Referer");
	    }else{
	        
	    	_mvShare.addObject("status", "thất bại 1 sản phẩm");
	    	return "redirect:"+ request.getHeader("Referer");
	        
	    }
    }
	
	
	@RequestMapping(value = "/admin/DeleteProduct/{id}")
	public String deleteProduct(@PathVariable("id") int productId, HttpServletRequest request) {
	    int count = iProductsAdminnService.deleteProduct(productId);
	    if (count > 0) {
	        _mvShare.addObject("delet", "Xóa thành công 1 sản phẩm ");
	    } else {
	        _mvShare.addObject("delet", "Xóa thất bại.");
	    }
		return "redirect:"+ request.getHeader("Referer");
	}
	
	
//	@RequestMapping(value = "/admin/san-pham/{id}")
//	public ModelAndView deleteProduct(@PathVariable("id") int productId) {
//		
//		 _mvShare.setViewName("admin/ManageProduct/categoryProduct");
//		 
//		 return _mvShare;
//	
//	}
	
    

	
	
//	@RequestMapping(value = "/AddProducts", method = RequestMethod.POST)
//	public ModelAndView AddProduct(@ModelAttribute("Products") ProductsDto productDto) {
//		
//		
//		try {
//	        // Lưu sản phẩm
//	        iProductsAdminnService.saveProduct(productDto);
//	       
//	        _mvShare.setViewName("redirect:/admin/ManageProduct/products");
//	    } catch (Exception e) {
//	        
//	        
//	        _mvShare.setViewName("redirect:/admin/ManageProduct/addProducts");
//	    }
//		
//		
//		return _mvShare;
//	}



	
	
}




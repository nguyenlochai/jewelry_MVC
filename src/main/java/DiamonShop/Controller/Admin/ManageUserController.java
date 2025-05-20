package DiamonShop.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Service.Admin.ManageUsersServiceImpl;

@Controller
public class ManageUserController extends BaseAdminController {
	
	@Autowired
	ManageUsersServiceImpl manageUsersServiceImpl;
	
	
	@RequestMapping("/admin/user")
	public ModelAndView LoginAdmin() {
		
		_mvShare.setViewName("admin/ManageUsers/users");
		_mvShare.addObject("users", manageUsersServiceImpl.GetUsers());
		return _mvShare;
	}
	
	
	@RequestMapping("/admin/userRegister")
	public ModelAndView UserRegister() {
		_mvShare.addObject("lichSuBillDetail", _homeService.GetDataLichSu());
		_mvShare.addObject("lichSuBill", _homeService.GetDataLichSuBills());
		_mvShare.addObject("products", _homeService.GetDataProductsAdmin());
		_mvShare.setViewName("admin/ManageUsers/usersRegister");
		_mvShare.addObject("users", manageUsersServiceImpl.GetUsers());
		return _mvShare;
	}
	
	
	@RequestMapping("/admin/userBills")
	public ModelAndView userBills() {
		_mvShare.addObject("lichSuBillDetail", _homeService.GetDataLichSu());
		_mvShare.addObject("lichSuBill", _homeService.GetDataLichSuBills());
		_mvShare.addObject("products", _homeService.GetDataProductsAdmin());
		_mvShare.setViewName("admin/ManageUsers/userBills");
		_mvShare.addObject("users", manageUsersServiceImpl.GetUsers());
		return _mvShare;
	}
	
	
	
	
	
	
	
	
}

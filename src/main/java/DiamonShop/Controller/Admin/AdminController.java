package DiamonShop.Controller.Admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Entity.Admin;
import DiamonShop.Service.Admin.AccountAdminServiceImpl;

@Controller
public class AdminController extends BaseAdminController {
	
	@Autowired
	AccountAdminServiceImpl accountService = new AccountAdminServiceImpl();
	
	@RequestMapping("/admin/login")
	public ModelAndView LoginAdmin() {
		
		_mvShare.setViewName("admin/account/login");
		_mvShare.addObject("admin", new Admin());
		return _mvShare;
	}
	
	@RequestMapping(value = "/admin/trang-chu", method = RequestMethod.POST)
	public ModelAndView LoginAdmin(HttpSession session, @ModelAttribute("admin") Admin admin) {
		admin = accountService.CheckAccount(admin);
		if (admin != null) {
			_mvShare.setViewName("admin/index");
			session.setAttribute("LoginInfo", admin);
		}else {
			_mvShare.addObject("statusLogin", "Email hoặc mật khẩu của bạn sai!");
		}
		return _mvShare;
	}
	
	

}

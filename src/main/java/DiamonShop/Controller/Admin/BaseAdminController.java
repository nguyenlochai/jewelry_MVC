package DiamonShop.Controller.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Service.User.HomeServiceImpl;
@Controller
public class BaseAdminController {
	@Autowired
	HomeServiceImpl _homeService;
	public ModelAndView _mvShare = new ModelAndView();
	
	
}

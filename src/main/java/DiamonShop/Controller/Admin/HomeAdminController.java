package DiamonShop.Controller.Admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeAdminController extends BaseAdminController {
	
	@RequestMapping("/admin/trang-chu")
	public ModelAndView Index() {
		
		_mvShare.setViewName("admin/index");
		return _mvShare;
	}

}

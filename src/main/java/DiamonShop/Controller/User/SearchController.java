package DiamonShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Service.User.SearchServiceImpl;

@Controller
public class SearchController extends BaseController{
	
	@Autowired 
	SearchServiceImpl _searchService;
	
	@RequestMapping("/search")
	public ModelAndView Search(@RequestParam("search") String search) {
		_mvShare.setViewName("user/products/search");
		_mvShare.addObject("search", _searchService.SearchAll(search));
		
		return _mvShare;
	}

}

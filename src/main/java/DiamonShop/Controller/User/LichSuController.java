package DiamonShop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LichSuController extends BaseController {
	@RequestMapping(value = { "Lich-Su" })
	public ModelAndView LichSu() {
		_mvShare.addObject("lichSuBillDetail", _homeService.GetDataLichSu());
		_mvShare.addObject("lichSuBill", _homeService.GetDataLichSuBills());
		_mvShare.addObject("products", _homeService.GetDataProductsAdmin());
		_mvShare.setViewName("user/bills/lichSu");
		return _mvShare;
	}
}

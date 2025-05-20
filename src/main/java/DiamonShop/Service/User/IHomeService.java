package DiamonShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;
import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.Menus;
import DiamonShop.Entity.Slides;
@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categorys> GetDataCategorys();
	public List<Menus> GetDataMenus();
	public List<ProductsDto> GetDataProducts();
	public List<BillDetail> GetDataLichSu();
	public List<Bills> GetDataLichSuBills();
	public List<ProductsDto> GetDataProductsAdmin();
	
}
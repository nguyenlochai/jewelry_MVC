
package DiamonShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.BillsDao;
import DiamonShop.Dao.CategorysDao;
import DiamonShop.Dao.MenuDao;
import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dao.SlidesDao;
import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;
import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.Menus;
import DiamonShop.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categoryDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductsDao productsDao;
	
	@Autowired
	BillsDao billsDao;
	

	
	public List<Slides> GetDataSlide() {
		return slidesDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {
		return categoryDao.GetDataCategorys();
	}
	
	public List<Menus> GetDataMenus() {
		return menuDao.GetDataMenus();
	}

	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		listProducts.get(0).getId_color();
		return listProducts;
	}

	@Override
	public List<BillDetail> GetDataLichSu() {
		
		return billsDao.GetDataLichSu();
	}

	@Override
	public List<Bills> GetDataLichSuBills() {
		
		return billsDao.GetDataLichSuBills();
	}
	
	@Override
	public List<ProductsDto> GetDataProductsAdmin() {
		List<ProductsDto> listProducts = productsDao.GetDataProductsAdmin();
		listProducts.get(0).getId_color();
		return listProducts;
	}
	
	 

}

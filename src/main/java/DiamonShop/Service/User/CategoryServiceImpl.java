package DiamonShop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dto.ProductsDto;

@Service
public class CategoryServiceImpl implements ICategoryService{

	@Autowired
	private ProductsDao productsDao;
	
	//lấy dữ liệu phân trang
	@Override
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {	
		return productsDao.GetAllProductsPaginate(id, start, totalPage);
	}

	//có dữ liệu phân trang rồi lấy sản phẩm
	@Override
	public List<ProductsDto> GetAllProductsByID(int id) {
		return productsDao.GetAllProductsByID(id);
	}

	
	
	

	

}

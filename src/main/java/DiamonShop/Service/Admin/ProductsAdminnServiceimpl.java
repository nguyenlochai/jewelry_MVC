package DiamonShop.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dto.ProductsDto;

@Service
public class ProductsAdminnServiceimpl implements IProductsAdminnService {
	
	@Autowired
	ProductsDao productsDao = new ProductsDao();
	

	@Override
	public List<ProductsDto> GetDataProductsAdmin() {
		return productsDao.GetDataProductsAdmin();
	}


	
	
	@Override
	public int deleteProduct(int productId) {
		return  productsDao.deleteProduct(productId);
	}



	@Override
	public int getCategoryCountByID(int id) {
		
		return productsDao.getCategoryCountByID(id);
	}



	@Override
	public int AddQuantityProducts(int idProducts, int newQuantity) {
		return productsDao.AddQuantityProducts(idProducts, newQuantity);
	}




	@Override
	public int insertProduct(ProductsDto productsDto) {
		return productsDao.insertProduct(productsDto);
	}




	@Override
	public int insertColor(ProductsDto productsDto) {
		return productsDao.insertColor(productsDto);
				
	}




	



	







	



	

	

	

}

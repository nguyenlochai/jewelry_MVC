package DiamonShop.Service.Admin;

import java.util.List;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;

@Service
public interface IProductsAdminnService {
	List<ProductsDto> GetDataProductsAdmin();
	
	public int insertProduct(ProductsDto productsDto);
	
	public int insertColor(ProductsDto productsDto);
	
	
	
	 public int deleteProduct(int productId);
	
	public int getCategoryCountByID(int id);
	
	public int AddQuantityProducts(int idProducts, int newQuantity);
}

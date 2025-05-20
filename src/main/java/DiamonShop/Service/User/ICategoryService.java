package DiamonShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;

@Service
public interface ICategoryService {
	// List là dùng để trả về đối tượng
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage);
	
	public List<ProductsDto> GetAllProductsByID(int id);
}

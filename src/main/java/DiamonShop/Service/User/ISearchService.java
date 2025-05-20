package DiamonShop.Service.User;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;



@Service
public interface ISearchService {
	
	public ProductsDto SearchAll(String search);
		
	
}

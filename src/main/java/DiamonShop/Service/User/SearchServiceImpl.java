package DiamonShop.Service.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.SearchDao;
import DiamonShop.Dto.ProductsDto;

@Service
public class SearchServiceImpl implements ISearchService {

	@Autowired 
	SearchDao searchDao;
	
	@Override
	public ProductsDto SearchAll(String search) {
		
		return searchDao.SearchAll(search);
	}

}

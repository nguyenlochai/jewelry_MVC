package DiamonShop.Dao;

import org.springframework.stereotype.Repository;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Dto.ProductsDtoMapper;

@Repository
public class SearchDao extends BaseDao {
	
	
	
	public ProductsDto SearchAll(String search) {
		String sql = "SELECT * FROM products WHERE name like '"+search+"'";
		
		ProductsDto result = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return result;
		
	}
	public static void main(String[] args) {
		SearchDao dao = new SearchDao();
		System.out.println(dao.SearchAll("name"));
	}
}
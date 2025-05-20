package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Dto.ProductsDtoMapper;

@Repository
public class ProductsDao extends BaseDao {

	private final boolean YES = true;
	private final boolean NO = false;
	
	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id as id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.sizes ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.title ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.details ");
		sql.append(", c.id as id_color ");
		sql.append(", c.name as name_color ");
		sql.append(", c.code as code_color ");
		sql.append(", c.img ");
		sql.append(", p.created_at ");
		sql.append(", p.updated_at ");
		sql.append(", p.soluong ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("colors AS c ");
		sql.append("ON p.id = c.id_product ");
		return sql;
	}

	private String SqlProducts(boolean newProduct, boolean highLight) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		if (highLight) {
			sql.append("AND p.highlight = true ");
		}
		if (newProduct) {
			sql.append("AND p.new_product = true ");
		}
		sql.append("GROUP BY p.id, c.id_product ");
		sql.append("ORDER BY RAND() ");
		if (highLight) {
			sql.append("LIMIT 9 ");
		}
		if (newProduct) {
			sql.append("LIMIT 12 ");
		}
		return sql.toString();
	}
	
	
	
	private StringBuffer SqlProductsByID(int id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id_category =" + id+ " ");

		return sql;
	}
	
	//admin
	public int getCategoryCountByID(int id) {
	    String sql = "SELECT COUNT(*) FROM products WHERE id_category = ?";
	    int count = _jdbcTemplate.queryForObject(sql, Integer.class, id);
	    return count;
	}
	
//	public StringBuffer SqlCategoryCountByID() {
//	    StringBuffer sql = new StringBuffer();
//	    sql.append("SELECT COUNT(*) ");
//	    sql.append("FROM products ");
//	    
//	    sql.append(" GROUP BY id_category;");
//	    return sql;
//	}

	
	
	
	private String SqlProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sql = SqlProductsByID(id);
		sql.append("LIMIT " + start + ","  + totalPage);
		return sql.toString();
	}

	
	public List<ProductsDto> GetDataProducts() {
		String sql = SqlProducts(NO, YES);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDto> GetAllProductsByID(int id) {
		
		String sql = SqlProductsByID(id).toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDto> GetAllProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByID = SqlProductsByID(id);
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDto> listProducts = new ArrayList<ProductsDto>();
		//có sản phẩm
		if(listProductsByID.size() > 0) {
			String sql = SqlProductsPaginate(id, start, totalPage);
			listProducts =  _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		return listProducts;
	}
	
	private String SqlProductByID(long id) {
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id =" + id+ " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}

	public List<ProductsDto> GetProductByID(long id) {
		String sql = SqlProductByID(id);
		List<ProductsDto> listProduct = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProduct;
	}
	
	public ProductsDto FindProductsByID(long id) {
		String sql = SqlProductByID(id);
		ProductsDto product = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return product;
	}
	
	//admin 
	public List<ProductsDto> GetDataProductsAdmin(){
		List<ProductsDto> list = new ArrayList<ProductsDto>();
		String sql = SqlString().toString();
		list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return list;
	} 
	
	
	//admin
	public int insertProduct(ProductsDto productsDto) {
	    String sql = "INSERT INTO products " +
	                 "(id_category, sizes, name, price, sale, title, highlight, new_product, details, created_at, updated_at, soluong) " +
	                 "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	    return _jdbcTemplate.update(sql, productsDto.getId_category(), productsDto.getSizes(),
	                                productsDto.getName(), productsDto.getPrice(), productsDto.getSale(), productsDto.getTitle(),
	                                productsDto.isHighlight(), productsDto.isNew_product(), productsDto.getDetails(),
	                                productsDto.getCreated_at(), productsDto.getUpdated_at(), productsDto.getSoluong());
	}
	public int insertColor(ProductsDto productsDto) {
	    String sql = "INSERT INTO colors " +
	                 "(id_product, name, code, img) " +
	                 "VALUES (?, ?, ?, ?)";

	    return _jdbcTemplate.update(sql, productsDto.getId_product(), productsDto.getName_color(),
	                                productsDto.getCode_color(), productsDto.getImg());
	}


	

	
	//admin
	public int AddQuantityProducts(int idProducts, int newQuantity) {
	    String updateProductSql = "UPDATE products SET soluong = ? WHERE id = ?";
	    int updatedProduct = _jdbcTemplate.update(updateProductSql, newQuantity, idProducts);
	    return updatedProduct;
	}
	
	
	
	//admin
	
	  public int deleteProduct(int productId) {
	  
	  
		  String deleteProductSql = "DELETE FROM products WHERE id = " + productId; 
		  int deletedProduct = _jdbcTemplate.update(deleteProductSql);
	  
		  return deletedProduct;
	  
	  }
	 



}
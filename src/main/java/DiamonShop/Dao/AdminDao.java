package DiamonShop.Dao;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.Admin;
import DiamonShop.Entity.MapperAdmin;


@Repository
public class AdminDao extends BaseDao {
	public Admin GetAdmin(Admin admin) {
		
		String sql = "SELECT * FROM admin WHERE admin = '"+admin.getAdmin()+"'";
		
		
		Admin result = _jdbcTemplate.queryForObject(sql, new MapperAdmin());
		return result;
	}
}

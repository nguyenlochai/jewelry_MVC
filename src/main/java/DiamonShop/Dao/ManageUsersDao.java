package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import DiamonShop.Entity.MapperUsers;
import DiamonShop.Entity.Users;

@Repository
public class ManageUsersDao {
	
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<Users> GetUsers(){
		List<Users> list = new ArrayList<Users>();
		String sql = "SELECT * FROM users";
		list = _jdbcTemplate.query(sql, new MapperUsers());
		return list;
	} 

}

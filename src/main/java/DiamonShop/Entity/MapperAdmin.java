package DiamonShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperAdmin implements RowMapper<Admin> {

	@Override
	public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
		Admin admin = new Admin();
		admin.setId(rs.getLong("id"));
		admin.setAdmin(rs.getString("admin"));
		admin.setPassword(rs.getString("password"));
		admin.setDisplay_name(rs.getString("display_name"));
		return admin;
	}

}

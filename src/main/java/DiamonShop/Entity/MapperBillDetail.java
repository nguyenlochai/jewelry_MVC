package DiamonShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBillDetail implements RowMapper<BillDetail> {

	@Override
	public BillDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDetail billDetail = new BillDetail();
		billDetail.setId(rs.getInt("id"));
		billDetail.setId(rs.getInt("id_product"));
		billDetail.setId_bills(rs.getInt("id_bills"));
		billDetail.setQuanty(rs.getInt("quanty"));
		billDetail.setTotal(rs.getDouble("total"));
		return billDetail;
	}

}

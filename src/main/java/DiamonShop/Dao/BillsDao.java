package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;
import DiamonShop.Entity.MapperBillDetail;
import DiamonShop.Entity.MapperBills;

@Repository
public class BillsDao extends BaseDao {
	
	public int AddBills(Bills bill) {
	    StringBuffer sql = new StringBuffer();
	    sql.append("INSERT INTO bills ");
	    sql.append("( ");
	    sql.append("    `user`, `phone`, `display_name`, `address`, `thoigian` "); 
	    sql.append(") ");
	    sql.append("VALUES ");
	    sql.append("( ");
	    sql.append(" '"+bill.getUser()+"', ");
	    sql.append(" '"+bill.getPhone()+"', ");
	    sql.append(" '"+bill.getDisplay_name()+"', ");
	    sql.append(" '"+bill.getAddress()+"', ");
	    sql.append(" '"+new java.sql.Timestamp(bill.getThoigian().getTime())+"' "); 
	    sql.append(");");
	    int insert = _jdbcTemplate.update(sql.toString());

	    return insert;
	}

	
	
	// lấy id theo thứ tự lớn nhất(id mới vào)
	public long GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills; ");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, long.class);
		return id;
	}
	
	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ");
		sql.append("( ");
		sql.append("    id_product, ");
		sql.append("    id_bills, ");
		sql.append("    quanty, ");
		sql.append("    total ");
		sql.append(") ");
		sql.append("VALUE ");
		sql.append("( ");
		sql.append("     "+billDetail.getId_product()+", ");
		sql.append("     "+billDetail.getId_bills()+", ");
		sql.append("     "+billDetail.getQuanty()+", ");
		sql.append("     "+billDetail.getTotal()+" ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		
		return insert;
	}
	
	public List<BillDetail> GetDataLichSu(){
		List<BillDetail> list = new ArrayList<BillDetail>();
		String sql = "SELECT * FROM billdetail";
		list = _jdbcTemplate.query(sql, new MapperBillDetail());
		return list;
	} 
	
	public List<Bills> GetDataLichSuBills(){
	    List<Bills> list = new ArrayList<Bills>();
	    String sql = "SELECT * FROM bills";
	    list = _jdbcTemplate.query(sql, new MapperBills());

	    for (Bills bills : list) {
			System.out.println(bills.toString());
		}
	    return list;
	}
	

}

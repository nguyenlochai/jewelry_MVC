package DiamonShop.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.BillsDao;
import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;


@Service
public class BillsServiceImpl implements IBillsService {

	@Autowired
	private BillsDao billsDao;
	
	@Override
	public int AddBills(Bills bill) {
		return billsDao.AddBills(bill);
	}

	@Override
	public void AddBillsDetail(HashMap<Long, CartDto> carts) {
		long idbills = billsDao.GetIDLastBills();
		
		for (Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idbills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
		
	}
	

}

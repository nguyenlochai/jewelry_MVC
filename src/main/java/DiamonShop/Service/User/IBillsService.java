package DiamonShop.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.Bills;

@Service
public interface IBillsService {
	public int AddBills(Bills bills);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);

}

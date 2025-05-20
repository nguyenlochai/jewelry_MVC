package DiamonShop.Service.Admin;

import org.springframework.stereotype.Service;

import DiamonShop.Entity.Admin;

@Service
public interface IAccountAdminService {
	
	
	public Admin CheckAccount(Admin admin);
}

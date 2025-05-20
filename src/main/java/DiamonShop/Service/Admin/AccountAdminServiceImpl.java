package DiamonShop.Service.Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.AdminDao;
import DiamonShop.Entity.Admin;

@Service
public class AccountAdminServiceImpl implements IAccountAdminService {

	
	@Autowired
	AdminDao adminDao = new AdminDao();

	
	@Override
	public Admin CheckAccount(Admin admin) {
		String pass = admin.getPassword();
		admin = adminDao.GetAdmin(admin);
		if(admin != null ) {
			if(pass.equals(admin.getPassword())) {
				return admin;
			}else {
				return null;
			}
		}
		
		return null;
	}

	
}

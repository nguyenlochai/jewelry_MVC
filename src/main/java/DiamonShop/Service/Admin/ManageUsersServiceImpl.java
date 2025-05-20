package DiamonShop.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ManageUsersDao;
import DiamonShop.Entity.Users;

@Service
public class ManageUsersServiceImpl implements IManageUsersService {

	@Autowired
	ManageUsersDao manageUsersDao;
	
	@Override
	public List<Users> GetUsers() {
		return manageUsersDao.GetUsers();
	}
	
	
}

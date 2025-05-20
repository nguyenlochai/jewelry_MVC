package DiamonShop.Service.Admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Entity.Users;

@Service
public interface IManageUsersService {
	@Autowired
	public List<Users> GetUsers();
}

package DiamonShop.Service.User;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.UsersDao;
import DiamonShop.Entity.Users;

@Service
public class AccountServiceImpl implements IAccountService {
	
	@Autowired
	UsersDao usersDao = new UsersDao();
	
	public int AddAccount(Users user) {
		if (usersDao.checkUserExists(user.getUser())) {
            return 0; // Trả về 0 nếu người dùng đã tồn tại
        }
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)) );
		return usersDao.AddAccount(user);
	}

	@Override
	public Users CheckAccount(Users user) {
		String pass = user.getPassword();
		user = usersDao.GetUserByAcc(user);
		if(user != null ) {
			if(BCrypt.checkpw(pass, user.getPassword())) {//so sánh mk người dùng nhập vào và mk đã được mã hóa trong dữ liệu có giống nhau
				return user;
			}else {
				return null;
			}
		}
		
		return null;
	}
	
		
}

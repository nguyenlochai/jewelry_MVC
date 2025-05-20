package DiamonShop.Service.User;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	// List là dùng để trả về đối tượng
	public PaginatesDto GetInfoPaginates(int id, int totalData, int limit, int currentfPage);
}

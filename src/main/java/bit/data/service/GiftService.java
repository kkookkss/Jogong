package bit.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bit.data.dao.GiftDaoInter;
import bit.data.dto.OrderDto;
import bit.data.dto.ProductDto;
import bit.data.dto.UserDto;

@Service
public class GiftService implements GiftServiceInter{

	@Autowired
	GiftDaoInter giftDao;

	@Override
	public List<OrderDto> getReceiveSearch(int userNum) {
		// TODO Auto-generated method stub
		return giftDao.getReceiveSearch(userNum);
	}

	@Override
	public List<OrderDto> getSendSearch(int userNum) {
		// TODO Auto-generated method stub
		return giftDao.getSendSearch(userNum);
	}

}

package bit.data.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bit.data.dto.CartListDto;

public interface CartDaoInter {
	public List<CartListDto> getCartList(int userNum);
	public void deleteCart(int cartNum);
	public void deleteCheckCart(HashMap<String,Object> map);
	public void updateCart(Map<String,Integer> map);
	public void insertCart(CartListDto dto);	
}

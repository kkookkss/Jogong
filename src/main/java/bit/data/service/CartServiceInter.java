package bit.data.service;

import java.util.HashMap;
import java.util.List;

import bit.data.dto.CartListDto;

public interface CartServiceInter {
	public List<CartListDto> getCartList(int userNum);
	public void deleteCart(int cartNum);
	public void deleteCheckCart(HashMap<String,Object> map);
	public void updateCart(int cartNum, int qty);
	public void insertCart(CartListDto dto);	
}

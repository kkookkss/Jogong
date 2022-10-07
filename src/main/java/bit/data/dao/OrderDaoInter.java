package bit.data.dao;

import java.util.List;

import bit.data.dto.OrderDto;

public interface OrderDaoInter {

	public List<OrderDto> getAllSearch();

	public String getItemNameSearch(int num);

	public Integer getItemPriceSearch(int num);
	
	public String getItemThumbnailSearch(int num);
	
	public String getfriendNickNameSearch(int num);
	
	public String getNickNameSearch(int num);
	
	public Integer getCount(int num);
	
	public void insertOrder(OrderDto dto);
	
	public Integer getUserNum(int num);

	public Integer getOrderDetailNum(int num);
	
	public Integer getFriendNum(int num);

	public Integer getProductNum(int num);
}

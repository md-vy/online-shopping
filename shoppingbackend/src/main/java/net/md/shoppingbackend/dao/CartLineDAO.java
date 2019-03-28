package net.md.shoppingbackend.dao;

import java.util.List;

import net.md.shoppingbackend.dto.Cart;
import net.md.shoppingbackend.dto.CartLine;

public interface CartLineDAO {
	// the common methods from previously coded one
	public List<CartLine> list(int cartId);
	public CartLine get(int id);	
	public boolean add(CartLine cartLine);
	public boolean update(CartLine cartLine);
	public boolean remove(CartLine cartLine);	
	
	// other business method related to the cart lines
	
	// list of available cartLine
	public List<CartLine> listAvailable(int cartId);
	
	// fetch the CartLine based on cartId and productId
	public CartLine getByCartAndProduct(int cartId, int productId);
	
	// update a cart
	boolean updateCart(Cart cart);
}

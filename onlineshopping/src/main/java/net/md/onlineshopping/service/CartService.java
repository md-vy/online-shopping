package net.md.onlineshopping.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.md.onlineshopping.model.UserModel;
import net.md.shoppingbackend.dao.CartLineDAO;
import net.md.shoppingbackend.dao.ProductDAO;
import net.md.shoppingbackend.dto.Cart;
import net.md.shoppingbackend.dto.CartLine;
import net.md.shoppingbackend.dto.Product;

@Service("cartServie")
public class CartService {
	
	@Autowired
	private CartLineDAO cartLineDAO;
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private HttpSession session;

	// return the cart of the user who has logged in
	private Cart getCart() {
		
		return ((UserModel)session.getAttribute("userModel")).getCart();
	}
	
	// returns the entire cart Lines
	public List<CartLine> getCartLines() {
		return cartLineDAO.list(this.getCart().getId());

	}

	public String manageCartLine(int cartLineId, int count) {
		//fetch the cart line
		CartLine cartLine = cartLineDAO.get(cartLineId);
		
		if(cartLine == null) {
			return "result=error";
		}
		else {
			Product product = cartLine.getProduct();
			double oldTotal = cartLine.getTotal();
			
			// checking if the product quantity is available
			if(product.getQuantity() <= count) {
				return "result=unavailable";
			}
			cartLine.setProductCount(count);
			cartLine.setBuyingPrice(product.getUnitPrice());
			cartLine.setTotal(product.getUnitPrice() * count);
			cartLineDAO.update(cartLine);
			Cart cart = this.getCart();
			cart.setGrandTotal(cart.getGrandTotal() - oldTotal + cartLine.getTotal());
			cartLineDAO.updateCart(cart);
			
			return "result=updated";
		}
		
	}

	public String deleteCartLine(int cartLineId) {
		// fetch the cartLine
		CartLine cartLine = cartLineDAO.get(cartLineId);
		
		if(cartLine == null) {
			return "result=error";
		}
		else {
			// update the cart
			Cart cart = this.getCart();
			cart.setGrandTotal(cart.getGrandTotal() - cartLine.getTotal());
			cart.setCartLines(cart.getCartLines() - 1);
			cartLineDAO.updateCart(cart);
			
			// remove the cart Line
			cartLineDAO.remove(cartLine);
			
			return "result=deleted";
		}
	}

	public String addCartLine(int productId) {
		String response = null;
		Cart cart = this.getCart();
		CartLine cartLine = cartLineDAO.getByCartAndProduct(cart.getId(), productId);
		if(cartLine == null) {
			//add a new cartLine
			cartLine = new CartLine();
			
			// fetch the product
			Product product = productDAO.get(productId);
			cartLine.setCartId(cart.getId());
			cartLine.setProduct(product);
			cartLine.setBuyingPrice(product.getUnitPrice());
			cartLine.setProductCount(1);
			cartLine.setTotal(product.getUnitPrice());
			cartLine.setAvailable(true);
			
			cartLineDAO.add(cartLine);
			cart.setCartLines(cart.getCartLines() + 1);
			cart.setGrandTotal(cart.getGrandTotal() + cartLine.getTotal());
			cartLineDAO.updateCart(cart);
			
			response = "result=added";
		}
		else {
			// check if the cartLine hs reached the maximum count
			if(cartLine.getProductCount() < 3) {
				// update the productcount for that cartLine
				response = this.manageCartLine(cartLine.getId(), cartLine.getProductCount() + 1);
			}
			else {
				response = "result=maximum";
			}
		}
		
		
		
		return response;
	}
	
}

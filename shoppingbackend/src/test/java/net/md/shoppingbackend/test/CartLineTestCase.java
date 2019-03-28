package net.md.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.md.shoppingbackend.dao.CartLineDAO;
import net.md.shoppingbackend.dao.ProductDAO;
import net.md.shoppingbackend.dao.UserDAO;
import net.md.shoppingbackend.dto.Cart;
import net.md.shoppingbackend.dto.CartLine;
import net.md.shoppingbackend.dto.Product;
import net.md.shoppingbackend.dto.User;

public class CartLineTestCase {
	
private static AnnotationConfigApplicationContext context;
	
	
	private static CartLineDAO cartLineDAO = null;
	private static ProductDAO productDAO = null;
	private static UserDAO userDAO = null;

	private Product product = null;
	private User user = null;
	private Cart cart = null;
	private CartLine cartLine = null;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.md.shoppingbackend");
		context.refresh();
		cartLineDAO = (CartLineDAO)context.getBean("cartLineDAO");
		productDAO = (ProductDAO)context.getBean("productDAO");
		userDAO = (UserDAO)context.getBean("userDAO");
	}
	
	@Test
	public void testAddNewCartLine() {
		
		// 1. get the user
		user = userDAO.getByEmail("ab@gmail.com");
		
		// 2. fetch the cart
		cart = user.getCart();
		
		// 3. get the product
		product = productDAO.get(6);
		
		// 4. create a new cartLine
		cartLine = new CartLine();
		
		cartLine.setBuyingPrice(product.getUnitPrice());
		
		cartLine.setProductCount(cartLine.getProductCount() + 1);
		
		cartLine.setTotal(cartLine.getProductCount() * product.getUnitPrice());
		
		cartLine.setAvailable(true);
		
		cartLine.setCartId(cart.getId());
		
		cartLine.setProduct(product);
		
		assertEquals("Failed to add the CartLine!",true, cartLineDAO.add(cartLine));
		
		// update the cart
		cart.setGrandTotal(cart.getGrandTotal() + cartLine.getTotal());
		cart.setCartLines(cart.getCartLines() + 1);
		assertEquals("Failed to update the CartLine!",true, cartLineDAO.updateCart(cart));		
		
	}
	
	
}

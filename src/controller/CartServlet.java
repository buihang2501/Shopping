package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

import model.Product;
import model.Cart;
/**
 * Servlet implementation class Cart
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArrayList<Cart> cart = new ArrayList<Cart>();
       
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String command = request.getParameter("command");
		String maSP = request.getParameter("maSP");
		if (command.equals("addCart")) {
			Product p = new Product ("",maSP, "", "", 0, "");
			System.out.println("Nhung yêu Hoàng");
			addToCart(p);
			// sau khi them vao gio hang ta se chuyen toi trang gio hang
			// can tao session de luu tru gia tri
			HttpSession session = request.getSession();
			System.out.println(cart.size());
			session.setAttribute("cart", cart);
			response.sendRedirect("cart.jsp");
		} else{
			if(command.equals("deleteCart")){
				Product p = new Product ("",maSP, "", "", 0, "");
				deleteFromCart(p);
				System.out.println("Nhung ăn cứt");
				HttpSession session = request.getSession();
				System.out.println(cart.size());
				session.setAttribute("cart", cart);
				response.sendRedirect("cart.jsp");
			} else{
				if(command.equals("removeCart")){
					Product p = new Product ("",maSP, "", "", 0, "");
					removeFromCart(p);
					HttpSession session = request.getSession();

					session.setAttribute("cart", cart);
					response.sendRedirect("cart.jsp");
				}else{
					if(command.equals("setCart")){
						Product p = new Product ("",maSP, "", "", 0, "");
						setCart(p,Integer.parseInt((String) request.getParameter("soluong")));
						HttpSession session = request.getSession();

						session.setAttribute("cart", cart);
						response.sendRedirect("cart.jsp");
					}
				}
			}
		}
	}
	
	private String removeFromCart(Product p) {
		
		for (Cart item : cart) {
			if ((item.getP().getMaSP()).equals(p.getMaSP())) {
				cart.remove(item);
				return "cart";
			}
		}
		return "cart";
	}
	
	private String setCart(Product p, int s) {
		for (Cart item : cart) {
			if ((item.getP().getMaSP()).equals(p.getMaSP())) {
				item.setQuantity(s);
				return "cart";
			}
		}
		Cart c = new Cart();
		c.setP(p);
		c.setQuantity(s);
		cart.add(c);
		return "cart";
	}

	// phuongw thuc them san pham moi vao trong gio hang
	public String addToCart(Product p) {
		for (Cart item : cart) {
			if ((item.getP().getMaSP()).equals(p.getMaSP())) {
				item.setQuantity(item.getQuantity() + 1);
				return "cart";
			}
		}
		Cart c = new Cart();
		c.setP(p);
		c.setQuantity(1);
		cart.add(c);
		return "cart";
	}
	
	// phuongw thuc giam bot 1 san pham khoi trong gio hang
		public String deleteFromCart(Product p) {
			for (Cart item : cart) {
				
				if ((item.getP().getMaSP()).equals(p.getMaSP()) && item.getQuantity()>1) {
					System.out.println("Nhung ăn cứt bò");
					item.setQuantity(item.getQuantity() - 1);
					return "cart";
				}
				if((item.getP().getMaSP()).equals(p.getMaSP()) &&  item.getQuantity()==1) {
					System.out.println("Nhung ăn cứt chó");
					cart.remove(item);
					return "cart";
				}
			}
			return "cart";
		}
		//String maSP = request.getParameter("maSP");
		//System.out.println(maSP);
	
}

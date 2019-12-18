package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProductDAOImpl;
import model.Product;


@WebServlet("/editProduct")
public class EditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProduct() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String maSP = request.getParameter("maSP");
		String err = null;
		Product pr = null;
		try {
		ProductDAOImpl p = new ProductDAOImpl();
		pr = p.getProduct(maSP);
		} catch(Exception e) {
			err = e.getMessage();
			e.printStackTrace();
		}
		if((err!=null)&&(pr==null)) {
			response.sendRedirect(request.getServletPath() + "/adProduct");
			return;
		}
		request.setAttribute("err",err);
		request.setAttribute("product",pr);
		RequestDispatcher rq = request.getServletContext().getRequestDispatcher("/ad_editproduct.jsp");
		rq.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String maSP = request.getParameter("MaSP");
		String maTL = request.getParameter("MaTL");
		String tenSP = request.getParameter("TenSP");
		String hinhanh = request.getParameter("Hinhanh");
		String priceStr = (String) request.getParameter("Price");
		String thongtin = request.getParameter("Thongtin");
		int price = 0;
		try {
			price = Integer.parseInt(priceStr);
		}catch(Exception e) {
		}
		Product pr = new Product(maTL, maSP, tenSP, hinhanh, price, thongtin);
		String error = null;
		ProductDAOImpl p = new ProductDAOImpl();
		try {
			p.updateProduct(pr);
		}catch (Exception e) {
			error = e.getMessage();
			e.printStackTrace();
		}
		request.setAttribute("error", error);
        request.setAttribute("product", pr);
        
        if (error != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/ad_editproduct.jsp");
            dispatcher.forward(request, response);
        }else {
            response.sendRedirect(request.getContextPath() + "/adProduct");
        }
	}

}

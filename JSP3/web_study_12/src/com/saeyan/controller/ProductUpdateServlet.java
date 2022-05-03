package com.saeyan.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.saeyan.dao.ProductDAO;
import com.saeyan.dto.ProductVO;

/**
 * Servlet implementation class ProductUpdateServlet
 */
@WebServlet("/productUpdate.do")
public class ProductUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String code=request.getParameter("code");
		
		ProductDAO pDao = ProductDAO.getInstance();
		ProductVO pVo = pDao.selectProductByCode(code);
		
		
		request.setAttribute("product", pVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher("product/productUpdate.jsp");
		dispatcher.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		request.setCharacterEncoding("utf-8");
		ServletContext context=getServletContext();
		String path=context.getRealPath("upload");
		String enctype="utf-8";		
		int sizeLimit=20*1024*1024;
		
		
		MultipartRequest multi=new MultipartRequest(request,path,sizeLimit, enctype,new DefaultFileRenamePolicy());
		String code=multi.getParameter("code");
		String name=multi.getParameter("name");
		int price=Integer.parseInt(multi.getParameter("price"));
		String pictureUrl=multi.getFilesystemName("pictureUrl");
		String description=multi.getParameter("description");
		if(pictureUrl == null) {
			pictureUrl=multi.getParameter("nonmakeImg");
			
		}
		
		
		ProductVO pVo = new ProductVO();
				
		pVo.setCode(Integer.parseInt(code));
		pVo.setName(name);
		pVo.setPrice(price);
		pVo.setPictureUrl(pictureUrl);
		pVo.setDescription(description);
		
			
		
		ProductDAO pDao= ProductDAO.getInstance();
		pDao.updateProduct(pVo);
		
		response.sendRedirect("productList.do");
		
		
	}

}

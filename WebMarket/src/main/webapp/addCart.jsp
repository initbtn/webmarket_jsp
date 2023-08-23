<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	String id =request.getParameter("id");
	if(id==null||id.trim().equals("")){
		response.sendRedirect("product.jsp");
		return;
	}
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product product = dao.getProductById(id);
	if(product==null){
		response.sendRedirect("excptionNoProductId.jsp");
	}
	
	ArrayList<Product> goodsList= dao.getAllProducts();
	Product goods=new Product();
	for(int i=0; i<goodsList.size();i++){
		goods=goodsList.get(i);
		if(goods.getProductId().equals(id)){
			break;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
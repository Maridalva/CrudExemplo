<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import  ="br.com.jspcrudexemplo.dao.UsuarioDao"%>
<jsp:useBean id="u" class="br.com.jspcrudexemplo.bean.Usuario"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/> 
<%  
int i = UsuarioDao.update(u);  
response.sendRedirect("viewusers.jsp");  
%>  
</body>
</html>
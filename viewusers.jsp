<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Visualizar Usuários</title>
</head>
<body>
<%@page import="br.com.jspcrudexemplo.dao.UsuarioDao,br.com.jspcrudexemplo.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  <h1>Listar usuário</h1>
    
  
<%
    List <Usuario> list = UsuarioDao.getAllRecords();
request.setAttribute("list",list);
    %>   
  
<table border="2px solid" width="90%" text-align="center">  
<tr><th>Id</th><th>Nome</th><th>Senha</th><th>E-mail</th>  
<th>Sexo</th><th>País</th><th>Editar</th><th>Deletar</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td>
<td >${u.getName()}</td>
<td >${u.getPassword()}</td>  
<td >${u.getEmail()}</td>
<td >${u.getSex()}</td>
<td >${u.getCountry()}</td>  

<td><a href="editform.jsp?id=${u.getId()}">Editar</a></td>  
<td><a href="deleteuser.jsp?id=${u.getId()}">Deletar</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="adduserform.jsp">Adicionar novo usuário</a>  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="br.com.jspcrudexemplo.dao.UsuarioDao,br.com.jspcrudexemplo.bean.Usuario"%>
<%
String id=request.getParameter("id");
Usuario u = UsuarioDao.getRecordById(Integer.parseInt(id));
%>

<h1>Edit Form</h1>  
<form action="edituser.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>  
<tr><td>Nome:</td><td>  
<input type="text" name="name" value="<%= u.getName()%>"/></td></tr>  
<tr><td>Senha:</td><td>  
<input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>  
<tr><td>E-mail:</td><td>  
<input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>  
<tr><td>Sexo:</td><td>  
<input type="radio" name="sex" value="male"/>Masculino   
<input type="radio" name="sex" value="female"/>Feminino </td></tr>  
<tr><td>País:</td><td>  
<select name="country">  
<option>Brasil</option>  
<option>Argentina</option>  
<option>Chile</option>  
<option>Peru</option>  
<option>Portugal</option>  
</select>  
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Editar Usuario"/></td></tr>  
</table>  
</form>
</body>
</html>
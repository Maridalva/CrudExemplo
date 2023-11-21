<%@page import="br.com.jspcrudexemplo.dao.UsuarioDao"%>
<jsp:useBean id="u" class="br.com.jspcrudexemplo.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	int i = UsuarioDao.save(u);
	if (i > 0){
		response.sendRedirect("adduser-success.jsp");
	}else{
		response.sendRedirect("adduser-error.jsp");
	}
	%>
</body>
</html>
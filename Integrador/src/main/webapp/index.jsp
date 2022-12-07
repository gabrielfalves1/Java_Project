<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
    if(session.getAttribute("adm_id") == null) {
    	response.sendRedirect("login-admin");
    } 
   %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio</title>
</head>
<body>


<a href="buscafun">Funcionários</a>
<h3> Bem vindo "${adm_nome}"</h3>

<a href="logout">Sair</a>


</body>
</html>
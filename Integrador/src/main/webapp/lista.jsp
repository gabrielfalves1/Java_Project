<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
 <%@page import = "Model.Funcionario" %>
 <%@page import = "java.util.ArrayList" %>


<% 

if(session.getAttribute("adm_id") == null) {
	response.sendRedirect("login-admin");
} 


ArrayList<Funcionario> lista = (ArrayList<Funcionario>) request.getAttribute("funs");
%>   
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Funcionários</title>
</head>
<body>
<h1>Funcionários ativos</h1>

<table class="table table-dark" style="border 1px solid">

    <tr>     
      <th scope="col">Código</th>
      <th scope="col">Nome</th>
      <th scope="col">CPF</th>
    </tr>
  

<% for(int i=0;i<lista.size();i++){
  %>
    <tr>
      <td><%=lista.get(i).getFun_id()%></td>
      <td><%=lista.get(i).getNome()%></td>
      <td><%=lista.get(i).getCpf()%></td> 
       <td><a href="selecionado?fun_id=<%=lista.get(i).getFun_id()%>"><button type="button" class="btn tbn-primary">Editar</button></a> </td>
     <td><a href="excluir?fun_id=<%=lista.get(i).getFun_id()%>"><button type="button" class="btn tbn-primary">Excluir</button></a> </td>
    </tr>
    
    <%} %>
</table>
</body>
</html>
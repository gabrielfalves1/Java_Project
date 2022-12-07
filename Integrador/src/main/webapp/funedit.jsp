<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!-- aqui está as chamadas do boots... para o javascript-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">


<title>Edição de funcionários</title>
</head>
<!--  aqui eu coloquei o menu e alguns icones no lado esquerdo-->

<body id="body-pd">
    <header class="header" id="header">
        <div class="header_img"> Aqui entra a logo </div>
    </header>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div> <a href="#" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">Funcionarios</span> </a>
                <div class="nav_list"> <a href="#" class="nav_link active"> <i class='bx bx-grid-alt nav_icon'></i> <span class="nav_name">Dashboard</span> </a> <a href="#" class="nav_link"> <i class='bx bx-user nav_icon'></i> <span class="nav_name">Users</span> </a> <a href="#" class="nav_link"> <i class='bx bx-message-square-detail nav_icon'></i> <span class="nav_name">Messages</span> </a> <a href="#" class="nav_link"> <i class='bx bx-bookmark nav_icon'></i> <span class="nav_name">Bookmark</span> </a> <a href="#" class="nav_link"> <i class='bx bx-folder nav_icon'></i> <span class="nav_name">Files</span> </a> <a href="#" class="nav_link"> <i class='bx bx-bar-chart-alt-2 nav_icon'></i> <span class="nav_name">Stats</span> </a> </div>
            </div> <a href="#" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">SignOut</span> </a>
        </nav>
    </div>

  <div class="container">
   <div class="height-100 bg-light">
        <h4>Dados do Funcionário</h4>
    <!--  aqui termina, porem fica dentro do container para englobar -->    
 
<form>
  <div class="form-row">
    <div class="form-group col-md-6">
     <label for="nome">Nome do funcionário</label>
    <input type="text" class="form-control" id = "" placeholder ="Digite o nome" name="nome" value="<%out.print(request.getAttribute("nome"));%>">
    </div>
    <div class="form-group col-md-6">
      <label for="nome">CPF</label>
    <input type="text" class="form-control" id = "" placeholder ="Digite o nome" name="cpf" value="<%out.print(request.getAttribute("cpf"));%>">
    </div>
  </div>
  <div class="form-group">
       <label for="nome">Data de Nascimento</label>
    <input type="text" class="form-control" id = "" placeholder ="Digite o nome" name="idade" value="<%out.print(request.getAttribute("idade"));%>">
  </div>
  <div class="form-group">
    <label for="nome">Telefone</label>
    <input type="text" class="form-control" id = "" placeholder ="Digite o nome" name="telefone" value="<%out.print(request.getAttribute("telefone"));%>">
  </div>
   
  <div class="form-group">
   <label for="telefone">Entrada na empresa</label>
    <input type="text" class="form-control" id = "" placeholder ="Digite o telefone" name="entrada" value="<%out.print(request.getAttribute("entrada"));%>">
  </div>
  
  <button type="submit" class="btn btn-primary">Enviar</button>
</form>

</div>
   </div>
   
</body>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
   
  </body>
  
  <!-- essa  @import é para o menu que fica do lado esquerdo
  *******
  *******
  e o CSS é do formulário mas falta alguns ajustes.
  
  -->
 <style>
 @import url("https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap");:root{--header-height: 3rem;--nav-width: 68px;--first-color: #212529;--first-color-light: #AFA5D9;--white-color: #F7F6FB;--body-font: 'Nunito', sans-serif;--normal-font-size: 1rem;--z-fixed: 100}*,::before,::after{box-sizing: border-box}body{position: relative;margin: var(--header-height) 0 0 0;padding: 0 1rem;font-family: var(--body-font);font-size: var(--normal-font-size);transition: .5s}a{text-decoration: none}.header{width: 100%;height: var(--header-height);position: fixed;top: 0;left: 0;display: flex;align-items: center;justify-content: space-between;padding: 0 1rem;background-color: var(--white-color);z-index: var(--z-fixed);transition: .5s}.header_toggle{color: var(--first-color);font-size: 1.5rem;cursor: pointer}.header_img{width: 35px;height: 35px;display: flex;justify-content: center;border-radius: 50%;overflow: hidden}.header_img img{width: 40px}.l-navbar{position: fixed;top: 0;left: -30%;width: var(--nav-width);height: 100vh;background-color: var(--first-color);padding: .5rem 1rem 0 0;transition: .5s;z-index: var(--z-fixed)}.nav{height: 100%;display: flex;flex-direction: column;justify-content: space-between;overflow: hidden}.nav_logo, .nav_link{display: grid;grid-template-columns: max-content max-content;align-items: center;column-gap: 1rem;padding: .5rem 0 .5rem 1.5rem}.nav_logo{margin-bottom: 2rem}.nav_logo-icon{font-size: 1.25rem;color: var(--white-color)}.nav_logo-name{color: var(--white-color);font-weight: 700}.nav_link{position: relative;color: var(--first-color-light);margin-bottom: 1.5rem;transition: .3s}.nav_link:hover{color: var(--white-color)}.nav_icon{font-size: 1.25rem}.show{left: 0}.body-pd{padding-left: calc(var(--nav-width) + 1rem)}.active{color: var(--white-color)}.active::before{content: '';position: absolute;left: 0;width: 2px;height: 32px;background-color: var(--white-color)}.height-100{height:100vh}@media screen and (min-width: 768px){body{margin: calc(var(--header-height) + 1rem) 0 0 0;padding-left: calc(var(--nav-width) + 2rem)}.header{height: calc(var(--header-height) + 1rem);padding: 0 2rem 0 calc(var(--nav-width) + 2rem)}.header_img{width: 40px;height: 40px}.header_img img{width: 45px}.l-navbar{left: 0;padding: 1rem 1rem 0 0}.show{width: calc(var(--nav-width) + 156px)}.body-pd{padding-left: calc(var(--nav-width) + 188px)}}

body {
margin-top: 10%;
width: 100vw;
height: 100vh;
}
.container {
width: 50%;
height: 80%;

display: flex;
flex-direction: row;
justify-content: center;
align-items: center;
color:#212529;
margin: auto;
display: block;
}

</style>
  
  
</html>
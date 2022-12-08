package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Conexao.Conex;
import Model.FunDao;
import Model.Funcionario;

@WebServlet(urlPatterns = { "/Controller", "/buscafun", "/selecionado", "/fSalvar", "/excluir" })
public class Controller extends HttpServlet {
	Funcionario fun = new Funcionario();

	Conex Conexao = new Conex();

	FunDao dao = new FunDao();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		if (action.equals(("/buscafun"))) {
			ListaDados(request, response);

		} else if (action.equals("/selecionado")) {
			fEdit(request, response);

		} else if (action.equals("/excluir")) {
			fDelete(request, response);

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

		String action = request.getServletPath();

		if (action.equals("/fSalvar")) {
			fSalvar(request, response);
		}

	}

	protected void ListaDados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<Funcionario> lista = dao.listar();
		request.setAttribute("funs", lista);
		RequestDispatcher rd = request.getRequestDispatcher("lista.jsp");
		rd.forward(request, response);
	}

	protected void fEdit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getSession().getAttribute("adm_id") == null) {
			response.sendRedirect("login-admin");
			
		} else {
			int id = Integer.parseInt(request.getParameter("fun_id"));
			fun.setFun_id(id);
			dao.BuscaCli(fun);
			request.setAttribute("fun_id", fun.getFun_id());
			request.setAttribute("telefone", fun.getTelefone());
			request.setAttribute("endereco", fun.getEndereco());
			RequestDispatcher rd = request.getRequestDispatcher("fEdit.jsp");
			rd.forward(request, response);
		}
	}

	protected void fSalvar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getSession().getAttribute("adm_id") == null) {
			response.sendRedirect("login-admin");

		} else {
			int fun_id = Integer.parseInt(request.getParameter("fun_id"));
			fun.setFun_id(fun_id);
			fun.setTelefone(request.getParameter("telefone"));
			fun.setEndereco(request.getParameter("endereco"));
			dao.Editar(fun);
			response.sendRedirect("index.jsp");
		}

	}

	protected void fDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getSession().getAttribute("adm_id") == null) {
			response.sendRedirect("login-admin");
			
		} else {
			int fun_id = Integer.parseInt(request.getParameter("fun_id"));
			fun.setFun_id(fun_id);
			dao.Excluir(fun);
			response.sendRedirect("buscafun");
		}

	}

}
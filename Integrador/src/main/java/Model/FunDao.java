package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Conexao.Conex;


public class FunDao {

	Connection con;
	ResultSet rs;

	public void Salvar(Funcionario fun) {

		try {
			con = new Conex().conectar();
			String sql = "INSER INTO funcionario (nome, cpf) VALUES (?,?)";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, fun.getNome());
			stmt.setInt(2, fun.getCpf());
			stmt.executeUpdate();
			con.close();

		} catch (SQLException erro) {

			System.out.println(erro);

		}
	}

	public void BuscaCli(Funcionario fun) {

		try {
			con = new Conex().conectar();
			String sql = "SELECT * FROM funcionario WHERE Fun_id=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, fun.getFun_id());
			rs = stmt.executeQuery();
			while (rs.next()) {
				fun.setFun_id(rs.getInt("fun_id"));
				fun.setNome(rs.getString("nome"));
				fun.setCpf(rs.getInt("cpf"));
				fun.setTelefone(rs.getString("tel"));
				fun.setEndereco(rs.getString("endereco"));
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public ArrayList<Funcionario> listar() {

		try {
			con = new Conex().conectar();
			String sql = "SELECT * FROM funcionario";
			ArrayList<Funcionario> funs = new ArrayList<>();
			PreparedStatement stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {
				int fun_id = rs.getInt(1);
				String nome = rs.getString(2);
				String idade = rs.getString(3);
				int cpf = rs.getInt(4);
				String telefone = rs.getString(5);
				String endereco = rs.getString(6);
				String entrada = rs.getString(7);

				funs.add(new Funcionario(fun_id, nome, idade, cpf, telefone, endereco, entrada));
			}

			return funs;

		} catch (SQLException erro) {
			System.out.println(erro);
			return null;
		}

	}

	public void Editar(Funcionario fun) {

		try {
			con = new Conex().conectar();
			String sql = "UPDATE funcionario SET tel = ?, endereco = ? WHERE fun_id = ?";
			
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, fun.getTelefone());
			stmt.setString(2, fun.getEndereco());
			stmt.setInt(3, fun.getFun_id());
			
			
			stmt.executeUpdate();
			con.close();

		} catch (SQLException erro) {

			System.out.println(erro);

		}

	}

}

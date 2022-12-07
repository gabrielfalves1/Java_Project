package Model;

public class Funcionario {
	int Fun_id;
	String Nome;
	String Idade;
	int Cpf;
	String Telefone;
	String Endereco;
	String Entrada;

	public Funcionario(int fun_id, String nome, String idade, int cpf, String telefone, String endereco,
			String entrada) {
		Fun_id = fun_id;
		Nome = nome;
		Idade = idade;
		Cpf = cpf;
		Telefone = telefone;
		Endereco = endereco;
		Entrada = entrada;
	}

	public int getFun_id() {
		return Fun_id;
	}

	public void setFun_id(int fun_id) {
		Fun_id = fun_id;
	}

	public String getNome() {
		return Nome;
	}

	public void setNome(String nome) {
		Nome = nome;
	}

	public String getIdade() {
		return Idade;
	}

	public void setIdade(String idade) {
		Idade = idade;
	}

	public int getCpf() {
		return Cpf;
	}

	public void setCpf(int cpf) {
		Cpf = cpf;
	}

	public String getTelefone() {
		return Telefone;
	}

	public void setTelefone(String telefone) {
		Telefone = telefone;
	}

	public String getEndereco() {
		return Endereco;
	}

	public void setEndereco(String endereco) {
		Endereco = endereco;
	}

	public String getEntrada() {
		return Entrada;
	}

	public void setEntrada(String entrada) {
		Entrada = entrada;
	}

	

	public Funcionario() {
		super();
		// TODO Auto-generated constructor stub
	}
}

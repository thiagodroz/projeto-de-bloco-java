package negocio;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TUsuario")
public class Usuario {

	@Id
	@GeneratedValue
	private Long id;
	private String nome;
	private String email;
	private String userName;
	private String senha;
	private String endereco;
	private String telefone;
	private String cidade;
	private String estado;

	public Usuario() {
		
	}
	
	public Usuario(String nome, String endereco, String telefone, String cidade, String estado, String email, String username, String senha) {
		this.nome = nome;
		this.endereco = endereco;
		this.telefone = telefone;
		this.cidade = cidade;
		this.estado = estado;
		this.email = email;
		this.userName = username;
		this.senha = senha;
	}
	
	public String mostrarDados() {
		return String.format("Nome: %s<br/>"
				+ "Endereço: %s<br/>"
				+ "Telefone: %s<br/>"
				+ "Cidade: %s<br/>"
				+ "Estado: %s<br/>"
				+ "E-mail: %s<br/>"
				+ "User name: %s<br/>"
				+ "Senha: %s", this.getNome(), this.getEndereco(), 
				this.getTelefone(), this.getCidade(), this.getEstado(),
				this.getEmail(),this.getUserName(),this.getSenha());
	}
	
	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
}
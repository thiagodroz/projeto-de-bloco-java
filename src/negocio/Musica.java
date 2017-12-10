package negocio;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TMusica")
public class Musica {
	@Id
	@GeneratedValue
	private int id;
	private String imagem;
	private String nome;
	private String genero;
	private String descricao;
	private float preco;
	private String artista;

	public Musica() {
		
	}
	
	public Musica(String imagem, String nome, String genero, String descricao, float preco) {
		this.imagem = imagem;
		this.nome = nome;
		this.descricao = descricao;
		this.preco = preco;
		this.genero = genero;
	}

	public String listarDadosDaMusica() {
		 return String.format("<img class='song-detail' src='%s'/><br/><br/>"+
		 				      "<strong>Nome:</strong> %s<br/>"+
		 				      "<strong>Artista:</strong> %s<br/>"+
							  "<strong>Descrição:</strong> %s<br/>"+
							  "<strong>Preço:</strong> R$ %.2f<br/>"+
							  "<strong>Categoria:</strong> %s<br/>",
							  this.imagem, this.nome, this.artista,
							  this.descricao, this.preco, this.genero);
	}

	public String getImagem() {
		return imagem;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public float getPreco() {
		return preco;
	}

	public void setPreco(float preco) {
		this.preco = preco;
	}

	public String getArtista() {
		return artista;
	}

	public void setArtista(String artista) {
		this.artista = artista;
	}
}

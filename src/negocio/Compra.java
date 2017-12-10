package negocio;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="TCompra")
public class Compra {
	
	@Id
	@GeneratedValue
	private int id;
	@OneToOne(fetch = FetchType.EAGER, cascade=CascadeType.DETACH)
    @JoinColumn(name="idUsuario")
	private Usuario usuario;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "musica")
	private List<Musica> musicas;
	
	public Compra() {
		
	}
	
	public Compra(List<Musica> musicas, Usuario usuario) {
		this.musicas = musicas;
		this.usuario = usuario;
	}
	
	public void listarCompra(List<Musica> musicas) {
		for(Musica m : musicas) {
			System.out.println(m.getNome());
		}
	}

	public List<Musica> getMusicas() {
		return musicas;
	}

	public void setMusicas(List<Musica> musicas) {
		this.musicas = musicas;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
}

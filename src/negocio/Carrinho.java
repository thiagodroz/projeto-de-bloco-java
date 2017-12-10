package negocio;

import java.util.ArrayList;
import java.util.List;

public class Carrinho {
	
	private List<Musica> musicas;
	private int total;
	
	public Carrinho() {
		this.musicas = new ArrayList<Musica>();
	}
	
	public List<Musica> adicionarMusica(Musica musica) {
		this.musicas.add(musica);   
		
		return musicas;		
	}
	
	public void listarProdutos() {
		for(int i = 0; i < musicas.size();i++) {
			
			musicas.get(i).listarDadosDaMusica();
			
		}
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public List<Musica> getMusicas() {
		return musicas;
	}

	public void setMusicas(List<Musica> musicas) {
		this.musicas = musicas;
	}

}

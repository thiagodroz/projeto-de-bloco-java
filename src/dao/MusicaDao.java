package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import conexao.Conexao;
import negocio.Musica;

public class MusicaDao {

	private static EntityManager conexao = null;
	private static EntityTransaction transacao = null;

	private List<Musica> lista;
	
	public static void excluir(Musica musica) {

		conexao = Conexao.obterConexao();

		transacao = conexao.getTransaction();

		Musica m = conexao.find(Musica.class, musica.getId());

		transacao.begin();

		conexao.remove(m);

		transacao.commit();
	}

	public static void incluirMusica(Musica musica) {
		conexao = Conexao.obterConexao();

		transacao = conexao.getTransaction();

		transacao.begin();

		conexao.persist(musica);

		transacao.commit();
	}

	public static List<Musica> obterLista() {
		conexao = Conexao.obterConexao();

		return conexao.createQuery("select m from Musica as m order by m.nome").getResultList();
	}
	
	public static Musica obterPorId(int id){
		conexao = Conexao.obterConexao();
		
		Query query = conexao.createQuery("select m from Musica as m where m.id = :pId");
		query.setParameter("pId", id);
			
		return (Musica)query.getSingleResult();
	}
	
	public static List<Musica> obterPorNome(String musica){
		conexao = Conexao.obterConexao();
		
		Query query = conexao.createQuery("select m from Musica as m where m.nome = :pNome");
		query.setParameter("pNome", musica);
			
		return query.getResultList();
	}
}

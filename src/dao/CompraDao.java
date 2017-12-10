package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import conexao.Conexao;
import negocio.Compra;
import negocio.Musica;

public class CompraDao {
	
	private static EntityManager conexao = null;
	private static EntityTransaction transacao = null;
	
	public static void incluirCompra(Compra compra) {
		conexao = Conexao.obterConexao();

		transacao = conexao.getTransaction();

		transacao.begin();

		conexao.persist(compra);

		transacao.commit();
	}
	
	public static List<Musica> obterComprasID() {
		conexao = Conexao.obterConexao();

		return conexao.createQuery("select c from Compra as c order by c.id").getResultList();
	}

}

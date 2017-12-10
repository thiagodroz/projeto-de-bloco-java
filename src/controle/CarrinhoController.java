package controle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CompraDao;
import dao.MusicaDao;
import dao.UsuarioDao;
import negocio.Compra;
import negocio.Musica;

public class CarrinhoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Compra compra;
	private List<Musica> lista = new ArrayList<Musica>();

    public CarrinhoController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		switch(request.getParameter("tela")) {
		
		case "incluir":
			int codigo = Integer.valueOf(request.getParameter("musica"));
			Musica musica = MusicaDao.obterPorId(codigo);
			
			lista.add(musica);
			
			request.setAttribute("codmusica", codigo);
			request.setAttribute("lista", lista);
			request.getRequestDispatcher("carrinho.jsp").forward(request, response);
			break;
		case "excluir":
			int cod = Integer.valueOf(request.getParameter("produto"));
			Musica musicaExcluida = MusicaDao.obterPorId(cod);
			
			lista.remove(musicaExcluida);		
			
			request.setAttribute("lista", lista);
			request.getRequestDispatcher("carrinho.jsp").forward(request, response);
			
			break;
		case "comprar":
			compra = new Compra();			
			compra.setMusicas(lista);
			compra.setUsuario(UsuarioDao.obterPorUserName(request.getParameter("sessao")));
			
			CompraDao.incluirCompra(compra);
						
			request.setAttribute("listarCompras", lista);
			request.getRequestDispatcher("finalizarcompra.jsp").forward(request, response);
			
			break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int codmusica = Integer.valueOf(request.getParameter("Comprar")); 
				
		request.setAttribute("mostrarMusica", MusicaDao.obterPorId(codmusica));
		request.getRequestDispatcher("comprar.jsp").forward(request, response);
	}
}

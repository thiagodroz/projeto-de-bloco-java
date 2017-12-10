package controle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MusicaDao;
import negocio.Musica;

public class MusicaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Musica musica;
	private List<String> lista;
        
    public MusicaController() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		switch (request.getParameter("tela")) {
			case "cadastro":	
				if(request.getParameter("categoria").isEmpty() ||
					request.getParameter("codigo").isEmpty() ||
					request.getParameter("imagem").isEmpty() ||
					request.getParameter("nome").isEmpty() ||
					request.getParameter("descricao").isEmpty() ||
					request.getParameter("preco").isEmpty()) {
				
					String alerta="Preencha todos os campos!";
					
					request.setAttribute("alerta", alerta);
					request.getRequestDispatcher("acesso.jsp").forward(request, response);
				} else {
					musica = new Musica();		
					lista = new ArrayList<String>();
					
					musica.setGenero(request.getParameter("genero"));
					musica.setImagem(request.getParameter("imagem"));
					musica.setNome(request.getParameter("nome"));
					musica.setDescricao(request.getParameter("descricao"));
					musica.setPreco(Float.valueOf(request.getParameter("preco")));
				}
				lista.add(musica.listarDadosDaMusica());
				MusicaDao.incluirMusica(musica);
				request.setAttribute("dados", lista);
				request.getRequestDispatcher("musicacadastrada.jsp").forward(request, response);	
				break;
			case "exclusao":
				int codmusica = Integer.valueOf(request.getParameter("musica"));
				
				request.setAttribute("musicaSelecionada", MusicaDao.obterPorId(codmusica));
				request.getRequestDispatcher("confirmaexclusao.jsp").forward(request, response);
				break;
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		switch (request.getParameter("tela")) {
			case "acesso":		
				request.getRequestDispatcher("acesso.jsp").forward(request, response);
				break;
			case "excluirmusica":
				request.setAttribute("listaMusicas", MusicaDao.obterLista());
				request.getRequestDispatcher("excluir.jsp").forward(request, response);	
				break;
			case "confirmaexclusao":
				Musica excluida = MusicaDao.obterPorId(Integer.valueOf(request.getParameter("codmusica")));
				MusicaDao.excluir(excluida);
				request.setAttribute("listaMusicas",  MusicaDao.obterLista());
				request.getRequestDispatcher("excluir.jsp").forward(request, response);
				break;
			default:
				break;
		}	
	}
}

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

public class BuscarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	List<Musica>lista = new ArrayList<Musica>();
       
    public BuscarController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String busca = request.getParameter("procurar");
		
		boolean encontrou = false;
		
		request.setAttribute("encontrou", encontrou);
		
		request.setAttribute("nomeMusica", busca);
		
		request.setAttribute("listaBusca", MusicaDao.obterLista());	
		
		request.getRequestDispatcher("buscamusica.jsp").forward(request, response);
		
	}

}

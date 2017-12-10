package negocio;

public class Cliente extends Usuario {

	private int clienteId;
	private int comprasRealizadas;

	public void listarComprasRealizadas() {
	}

	public int getClienteId() {
		return clienteId;
	}

	public void setclienteId(int id) {
		this.clienteId = id;
	}

	public int getComprasRealizadas() {
		return comprasRealizadas;
	}

	public void setComprasRealizadas(int comprasRealizadas) {
		this.comprasRealizadas = comprasRealizadas;
	}

}

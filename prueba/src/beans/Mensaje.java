package beans;

public class Mensaje {
	private String mensaje;
	private String ip;
	public Mensaje(String mensaje, String ip) {
		super();
		this.mensaje = mensaje;
		this.ip = ip;
	}
	public String getMensaje() {
		return mensaje;
	}
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
}

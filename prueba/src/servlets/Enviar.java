package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Mensaje;

@WebServlet("/Enviar")
public class Enviar extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext sc=request.getServletContext();
		
		List<Mensaje> lista;
		Mensaje mensaje;
		
		if (request.getParameter("mensaje")!=null&&!((String)request.getParameter("mensaje")).equals("")) {
			mensaje=new Mensaje((String)request.getParameter("mensaje"),request.getRemoteAddr());
			
			if(sc.getAttribute("lista")!=null) {
				lista=(ArrayList<Mensaje>)sc.getAttribute("lista");
				
			}
			else {
				lista=new ArrayList<Mensaje>();
				
			}
			lista.add(mensaje);
			sc.setAttribute("lista", lista);
		}
		request.getRequestDispatcher("foro.jsp").forward(request, response);
	}
}

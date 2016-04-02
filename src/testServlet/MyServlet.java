package testServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.MyBean;

public class MyServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String message = "Message envoye du servlet vers la page jsp comme attribute";
		req.setAttribute("attributeMessage", message);
		
		/*Création du bean*/
		MyBean myBean = new MyBean();
		myBean.setNom("MyNomBean");
		myBean.setPrenom("MyBeanPrenom");
		/*Stocage du bean dans l'object request*/
		req.setAttribute("myBean", myBean);
		
		//pour acceder au fichier jsp
		//this.getServletContext().getRequestDispatcher("/WEB-INF/myFileJspAccesViaServlet.jsp").forward(req, resp);
		
		//this.getServletContext().getRequestDispatcher("/WEB-INF/MyExpressionLanguage.jsp").forward(req, resp);
		this.getServletContext().getRequestDispatcher("/WEB-INF/ELtestObjectsBean.jsp").forward(req, resp);
		
	}
}

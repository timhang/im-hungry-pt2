package API;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.*;

/**
 * Servlet implementation class QuickAccess
 */
@WebServlet("/QuickAccess")
public class QuickAccess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public String getQuickAccess() throws Exception {
		JSONArray newArray = DatabaseDriver.getSessions();
		String json = newArray.toString();
		return json;
	    
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String json = null;
		try {
			json = getQuickAccess();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.setContentType("application/json");
	    response.setCharacterEncoding("UTF-8");
	    response.getWriter().write(json);
	}

}

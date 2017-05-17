package mysshell.controllers;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import mysshell.utils.Logger;

public class mainController extends HttpServlet
{
    protected void proccessRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException, NullPointerException
    {
        Logger logger = Logger.getInstance("/home/diego/logs.txt",  "error.jsp");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        String materia = "Matematicas";
        String fecha = "/01/02/2017";
        boolean seExpiro = true;
        if(username.equals("hola") && password.equals("mundo"))
        {
            HttpSession session = request.getSession();
            logger.commitEvent("Se ha iniciado sesion", null, request, response);
            session.setAttribute("materia", "Matematicas");
            session.setAttribute("fecha", "01/02/2017");
            session.setAttribute("seExpiro", "true");
            response.sendRedirect("Alumno.jsp");
        }
        else
        {
            /**Si no se autentica correctamente, entonces se ha de crear una variable llamada
                loginError, se le asignara el valor de true, y entonces se reenviara la variable
                al index.jsp **/
            logger.commitEvent("Se han ingresado las credenciales erroneas:" +
                             username + " " + password);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        proccessRequest(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        proccessRequest(request, response);
    }
}
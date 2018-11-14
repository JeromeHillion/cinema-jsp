package fr.laerce.cinema;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.*;
import java.util.stream.IntStream;

/**
 * Created by fred on 03/02/2016.
 */

public class Liste<F> extends HttpServlet {


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        // loqique de traitement


        Film film = new Film();
        FilmsDonnees filmsDonnees = new FilmsDonnees();
        Liste  liste = new Liste();



        // pour les besoins de la vue
        request.setAttribute("film" , filmsDonnees.lesFilms);


        // délégation à la vue
        String jspview = "detail.jsp";
        getServletConfig().getServletContext().getRequestDispatcher("/WEB-INF/jsp/"+jspview).forward(request, response);


    /*    response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<link href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">");
        out.println("<title>Détail film</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Le film</h1>");
        out.println("<ul>");


        ;
        out.println("</ul>");
        out.println("</body>");
        out.println("</html>");*/

    }



}

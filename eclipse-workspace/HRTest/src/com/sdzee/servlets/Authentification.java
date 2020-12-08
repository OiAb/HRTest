package com.sdzee.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sdzee.beans.Utilisateur;
import com.sdzee.forms.AuthentificationForm;

public class Authentification extends HttpServlet {
    public static final String ATT_USER         = "utilisateurconnecté";
    public static final String ATT_FORM         = "formconnecté";
    public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String VUE              = "/WEB-INF/authentification.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Affichage de la page d'inscription */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        /* Préparation de l'objet formulaire */
        AuthentificationForm formconnecté = new AuthentificationForm();

        /*
         * Appel au traitement et à la validation de la requête, et récupération
         * du bean en résultant
         */
        Utilisateur utilisateurconnecté = formconnecté.connecterUtilisateur( request );

        /* Récupération de la session depuis la requête */
        HttpSession session = request.getSession();

        /**
         * Si aucune erreur de validation n'a eu lieu, alors ajout du bean
         * Utilisateur à la session, sinon suppression du bean de la session.
         */
        if ( formconnecté.getErreurs().isEmpty() ) {
            session.setAttribute( ATT_SESSION_USER, utilisateurconnecté );
            request.setAttribute( ATT_FORM, formconnecté );
            request.setAttribute( ATT_USER, utilisateurconnecté );
            this.getServletContext().getRequestDispatcher( "/dashboardColl.jsp" ).forward( request, response );
        } else {
            session.setAttribute( ATT_SESSION_USER, null );
            /* Stockage du formulaire et du bean dans l'objet request */
            request.setAttribute( ATT_FORM, formconnecté );
            request.setAttribute( ATT_USER, utilisateurconnecté );
            this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        }

    }
}
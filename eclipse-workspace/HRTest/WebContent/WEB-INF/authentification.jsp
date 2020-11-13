<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Connexion</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/form.css"/>" />
    </head>
    <body>
        <form method="post" action="authentification">
            <fieldset>
                <legend>Connexion</legend>
                <p>Vous pouvez vous connecter via ce formulaire.</p>
                
                                
                <label for="nom">Nom d'utilisateur</label>
                <input type="text" id="nom" name="nom" value="<c:out value="${utilisateurconnecté.nom}"/>" size="20" maxlength="20" />
                <span class="erreur">${formconnecté.erreurs['nom']}</span>
                <br />         

                <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
                <span class="erreur">${formconnecté.erreurs['motdepasse']}</span>
                <br />

                <input type="submit" value="se connecter" class="sansLabel" />
                <br />
                
                <p class="${empty formconnecté.erreurs ? 'succes' : 'erreur'}">${formconnecté.resultat}</p>
                <%-- Vérification de la présence d'un objet utilisateur en session --%>
                <c:if test="${!empty sessionScope.sessionUtilisateur}">
                    <%-- Si l'utilisateur existe en session, alors on affiche son adresse email. --%>
                    <p class="succes">Vous êtes connecté(e) avec le nom : ${sessionScope.sessionUtilisateur.nom}</p>
                </c:if>
            </fieldset>
        </form>
    </body>
</html>
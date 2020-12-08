<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"></meta>
<title>Register</title>
<link rel="stylesheet" href="<c:url value="/inc/style.css"/>"></link>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<header>
<div id="conteneur">
<div><p><a href=""><img src="inc/LOGO.png" alt="Logo" /></a></p></div>
<div>${sessionScope.sessionUtilisateur.nom}
<button type="button" class="btn btn-primary">
  Notifications <span class="badge badge-light">2</span>
  <span class="sr-only">unread messages</span>
</button>
 <a href="deconnexion"><button id="btnGroupDrop1" type="button" class="btn btn-outline-info">
      Se deconnecter
    </button></a>
</div>
</div>
</header>
<section>
<div id="dashboard">
<div class="dash">
<ul class="list-group">
  <li class="list-group-item">DASHBOARD</li>
  <a href="dashboardColl.jsp"><li class="list-group-item list-group-item-action active">Acceuil</li></a>
  <li class="list-group-item list-group-item-action active">Profil</li>
  <li class="list-group-item list-group-item-action active">Calendrier des entretiens</li>
  <a href="passerEvaluation.jsp"><li class="list-group-item list-group-item-action list-group-item-primary">Passer les évaluations</li></a>
  <li class="list-group-item list-group-item-action active">Consulter les résultats</li>
</ul>
</div>
<div>
<p class="list-group-item list-group-item-action list-group-item-success">Vous êtes connecté en tant que ${sessionScope.sessionUtilisateur.nom}.</p>
<p class="list-group-item list-group-item-action list-group-item-info">La compagne des entretiens annuels est prévue entre le 1 Juillet 2020 et 30 Décembre 2020.</p>
<p class="alert alert-danger" role="alert">Attention ! Vous devez compléter vos évaluations par formulaire et questionnaire.</p>
<div id="acceuil"><p class="list-group-item list-group-item-action list-group-item-warning" style="width: 220px">Passer les évaluations</p></div>
<a href="formulaire.jsp"><button type="button" class="btn btn-primary btn-lg btn-block" style="margin-left: 10px; margin-top:10px">Par formulaire</button></a>
<a href="quiz.jsp"><button type="button" class="btn btn-secondary btn-lg btn-block" style="margin-left: 10px; margin-top:10px">Par questionnaire</button></a>
</div>
</div>
</section>
<div id="footer">
<div><p><a href=""><img src="inc/LogoDark.png" alt="LogoDark" /></a></p></div>
<div>COPYRIGHT @2020 CNSS</div>
<div></div>
</div>
</body>
</html>
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
<section style="background-color: #2d8f75">
<div id="dashboard">
<div>
<p class="list-group-item list-group-item-action list-group-item-info">Vous ne pouvez pas modifier les r�ponses aux questions d�j� confirm�es mais vous pouvez � tout moment quitter le test.</p>
<div id="acceuil"><p class="alert alert-danger" role="alert" style="width: 340px"><a href="passerEvaluation.jsp">Passer les �valuations</a> > <a href ="formulaire.jsp">Par formulaire</a></p></div>
<form style="margin-left: 10px; float: center">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nom<span class="requis">*</span></label>
      <input type="text" class="form-control" id="inputEmail4" placeholder="">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Pr�nom<span class="requis">*</span></label>
      <input type="text" class="form-control" id="inputPassword4" placeholder="">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Intitul� de votre post � l'entreprise<span class="requis">*</span></label>
    <input type="text" class="form-control" id="inputAddress" placeholder="">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Votre d�partement<span class="requis">*</span></label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nom de votre chef<span class="requis">*</span></label>
      <input type="text" class="form-control" id="inputEmail4" placeholder="">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Pr�nom de votre chef<span class="requis">*</span></label>
      <input type="text" class="form-control" id="inputPassword4" placeholder="">
    </div>
  </div>
  <a href="questionsFormulaire.jsp"><button type="button" class="btn btn-primary">Confirmer</button></a>
  <a href="passerEvaluation.jsp"><button type="button" class="btn btn-danger">Quitter</button></a>
</form>
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
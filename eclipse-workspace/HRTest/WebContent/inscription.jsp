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
<div><p><a href="inscription"><img src="inc/LOGO.png" alt="Logo" /></a></p></div>
<div><a href="authentification"><button type="button" class="btn btn-outline-info">Se connecter</button></a></div>
</div>
</header>
<section id="sec">
<div id="section">
<form method="post" action="inscription">
<legend>Inscription</legend>
 <div class="form-group">
    <label for="exampleInputPassword1">Nom d'utilisateur<span class="requis">*</span></label>
    <input type="text" class="form-control" id="nom" name= "nom" placeholder="<c:out value="${utilisateur.nom}"/>" aria-describedby="nomHelp">
    <small id="nomlHelp" class="form-text text-muted">${form.erreurs['nom']}</small>
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Adresse Email<span class="requis">*</span></label>
    <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="<c:out value="${utilisateur.email}"/>">
    <small id="emailHelp" class="form-text text-muted">${form.erreurs['email']}</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Mot de passe<span class="requis">*</span></label>
    <input type="password" class="form-control" id="motdepasse" name="motdepasse" placeholder="" aria-describedby="motdepasseHelp">
    <small id="motdepasseHelp" class="form-text text-muted">${form.erreurs['motdepasse']}</small>
  </div>
   <div class="form-group">
    <label for="exampleInputPassword1">Confirmation du mot de passe<span class="requis">*</span></label>
    <input type="password" class="form-control" id="confirmation" name="confirmation" placeholder="" aria-describedby="confirmationHelp">
    <small id="confirmationHelp" class="form-text text-muted">${form.erreurs['confirmation']}</small>
  </div>
  <input type="submit" value="S'inscrire" class="btn btn-success"/>
  <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
</form>
</div>
</section>
<div id="footer">
<div><p><a href="inscription"><img src="inc/LogoDark.png" alt="LogoDark" /></a></p></div>
<div>COPYRIGHT @2020 CNSS</div>
<div></div>
</div>
</body>
</html>
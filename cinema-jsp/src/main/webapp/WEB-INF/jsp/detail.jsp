<%@ page import="fr.laerce.cinema.Film" %>
<%@ page import="fr.laerce.cinema.FilmsDonnees" %><%--
  Created by IntelliJ IDEA.
  User: Gideon
  Date: 10/11/2018
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="Fr-fr">
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Film</title>
</head>
<body>
<h1 style="text-align: center;">Film</h1>
<hr style="width:100%;background-color: #F5F5F5;border: solid 5px #E0E0E0;margin-top: -10px;">

<fieldset style="width: 400px;margin: 0 auto; background-color: #F5F5F5">
    <legend style="text-align: center;background-color:  #007bff; color: #fff"> Liste des films</legend>
<c:forEach var="film" items="${film}" varStatus="status">


    <ul style="list-style: none">
<li class="${status.index%2 ==0?'paire' : 'impair'}" style="text-align: center;"><a href='detailfilm?id=${film.id}'>${film.titre} (${film.note})</a>
</li>

    </ul>
    <c:if test="${film =='paire'}">
      <c:set var="background-color" value="#F5F5F5"/>

    </c:if>
</c:forEach>
</fieldset>
</body>
</html>